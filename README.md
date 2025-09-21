# 数据库字符集问题

1. MySQL 的 `latin1` 并不会校验字符范围

   在 MySQL 5.7 中，列定义为 `latin1` 时，数据库不会检查插入的字节是否符合 `latin1` 的编码范围。也就是说，你插入的数据其实是 **原始字节流**，只要客户端和服务端之间没有转换，MySQL 就会 **原封不动存下来**。所以，虽然定义是 `latin1`，但实际上表里存的是 GBK 编码的字节。

2. 客户端连接字符集的作用

   MySQL 客户端和服务端之间有一个 `character_set_client` / `character_set_connection` / `character_set_results` 的参数。如果它们都设置成了 `latin1`，MySQL 认为传过来的字节就是 `latin1`，但其实你发的是 GBK 编码的字节 → **MySQL 并不会转换**。于是数据库里保存下来的就是 **GBK 编码的中文字节流**。

3. 为什么用 936（GBK）能显示正常

   因为你在插入数据时就是用 **GBK 字节流** 存进去的。虽然列标记为 `latin1`，但底层存的仍然是 **合法的 GBK 编码**。当你再用 `936`（即 GBK）方式显示时，字节被正确解码，自然就不会乱码。

4. 总结成一句话

   **MySQL 在 `latin1` 下并没有实际限制，只是存储“原始字节”。你插入的中文本质上是 GBK 字节流，显示时用 936（GBK）解释，自然就正常。**如果用 UTF-8 显示，就会乱码，因为字节序不同。

> 历史遗留问题：**2006年前后（MySQL 4.x、5.0、5.1 初期）**，中文在 MySQL 里就是靠这种“曲线救国”的方式存的，很多老系统今天还在用。



# 运行SQL文件

1. 使用 MySQL 客户端登录，查看字符集，确保字符集是 `latin1`。

```shell
mysql> show variables like '%char%';
+--------------------------+----------------------------+
| Variable_name            | Value                      |
+--------------------------+----------------------------+
| character_set_client     | latin1                     |
| character_set_connection | latin1                     |
| character_set_database   | latin1                     |
| character_set_filesystem | binary                     |
| character_set_results    | latin1                     |
| character_set_server     | latin1                     |
| character_set_system     | utf8                       |
| character_sets_dir       | /usr/share/mysql/charsets/ |
+--------------------------+----------------------------+
8 rows in set (0.00 sec)
```

2. 执行 `source` 命令运行 `sql` 文件。

```shell
mysql> source /all.sql;
```



# 导出SQL文件

导入 SQL 文件需要指定字符集 `latin1`。

使用 `vscode` 用 `GBK` 编码打开即可看到中文。

1. 导出 `dl_adb_all` 数据库

```shell
mysqldump -uroot -p123456 --default-character-set=latin1 --databases dl_adb_all  > dl_adb_all.sql
```

2. 导出所有数据库数据：

```shell
mysqldump -uroot -p123456 --default-character-set=latin1 --databases dl_adb_all dl_ddb_1 dl_dmdb_1 dl_ldb_1 dl_ldb_all dl_mdb_1 dl_mdb_all dl_tdb_1 > all.sql
```

3. 导出 `config` 表的数据

```shell
mysqldump -uroot -p123456 --default-character-set=latin1 dl_adb_all config > config.sql
```

4. 导出 `server` 表的数据

```shell
mysqldump -uroot -p123456 --default-character-set=latin1 dl_adb_all server > server.sql
```




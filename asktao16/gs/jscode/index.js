import fs from "node:fs";
import iconv from "iconv-lite";

/**
 * 1. SERVER_LINE_NAME 代表服务器线路的名称。 例如: 万里长城一线
 * 2. SERVER_AAA_IP 代表 aaa 服务的 IP 地址。例如：192.168.0.21
 */
const templateString = `
[Me]
Name={SERVER_LINE_NAME}
AAA_Addr={SERVER_AAA_IP}
AAA_Port=8101

[FILE]
USE_DB = Enabled

[Login]
EXPRESS_WAY = Enabled
MAX_USER = 512

[REBOOT]
SERVER_PORT = 9257
BROADCAST_INTERVAL = 5
BROADCAST_TIMES = 6
DENY_LOGIN_INTERVAL = 10
`;
const SERVER_NAME = process.env["SERVER_NAME"] || "仙侣情缘一线";
const AAA_ADDR = process.env["AAA_ADDR"] || "127.0.0.1";

const str = templateString
  .replaceAll("{SERVER_LINE_NAME}", SERVER_NAME)
  .replaceAll("{SERVER_AAA_IP}", AAA_ADDR);

const buf = iconv.encode(str, "gbk");

fs.writeFileSync("./gs.ini", buf);

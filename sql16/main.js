import fs from "node:fs";
import iconv from "iconv-lite";

const IP = "192.168.0.21";

const DIST = "万里长城";

const ONE_LINE_NAME = `${DIST}一线`;
const ONE_LINE_IP = "192.168.0.21";

const TWO_LINE_NAME = `${DIST}二线`;
const TWO_LINE_IP = "192.168.0.21";

const THREE_LINE_NAME = `${DIST}三线`;
const THREE_LINE_IP = "192.168.0.21";

const OUT_PATH = "./patch.sql";

const ip_utf8_str = iconv.decode(
  fs.readFileSync("./updatesqls/update_ip.sql"),
  "gbk"
);

const dist_utf8_str = iconv.decode(
  fs.readFileSync("./updatesqls/update_dist.sql"),
  "gbk"
);

const config_utf8_str = iconv.decode(
  fs.readFileSync("./updatesqls/update_config.sql"),
  "gbk"
);

const server_utf8_str = iconv.decode(
  fs.readFileSync("./updatesqls/update_server.sql"),
  "gbk"
);

const result1 = ip_utf8_str.replaceAll("118.24.7.124", IP);
const result2 = dist_utf8_str.replaceAll("问道一区", DIST);
const result3 = config_utf8_str
  .replaceAll("问道一区", DIST)
  .replaceAll("一线", ONE_LINE_NAME)
  .replaceAll("二线", TWO_LINE_NAME)
  .replaceAll("三线", THREE_LINE_NAME);

const server1SQL = `INSERT INTO \`server\` VALUES ('${ONE_LINE_NAME}','','${ONE_LINE_IP}',8160,1200,'${DIST}',1,'network','','','',0,0,0,600,1,'apex1','','',0,NULL);`;
const server2SQL = `INSERT INTO \`server\` VALUES ('${TWO_LINE_NAME}','','${TWO_LINE_IP}',8161,1200,'${DIST}',1,'','','','',0,0,0,0,2,'','','',0,NULL);`;
const server3SQL = `INSERT INTO \`server\` VALUES ('${THREE_LINE_NAME}','','${THREE_LINE_IP}',8162,1200,'${DIST}',1,'','','','',0,0,0,0,3,'','','',0,NULL);`;
const result4 = server_utf8_str.replace(
  "{{ INSERT_SQL }}",
  [server1SQL, server2SQL, server3SQL].join("\n")
);

if (fs.existsSync(OUT_PATH)) {
  fs.rmSync(OUT_PATH);
}

const r = ["USE dl_adb_all;", result1, result2, result3, result4].join("\n\n");

const buf = iconv.encode(r, "gbk");

fs.writeFileSync(OUT_PATH, buf);

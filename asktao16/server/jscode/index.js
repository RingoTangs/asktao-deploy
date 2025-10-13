const fs = require("node:fs");
const path = require("node:path");
const iconv = require("iconv-lite");

const MYSQL_HOST = process.env.MYSQL_HOST;
const MYSQL_USER = process.env.MYSQL_USER;
const MYSQL_PASSWORD = process.env.MYSQL_PASSWORD;
const PUBLIC_IP = process.env.PUBLIC_IP;
const DIST = process.env.DIST;

const aaaPath = path.resolve(__dirname, "./aaa/aaa/aaa.ini");
const ccsPath = path.resolve(__dirname, "./ccs/ccs/ccs.ini");
const csaPath = path.resolve(__dirname, "./csa/csa/csa.ini");
const dbaPath = path.resolve(__dirname, "./dba/dba/dba.ini");
const gs1Path = path.resolve(__dirname, "./gs1/gs/gs.ini");
const gs2Path = path.resolve(__dirname, "./gs2/gs/gs.ini");
const gs3Path = path.resolve(__dirname, "./gs3/gs/gs.ini");

const processServer = (path) => {
  const ccs = fs.readFileSync(path);
  const ccsDecoded = iconv.decode(ccs, "utf-8");
  const result = ccsDecoded
    .replaceAll("{MySQL_HOST}", MYSQL_HOST)
    .replaceAll("{MySQL_USER}", MYSQL_USER)
    .replaceAll("{MySQL_PASSWORD}", MYSQL_PASSWORD)
    .replaceAll("{SERVER_AAA_IP}", PUBLIC_IP);
  const buf = iconv.encode(result, "gbk");
  fs.rmSync(path, { force: true });
  fs.writeFileSync(path, buf);
};

const processGS = (path, line) => {
  const ccs = fs.readFileSync(path);
  const ccsDecoded = iconv.decode(ccs, "utf-8");
  const result = ccsDecoded
    .replaceAll("{DIST}", `${DIST}${line}`)
    .replaceAll("{PUBLIC_IP}", PUBLIC_IP);

  const buf = iconv.encode(result, "gbk");
  fs.rmSync(path, { force: true });
  fs.writeFileSync(path, buf);
};

// 获取操作系统环境变量
processServer(aaaPath);
processServer(ccsPath);
processServer(csaPath);
processServer(dbaPath);
processGS(gs1Path, "一线");
processGS(gs2Path, "二线");
processGS(gs3Path, "三线");

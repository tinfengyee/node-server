# hackernews-async-ts

[Hacker News](https://news.ycombinator.com/) showcase using typescript && egg



## 技术选型

Node版后台基础框架基于[Egg.js](https://eggjs.org/zh-cn/)(阿里出品)

- 基础：**[egg.js](https://eggjs.org/zh-cn/)**
- 数据：**[typeorm](https://typeorm.io/)**
- 缓存：**[egg-redis](https://www.npmjs.com/package/egg-redis)**
- 鉴权：**[egg-jwt](https://www.npmjs.com/package/egg-jwt)**
- 网络：**[axios](https://www.npmjs.com/package/axios)**
- 文件：**[egg-oss](https://www.npmjs.com/package/egg-oss)**
- 数据库：**[mysql](https://www.mysql.com/)**

## QuickStart

### Development

```bash
$ npm i
$ npm run dev
$ open http://localhost:7001/
```

Don't tsc compile at development mode, if you had run `tsc` then you need to `npm run clean` before `npm run dev`.

### Deploy

```bash
$ npm run tsc
$ npm start
```

### Npm Scripts

- Use `npm run lint` to check code style
- Use `npm test` to run unit test
- se `npm run clean` to clean compiled js at development mode once

### Requirement

- Node.js 8.x
- Typescript 2.8+

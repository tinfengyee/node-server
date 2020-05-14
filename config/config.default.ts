import { EggAppConfig, EggAppInfo, PowerPartial } from 'egg'
import * as path from 'path'

export default (appInfo: EggAppInfo) => {
  const config = {} as PowerPartial<EggAppConfig>

  config.keys = appInfo.name + '_1566960005072_482'

  // 中间件
  config.middleware = [ 'authority', 'logs', 'exception' ]

  config.jwt = {
    secret: 'JKFBBBAIKUH',
  }

  config.security = {
    csrf: {
      enable: false,
    },
  }

  const whitelist = [
    // images
    '.jpg', '.jpeg', // image/jpeg
    '.png', // image/png, image/x-png
    '.gif', // image/gif
    '.bmp', // image/bmp
    '.wbmp', // image/vnd.wap.wbmp
    '.webp',
    '.tif',
    '.psd',
    // text
    '.svg',
    '.js', '.jsx',
    '.json',
    '.css', '.less',
    '.html', '.htm',
    '.xml',
    // tar
    '.zip',
    '.gz', '.tgz', '.gzip',
    // video
    '.mp3',
    '.mp4',
    '.avi',
    '.xlsx',
    '.xls',
  ]

  config.multipart = {
    fileSize: '100mb',
    mode: 'file',
    whitelist,
  }

  config.redis = {
    client: {
      port: 6379,
      host: '127.0.0.1',
      password: '',
      db: 0,
    },
  }

  config.oss = {
    client: {
      accessKeyId: '',
      accessKeySecret: '',
      bucket: '',
      endpoint: '',
      timeout: '3600s',
    },
  }

  config.view = {
    root: [
      path.join(appInfo.baseDir, 'app/view'),
    ].join(','),
    defaultViewEngine: 'nunjucks',
    defaultExtension: '.html',
    mapping: {
      '.html': 'nunjucks',
    },
  }

  // 靜態目錄及緩存設置
  config.static = {
    prefix: '/',
    dir: path.join(appInfo.baseDir, 'app/public'),
    dynamic: true,
    preload: false,
    // maxAge: 31536000,
    maxAge: 0,
    buffer: false,
  }

  // 新增特殊的业务配置
  const bizConfig = {
    token: {
      expires: 24 * 3600 * 7, // token 过期时间
    },
    SSO: false, // 单点登录
    upload: 'local', // 可选 local：存储在本地； oss：存储在阿里云的oss
  }

  return {
    ...config,
    ...bizConfig,
  }
}

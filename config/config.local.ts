import { EggAppConfig, PowerPartial } from 'egg'

export default () => {
  const config: PowerPartial<EggAppConfig> = {}
  config.cluster = {
    listen: {
      port: 7001,
      hostname: '0.0.0.0',
    },
  }
  config.typeorm = {
    client: {
      type: 'mysql',
      host: 'localhost',
      port: 3306,
      username: 'root',
      password: '123456',
      database: 'cool',
      synchronize: true,
      logging: false,
      charset: 'utf8mb4',
    },
  }
  return config
}

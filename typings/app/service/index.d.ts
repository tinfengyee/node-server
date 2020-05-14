// This file is created by egg-ts-helper@1.25.8
// Do not modify this file!!!!!!!!!

import 'egg';
type AnyClass = new (...args: any[]) => any;
type AnyFunc<T = any> = (...args: any[]) => T;
type CanExportFunc = AnyFunc<Promise<any>> | AnyFunc<IterableIterator<any>>;
type AutoInstanceType<T, U = T extends CanExportFunc ? T : T extends AnyFunc ? ReturnType<T> : T> = U extends AnyClass ? InstanceType<U> : U;
import ExportCommData from '../../../app/service/comm/data';
import ExportCommFile from '../../../app/service/comm/file';
import ExportCommVerify from '../../../app/service/comm/verify';
import ExportSysConf from '../../../app/service/sys/conf';
import ExportSysDepartment from '../../../app/service/sys/department';
import ExportSysInfo from '../../../app/service/sys/info';
import ExportSysLog from '../../../app/service/sys/log';
import ExportSysLogin from '../../../app/service/sys/login';
import ExportSysMenu from '../../../app/service/sys/menu';
import ExportSysParam from '../../../app/service/sys/param';
import ExportSysPerms from '../../../app/service/sys/perms';
import ExportSysRole from '../../../app/service/sys/role';
import ExportSysTask from '../../../app/service/sys/task';
import ExportSysUser from '../../../app/service/sys/user';

declare module 'egg' {
  interface IService {
    comm: {
      data: AutoInstanceType<typeof ExportCommData>;
      file: AutoInstanceType<typeof ExportCommFile>;
      verify: AutoInstanceType<typeof ExportCommVerify>;
    }
    sys: {
      conf: AutoInstanceType<typeof ExportSysConf>;
      department: AutoInstanceType<typeof ExportSysDepartment>;
      info: AutoInstanceType<typeof ExportSysInfo>;
      log: AutoInstanceType<typeof ExportSysLog>;
      login: AutoInstanceType<typeof ExportSysLogin>;
      menu: AutoInstanceType<typeof ExportSysMenu>;
      param: AutoInstanceType<typeof ExportSysParam>;
      perms: AutoInstanceType<typeof ExportSysPerms>;
      role: AutoInstanceType<typeof ExportSysRole>;
      task: AutoInstanceType<typeof ExportSysTask>;
      user: AutoInstanceType<typeof ExportSysUser>;
    }
  }
}

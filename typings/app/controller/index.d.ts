// This file is created by egg-ts-helper@1.25.8
// Do not modify this file!!!!!!!!!

import 'egg';
import ExportWelcome from '../../../app/controller/welcome';
import ExportAdminComm from '../../../app/controller/admin/comm';
import ExportAppComm from '../../../app/controller/app/comm';
import ExportAdminSysDepartment from '../../../app/controller/admin/sys/department';
import ExportAdminSysInfo from '../../../app/controller/admin/sys/info';
import ExportAdminSysLog from '../../../app/controller/admin/sys/log';
import ExportAdminSysMenu from '../../../app/controller/admin/sys/menu';
import ExportAdminSysParam from '../../../app/controller/admin/sys/param';
import ExportAdminSysRole from '../../../app/controller/admin/sys/role';
import ExportAdminSysTask from '../../../app/controller/admin/sys/task';
import ExportAdminSysUser from '../../../app/controller/admin/sys/user';

declare module 'egg' {
  interface IController {
    welcome: ExportWelcome;
    admin: {
      comm: ExportAdminComm;
      sys: {
        department: ExportAdminSysDepartment;
        info: ExportAdminSysInfo;
        log: ExportAdminSysLog;
        menu: ExportAdminSysMenu;
        param: ExportAdminSysParam;
        role: ExportAdminSysRole;
        task: ExportAdminSysTask;
        user: ExportAdminSysUser;
      }
    }
    app: {
      comm: ExportAppComm;
    }
  }
}

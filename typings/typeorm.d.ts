// This file is created by egg-ts-helper@1.25.8
// Do not modify this file!!!!!!!!!

import 'egg';
import { Repository, Connection, TreeRepository } from 'typeorm';
import AppEntitysysConf from '../app/entity/sys/conf';
import AppEntitysysDepartment from '../app/entity/sys/department';
import AppEntitysysLog from '../app/entity/sys/log';
import AppEntitysysMenu from '../app/entity/sys/menu';
import AppEntitysysParam from '../app/entity/sys/param';
import AppEntitysysRole_department from '../app/entity/sys/role_department';
import AppEntitysysRole_menu from '../app/entity/sys/role_menu';
import AppEntitysysRole from '../app/entity/sys/role';
import AppEntitysysTask_log from '../app/entity/sys/task_log';
import AppEntitysysTask from '../app/entity/sys/task';
import AppEntitysysUser_role from '../app/entity/sys/user_role';
import AppEntitysysUser from '../app/entity/sys/user';
declare module 'egg' {
  interface Context {
    entity: {
      sys: {
        Conf: typeof AppEntitysysConf
        Department: typeof AppEntitysysDepartment
        Log: typeof AppEntitysysLog
        Menu: typeof AppEntitysysMenu
        Param: typeof AppEntitysysParam
        Role_department: typeof AppEntitysysRole_department
        Role_menu: typeof AppEntitysysRole_menu
        Role: typeof AppEntitysysRole
        Task_log: typeof AppEntitysysTask_log
        Task: typeof AppEntitysysTask
        User_role: typeof AppEntitysysUser_role
        User: typeof AppEntitysysUser
      }
      default: {
        sys: {
          Conf: typeof AppEntitysysConf
          Department: typeof AppEntitysysDepartment
          Log: typeof AppEntitysysLog
          Menu: typeof AppEntitysysMenu
          Param: typeof AppEntitysysParam
          Role_department: typeof AppEntitysysRole_department
          Role_menu: typeof AppEntitysysRole_menu
          Role: typeof AppEntitysysRole
          Task_log: typeof AppEntitysysTask_log
          Task: typeof AppEntitysysTask
          User_role: typeof AppEntitysysUser_role
          User: typeof AppEntitysysUser
        }
      }
    }
    repo: {
      sys: {
        Conf: Repository<AppEntitysysConf>
        Department: Repository<AppEntitysysDepartment>
        Log: Repository<AppEntitysysLog>
        Menu: Repository<AppEntitysysMenu>
        Param: Repository<AppEntitysysParam>
        Role_department: Repository<AppEntitysysRole_department>
        Role_menu: Repository<AppEntitysysRole_menu>
        Role: Repository<AppEntitysysRole>
        Task_log: Repository<AppEntitysysTask_log>
        Task: Repository<AppEntitysysTask>
        User_role: Repository<AppEntitysysUser_role>
        User: Repository<AppEntitysysUser>
      }
      default: {
        sys: {
          Conf: Repository<AppEntitysysConf>
          Department: Repository<AppEntitysysDepartment>
          Log: Repository<AppEntitysysLog>
          Menu: Repository<AppEntitysysMenu>
          Param: Repository<AppEntitysysParam>
          Role_department: Repository<AppEntitysysRole_department>
          Role_menu: Repository<AppEntitysysRole_menu>
          Role: Repository<AppEntitysysRole>
          Task_log: Repository<AppEntitysysTask_log>
          Task: Repository<AppEntitysysTask>
          User_role: Repository<AppEntitysysUser_role>
          User: Repository<AppEntitysysUser>
        }
      }
    }
  }
}
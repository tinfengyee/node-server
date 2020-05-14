// This file is created by egg-ts-helper@1.25.8
// Do not modify this file!!!!!!!!!

import 'egg';
import ExportAuthority from '../../../app/middleware/authority';
import ExportException from '../../../app/middleware/exception';
import ExportLogs from '../../../app/middleware/logs';

declare module 'egg' {
  interface IMiddleware {
    authority: typeof ExportAuthority;
    exception: typeof ExportException;
    logs: typeof ExportLogs;
  }
}

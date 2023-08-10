zh-CN-W32TMRefresh
=================
通过命令行和W32time服务实现开机时自动网络NTP对时,使用findstr判断是否成功,因此仅在简体中文环境下有用.

***
使用方法:  
=================
1.在目标计算机上导入注册表**CancelW32TimePhaseLimit.reg**  
2.将**NtpTimeRefreshLauncher.bat**的**快捷方式**添加至开始菜单中的启动文件夹(注意**NtpTimeRefreshLauncher.bat**必须和**NtpTimeRefresh.bat**处在**同一**文件夹)  
3.重新启动系统即可使用.  
***

注意事项  
=================
完成对时后会**自动重启资源管理器**(用于修复某些时候因时间错误导致开始菜单图标不可见)  
***

Q&A
=================
***
Q:为什么我要导入注册表?  
A:用于取消Windows自带的对时偏移限制  
***
Q:我能直接添加NtpTimeRefresh.bat吗?NtpTimeRefreshLauncher.bat有什么用?  
A:可以. NtpTimeRefreshLauncher.bat用于静默启动NtpTimeRefresh.bat,直接添加时NtpTimeRefresh.bat到启动项时对时过程中的控制台不会最小化到后台.  
***
Q:这个脚本带有病毒吗?  
A:听说有.  
***

***
应用场景:  
=================
BIOS电池没电的希沃一体机.

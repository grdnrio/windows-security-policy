# General security policy settings
default['security_policy']['template']['location'] = 'C:\Windows\security\templates'
default['security_policy']['database']['location'] = 'C:\Windows\security\database'

default['security_policy']['database']['name'] = 'chefpolicy.sdb'

# System access settings
# Nil value means nothing will be written to the security policy template.
default['security_policy']['access']['LockoutBadCount'] = nil
default['security_policy']['access']['ResetLockoutCount'] = nil
default['security_policy']['access']['LockoutDuration'] = nil

# Security policy rights / privileges settings. Based on  default system SIDs.
# Nil value means nothing will be written to the security policy template.
default['security_policy']['rights']['SeNetworkLogonRight']                 = nil
default['security_policy']['rights']['SeBackupPrivilege']                   = nil
default['security_policy']['rights']['SeChangeNotifyPrivilege']             = nil
default['security_policy']['rights']['SeSystemtimePrivilege']               = nil
default['security_policy']['rights']['SeCreatePagefilePrivilege']           = nil
default['security_policy']['rights']['SeDebugPrivilege']                    = nil
default['security_policy']['rights']['SeRemoteShutdownPrivilege']           = nil
default['security_policy']['rights']['SeAuditPrivilege']                    = nil
default['security_policy']['rights']['SeIncreaseQuotaPrivilege']            = nil
default['security_policy']['rights']['SeIncreaseBasePriorityPrivilege']     = nil
default['security_policy']['rights']['SeLoadDriverPrivilege']               = nil
default['security_policy']['rights']['SeBatchLogonRight']                   = nil
default['security_policy']['rights']['SeServiceLogonRight']                 = nil
default['security_policy']['rights']['SeInteractiveLogonRight']             = nil
default['security_policy']['rights']['SeSecurityPrivilege']                 = nil
default['security_policy']['rights']['SeSystemEnvironmentPrivilege']        = nil
default['security_policy']['rights']['SeProfileSingleProcessPrivilege']     = nil
default['security_policy']['rights']['SeSystemProfilePrivilege']            = nil
default['security_policy']['rights']['SeAssignPrimaryTokenPrivilege']       = nil
default['security_policy']['rights']['SeRestorePrivilege']                  = nil
default['security_policy']['rights']['SeShutdownPrivilege']                 = nil
default['security_policy']['rights']['SeTakeOwnershipPrivilege']            = nil
default['security_policy']['rights']['SeUndockPrivilege']                   = nil
default['security_policy']['rights']['SeManageVolumePrivilege']             = nil
default['security_policy']['rights']['SeRemoteInteractiveLogonRight']       = nil
default['security_policy']['rights']['SeImpersonatePrivilege']              = nil
default['security_policy']['rights']['SeCreateGlobalPrivilege']             = nil
default['security_policy']['rights']['SeIncreaseWorking']                   = nil
default['security_policy']['rights']['SeTimeZonePrivilege']                 = nil
default['security_policy']['rights']['SeCreateSymbolicLinkPrivilege']       = nil
default['security_policy']['rights']['SeDenyNetworkLogonRight']             = nil
default['security_policy']['rights']['SeDenyInteractiveLogonRight']         = nil
default['security_policy']['rights']['SeDenyBatchLogonRight']               = nil
default['security_policy']['rights']['SeDenyServiceLogonRight']             = nil
default['security_policy']['rights']['SeTcbPrivilege']                      = nil
default['security_policy']['rights']['SeMachineAccountPrivilege']           = nil
default['security_policy']['rights']['SeCreateTokenPrivilege']              = nil
default['security_policy']['rights']['SeCreatePermanentPrivilege']          = nil
default['security_policy']['rights']['SeEnableDelegationPrivilege']         = nil
default['security_policy']['rights']['SeLockMemoryPrivilege']               = nil
default['security_policy']['rights']['SeSyncAgentPrivilege']                = nil
default['security_policy']['rights']['SeUnsolicitedInputPrivilege']         = nil
default['security_policy']['rights']['SeTrustedCredManAccessPrivilege']     = nil
default['security_policy']['rights']['SeRelabelPrivilege']                  = nil
default['security_policy']['rights']['SeDenyRemoteInteractiveLogonRight']   = nil

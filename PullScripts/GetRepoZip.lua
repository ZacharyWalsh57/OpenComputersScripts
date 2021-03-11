--  +----------------------------------------------------------------+
--  |          LuaOpenComputers_Setup.lua - Version 0.0.1A           |
--  |        Pull down all scripts from the OpenComputers Repo       |
--  |                                                                |
--  |                  Zack Walsh - 03/10/2021                       |
--  |================================================================+
--  |                        Change Log                              |
--  | 03/10/2021 - 0.0.1A                                            |
--  |    First build of this script. Hopefully, this will            |
--  |    be able to pull down a whole repo/tar.gz of the script I    |
--  |    generate over time. Once that's done, this gets deployed    |
--  |    and the rest of the scripts are derived from the repo.      |
--  +----------------------------------------------------------------+

-- #region Configuration
-- Git Configuration
local UserName = "ZacharyWalsh57"
local RepoName = "OpenComputersScripts"
local RepoBranch = "main"
local RepoURL = "https://github.com/"..UserName.."/"..RepoName.."/archive/"..RepoBranch..".tar.gz"

-- Output File locations for downloads
local DownloadDir = "/home/OCScripting/"
local OutputZip = DownloadDir.."OCScripting-"..RepoBranch..".tar.gz"
-- #endregion

-- Download the repo now.
require("/bin/wget")
wget("-f".." "..RepoURL.." "..OutputZip)
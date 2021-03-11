--  +----------------------------------------------------------------+
--  |          LuaOpenComputers_Setup.lua - Version 0.0.1A           |
--  |        Pull down all scripts from the OpenComputers Repo       |
--  |                                                                |
--  |                  Zack Walsh - 00/00/0000                       |
--  |================================================================+
--  |                        Change Log                              |
--  | 03/10/2021 - 0.0.1A                                            |
--  |    First build of this script. Hopefully, this will            |
--  |    be able to pull down a whole repo/tar.gz of the script I    |
--  |    generate over time. Once that's done, this gets deployed    |
--  |    and the rest of the scripts are derived from the repo.      |
--  +----------------------------------------------------------------+

-- #region Configuration and Imports
-- Git Configuration
local UserName = "ZacharyWalsh57"
local RepoName = "OpenComputersScripts"
local RepoURL = "https://github.com/" .. UserName .. "/" .. RepoName .. "/archive/main.zip"

-- Output File locations for downloads
local DownloadDir = "/home/OCScripting/"
local OutputZip = DownloadDir .. "OCScriptingMain.zip"
-- #endregion

-- Download the file now (Testing with Tar package)
print (UserName .. " -- " .. RepoName)
print (RepoURL)
print ("Downloading repo now...")

wget RepoURL OutputZip
print ("Downloaded OK!")
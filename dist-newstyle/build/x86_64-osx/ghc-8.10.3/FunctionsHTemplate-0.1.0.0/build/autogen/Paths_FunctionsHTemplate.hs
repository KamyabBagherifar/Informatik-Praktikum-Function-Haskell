{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_FunctionsHTemplate (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/krohnu/.cabal/bin"
libdir     = "/Users/krohnu/.cabal/lib/x86_64-osx-ghc-8.10.3/FunctionsHTemplate-0.1.0.0-inplace"
dynlibdir  = "/Users/krohnu/.cabal/lib/x86_64-osx-ghc-8.10.3"
datadir    = "/Users/krohnu/.cabal/share/x86_64-osx-ghc-8.10.3/FunctionsHTemplate-0.1.0.0"
libexecdir = "/Users/krohnu/.cabal/libexec/x86_64-osx-ghc-8.10.3/FunctionsHTemplate-0.1.0.0"
sysconfdir = "/Users/krohnu/.cabal/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "FunctionsHTemplate_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "FunctionsHTemplate_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "FunctionsHTemplate_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "FunctionsHTemplate_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "FunctionsHTemplate_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "FunctionsHTemplate_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)

#!../../bin/linux-x86_64/iocSpecsEBE4

## You may have to change iocSpecsEBE4 to something else
## everywhere it appears in this file

< envPaths

cd ${TOP}

## Register all support components
dbLoadDatabase("${TOP}/dbd/iocSpecsEBE4.dbd")
iocSpecsEBE4_registerRecordDeviceDriver pdbbase

## Load record instances
#dbLoadRecords("db/xxx.db","user=swilkinsHost")

cd ${TOP}/iocBoot/${IOC}
iocInit


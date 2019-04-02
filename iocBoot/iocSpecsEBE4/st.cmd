#!../../bin/linux-x86_64/specsEBE4

< envPaths

cd(${TOP})

## Register all support components
dbLoadDatabase("${TOP}/dbd/specsEBE4.dbd")
specsEBE4_registerRecordDeviceDriver pdbbase

epicsEnvSet("EPICS_CA_AUTO_ADDR_LIST" , "NO")
epicsEnvSet("EPICS_CA_ADDR_LIST"      , "10.23.0.255")
epicsEnvSet("STREAM_PROTOCOL_PATH"    , "$(TOP)/protocol")

drvAsynIPPortConfigure("EBE4", "10.23.3.70:2005 UDP")
#asynSetTraceMask("EBE4", 0, 0x9)
#asynSetTraceIOMask("EBE4", 0, 0x2)

## Load record instances
dbLoadRecords("$(TOP)/db/specsEBE4.db", "Sys=XF:23ID2-ES,Name=Evap:1,PORT=EBE4")

iocInit()

dbl > ${TOP}/records.dbl
system("cp ${TOP}/records.dbl /cf-update/xf23id2-ioc1.es-specsEBE4.dbl")


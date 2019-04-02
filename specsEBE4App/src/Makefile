TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = specsEBE4
# specsEBE4.dbd will be created and installed
DBD += specsEBE4.dbd

# specsEBE4.dbd will be made up from these files:
specsEBE4_DBD += base.dbd

# Include dbd files from all support applications:
specsEBE4_DBD += asyn.dbd
specsEBE4_DBD += stream.dbd
specsEBE4_DBD += drvAsynIPPort.dbd
specsEBE4_DBD += drvAsynSerialPort.dbd
specsEBE4_DBD += system.dbd
specsEBE4_DBD += devIocStats.dbd

# Add all the support libraries needed by this IOC
specsEBE4_LIBS += stream
specsEBE4_LIBS += asyn
specsEBE4_LIBS += devIocStats

# specsEBE4_registerRecordDeviceDriver.cpp derives from specsEBE4.dbd
specsEBE4_SRCS += specsEBE4_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
specsEBE4_SRCS_DEFAULT += specsEBE4Main.cpp
specsEBE4_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#specsEBE4_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
specsEBE4_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE


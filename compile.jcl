//COMPILE JOB (123),'COMPILE COBOL',CLASS=A,MSGCLASS=A
//COMPILE EXEC PGM=IGYCRCTL
//SYSIN DD DSN=YOUR.COBOL.SOURCE(EXAMPLE),DISP=SHR
//SYSLIB DD DSN=YOUR.COPYBOOK.LIBRARY,DISP=SHR
//SYSLIN DD DSN=&&LOADSET,UNIT=SYSDA,DISP=(MOD,PASS)
//SYSPRINT DD SYSOUT=*
//SYSUT1 DD UNIT=SYSDA,SPACE=(CYL,(1,1))
//*
//RUN EXEC PGM=YOUR.LOAD.MODULE

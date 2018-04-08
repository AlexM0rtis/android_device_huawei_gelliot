#!/sbin/sh

cat /proc/cmdline | grep "androidboot.huawei_bootmode=recovery"
if [ $? -eq 0 ];then
    cat /proc/cmdline | grep "androidboot.mode=hwcharger"
    if [ $? -ne 0 ];then
       stop charge
    fi
fi	

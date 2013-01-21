
HOSTNAME=$(hostname)

### Existing versions
# arm-eabi-4.2.1
# arm-eabi-4.3.1
# arm-eabi-4.4.0
# arm-eabi-4.4.3

ARM_EABI_VERSION=4.4.0
ARM_EABI_PATH=~/Varia/toolchains/arm-eabi-${ARM_EABI_VERSION}/bin
for file in ${ARM_EABI_PATH}/*
do
    app_name=$(basename $file | cut -d- -f3)
    alias arm-${app_name}=${file}
done


### PATHs
export PATH=~/bin:$PATH


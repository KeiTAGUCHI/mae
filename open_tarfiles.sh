#!/usr/bin/bash
dir="ILSVRC2012_img_train_tar"
files=`find ./${dir}/ -type f -name "*.tar"`
for tarfile in ${files}
do
output="./${dir%_tar}/`basename ${tarfile} ".tar"`"
mkdir -p ${output}
tar -xvf ${tarfile} -C ${output}/
done
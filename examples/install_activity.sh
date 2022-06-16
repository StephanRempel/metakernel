
RES=`pip list|grep portalocker`
echo $RES
substr="portalocker"
if [[ $RES == *"$substr"* ]];
then
    echo "portalocker is installed"
else
    echo "portalocker is NOT installed"
    pip install portalocker
fi

RES=`pip list|grep metakernel`
echo $RES
substr="metakernel"
if [[ $RES == *"$substr"* ]];
then
    echo "metakernel is installed"
else
    echo "metakernel is NOT installed"
    cd ~/work
    if [[ -d $RES ]];
    then
        echo "dir $RES exists, Can't install $RES"
    else
        git clone https://github.com/StephanRempel/metakernel.git
        cd metakernel
        python setup.py install
    fi

fi
# check
RES=`pip list|grep calysto`
echo $RES
substr="calysto"
if [[ $RES == *"$substr"* ]];
then
    echo "calysto is installed"
else
    echo "calysto is NOT installed"
    pip install calysto
fi




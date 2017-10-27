
echo "====================开始执行打包脚本===================="
TARGET="MaiYafq"
SCHEME="$TARGET"
CONFIGURATION="Debug"  #Debug、Release
PROJECT="${TARGET}.xcodeproj"
PROJECT_DIR_NAME="maiyafenqi_ios的副本"
EXPORT_OPTIONS_PLIST_NAME="exportOptions.plist"  #该pist文件需要先生成好
#各种路径
BASE_PATH="/Users/zhoupengzu/Desktop"  #一般脚本和工程放在同一个路径下，然后后面少做修改，所以也可以写成:BASE_PATH=$(pwd)
IPA_PATH="${BASE_PATH}/ipa"
BUILD_PATH="${BASE_PATH}/${PROJECT_DIR_NAME}" #不能写成~/Desktop/${PROJECT_DIR_NAME}
PROJECT_PATH="${BUILD_PATH}/${PROJECT}"
ARCHIVE_PATH="${IPA_PATH}/build/${TARGET}.xcarchive"
EXPORT_OPTIONS_PLIST_PATH="${IPA_PATH}/${EXPORT_OPTIONS_PLIST_NAME}"
#账号
PU_GONG_YING_U_KEY="87f0a3759d102078b41e796db6b0d80b"
PU_GONG_YING_API_KEY="0ff788d8e25c64bcd11349c86c9b1135"
PU_GONG_YING_URL="https://qiniu-storage.pgyer.com/apiv1/app/upload"

echo "====================开始构建====================="
xcodebuild\
 archive\
 -project ${PROJECT_PATH}\
 -scheme ${SCHEME}\
 -configuration ${CONFIGURATION}\
 -archivePath ${ARCHIVE_PATH}
echo "========================构建结束=================="

echo "====================开始导出======================"
xcodebuild\
 -exportArchive\
 -archivePath ${ARCHIVE_PATH}\
 -exportPath ${IPA_PATH}\
 -exportOptionsPlist ${EXPORT_OPTIONS_PLIST_PATH}
 echo "===================导出成功======================"

echo "======================开始上传=================="
#fir.im上传 (只用shell貌似没办法，因为需要解析返回数据获取值)
#蒲公英上传
# curl\
#  -F "file=@${IPA_PATH}/${TARGET}.ipa"\
#  -F "uKey=${PU_GONG_YING_U_KEY}"\
#  -F "_api_key=${PU_GONG_YING_API_KEY}"\
#  ${PU_GONG_YING_URL}
# echo
echo "======================上传结束=================="

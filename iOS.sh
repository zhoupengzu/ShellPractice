
echo "====================开始执行打包脚本===================="
TARGET="MaiYafq"
SCHEME="$TARGET"
CONFIGURATION="Debug"  #Debug、Release
PROJECT="${TARGET}.xcodeproj"
PROJECT_DIR_NAME="maiyafenqi_ios的副本"
EXPORT_OPTIONS_PLIST_NAME="exportOptions.plist"  #该pist文件需要先生成好
#各种路径
BASE_PATH="/Users/zhoupengzu/Desktop"
IPA_PATH="${BASE_PATH}/ipa"
BUILD_PATH="${BASE_PATH}/${PROJECT_DIR_NAME}" #不能写成~/Desktop/${PROJECT_DIR_NAME}
PROJECT_PATH="${BUILD_PATH}/${PROJECT}"
ARCHIVE_PATH="${IPA_PATH}/build/${TARGET}.xcarchive"
EXPORT_OPTIONS_PLIST_PATH="${IPA_PATH}/${EXPORT_OPTIONS_PLIST_NAME}"

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

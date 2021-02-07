#!/usr/bin/env bash
if [ ! -f hzero-tool-data-install.jar ]
then
    curl http://nexus.saas.hand-china.com/content/repositories/Hzero-Release/org/hzero/tool/hzero-open-installer/1.0.0.RELEASE/hzero-open-installer-1.0.0.RELEASE.jar -o ./hzero-tool-data-install.jar
fi

echo -e "\nHZERO 1.5.RELEASE start init..............\n\n"

echo "Startup tool..."


java -Dinstaller.mapping=docs/mapping/service-mapping.xml -jar hzero-tool-data-install.jar


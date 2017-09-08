#!/bin/bash

curl -L https://github.com/iodragon/phabricator-cas/archive/master.zip -o master.zip
unzip master.zip
mv ./phabricator-cas-master /opt/phabricator/
/opt/phabricator/bin/config set load-libraries '["/opt/phabricator/phabricator-cas-master/src"]'

curl -L  https://github.com/apereo/phpCAS/archive/master.zip -o master.zip.1
unzip master.zip.1

mv  ./phpCAS-master/CAS.php /opt/phabricator/phabricator-cas-master/src/auth
mv  ./phpCAS-master/source/ /opt/phabricator/phabricator-cas-master/src/auth
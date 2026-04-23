#!/bin/bash

# ln -s ./../../recolored-apps/"$1" ./"$1"

find ./../../recolored-apps-mkln/ -name "*.svg" -exec sh -c '

echo "{}" ;
mv "{}" ./../../recolored-apps/$(echo "{}" | cut -d "/" -f 5-) ;

rm ./../../16x16/apps/$(echo "{}" | cut -d "/" -f 5-)
rm ./../../22x22/apps/$(echo "{}" | cut -d "/" -f 5-)
rm ./../../24x24/apps/$(echo "{}" | cut -d "/" -f 5-)
rm ./../../32x32/apps/$(echo "{}" | cut -d "/" -f 5-)
rm ./../../48x48/apps/$(echo "{}" | cut -d "/" -f 5-)
rm ./../../64x64/apps/$(echo "{}" | cut -d "/" -f 5-)

ln -s ./../../recolored-apps/$(echo "{}" | cut -d "/" -f 5-) ./../../16x16/apps/$(echo "{}" | cut -d "/" -f 5-)
ln -s ./../../recolored-apps/$(echo "{}" | cut -d "/" -f 5-) ./../../22x22/apps/$(echo "{}" | cut -d "/" -f 5-)
ln -s ./../../recolored-apps/$(echo "{}" | cut -d "/" -f 5-) ./../../24x24/apps/$(echo "{}" | cut -d "/" -f 5-)
ln -s ./../../recolored-apps/$(echo "{}" | cut -d "/" -f 5-) ./../../32x32/apps/$(echo "{}" | cut -d "/" -f 5-)
ln -s ./../../recolored-apps/$(echo "{}" | cut -d "/" -f 5-) ./../../48x48/apps/$(echo "{}" | cut -d "/" -f 5-)
ln -s ./../../recolored-apps/$(echo "{}" | cut -d "/" -f 5-) ./../../64x64/apps/$(echo "{}" | cut -d "/" -f 5-)

' \;
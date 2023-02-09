set -o nounset
set -o errexit
set -o xtrace

if [ "$#" -ne 0 ]
then
   echo 'A message'
   exit 1
fi

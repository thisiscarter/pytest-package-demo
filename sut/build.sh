# make the virtual environment and copy the wheel from the shared library?
# build the library needed
SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
echo $SCRIPT_DIR
ROOT_DIR=$(dirname "$SCRIPT_DIR")
SHARED_LIB_DIR="$ROOT_DIR"/demo_lib
echo $ROOT_DIR
echo $SHARED_LIB_DIR

#build the shared lib
cd "$SHARED_LIB_DIR"
bash "$SHARED_LIB_DIR"/build.sh

#create venv
cd "$SCRIPT_DIR"
python3 -m venv .venv
source .venv/bin/activate

#install shared lib
pip install -r requirements.txt
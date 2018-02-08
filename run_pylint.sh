if [ ! -d venv ] ; then

   virtualenv --python=python2.7 venv
fi
source venv/bin/activate
export PYTHONPATH="$PWD:$PYTHONPATH"

pip install pylint

## cd repo
### Need this because some strange control sequences when using default TERM=xterm
export TERM="linux"

## || exit 0 because pylint only exits with 0 if everything is correct. maxdepth
## is 2; because we need search *.py files under main directory.
pylint --rcfile=pylint.cfg $(find . -maxdepth 2 -name "*.py" -print) main/ > pylint.log || exit 0

## If we have more subfolders, we could just use below statement.
## pylint --rcfile=pylint.cfg $(find main/ -name "*.py" -print) main/ > pylint.log || exit 0


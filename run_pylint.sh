if [ ! -d venv ] ; then

   virtualenv --python=python2.7 venv
fi
source venv/bin/activate
export PYTHONPATH="$PWD:$PYTHONPATH"

pip install pylint

cd repo
### Need this because some strange control sequences when using default TERM=xterm
export TERM="linux"

## || exit 0 because pylint only exits with 0 if everything is correct
pylint --rcfile=pylint.cfg $(find . -maxdepth 1 -name "*.py" -print) MYMODULE/ > pylint.log || exit 0


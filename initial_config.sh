# Intall the initially required packages

# Install pyenv
curl https://pyenv.run | bash
brew install pyenv
brew install zlib
brew install postgresql
git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
pyenv install -s 3.6.2
pyenv virtualenv 3.6.2 app
pyenv activate app
pyenv local app # this takes care of the local fixation
pip3 install -r requirements.txt
pip3 install -e . # creating setuptools absolute reference in the pyenv
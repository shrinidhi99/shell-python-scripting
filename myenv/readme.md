> Create a virutal environment
```sh
python3 -m venv myenv
```
> Activate the virtual environment
```sh
source myenv/bin/activate
```
> Install `Python3.8` and some specific dependencies in virtual environment
```sh
sudo apt install python3.8
python3.8 -m pip install --upgrade pip
python3.8 -m pip install mysql-connector-python
python3.8 python/mysql-scripting.py
```
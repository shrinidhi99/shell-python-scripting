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
> Deactivate the virtual environment
```sh
deactivate
```
> To view the dependency tree of the python project
```sh
python3.8 -m pip install pipdeptree
python3.8 -m pipdeptree
pip install pip-tools
```
Now create a `requirements.in` file and make a note of dependency names in it. Compile this file using pip-tools by running the following command:
```sh
pip-compile requirements.in
```
This would generate a `requirements.txt` file with dependency versions. To upgrade/install dependencies:
```sh
pip-sync
```
	### Package python libraries for AWS
 Preparing
sudo apt-get update
sudo apt install python3-pip
sudo apt-get install python3-venv
 We need to run it in test env
python3 -m venv test_venv
source test_venv/bin/activate
 Install dependency into local dir
mkdir python
pip install requests -t python
 And "package" it!
zip -r requests.zip python
	Now we can add it to AWS Lambda -> Layers by creating new layer containing this .zip file. Then add this layer to lambda and we can import requests library!

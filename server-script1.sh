# sudo install jre, and maven, git is already there in ubuntu
sudo apt update -y
sudo apt install -y fontconfig openjdk-21-jre
sudo apt install -y maven


if [ -d "addressbook-v1" ]
then
  echo "repo is cloned and exists"
  cd /home/ubuntu/addressbook-v1
  git pull origin master
else
  git clone https://github.com/preethid/addressbook-v1.git
fi

cd /home/ubuntu/addressbook-v1
mvn compile

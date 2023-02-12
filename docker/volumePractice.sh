# To create a volume myvol and run an Nginx container that will use the volume
docker create volume myvol

docker volume ls # To verify it was created

# -d for detatch mode --name to specify the name of the container, 
# -v maps myvol to /app folder on the container, all this on the nginx:latest image
docker run -d --name voltest -v myvol:/app nginx:latest

# connect to the running instance and run bash on it, -i in interactive mode -t with a tty.
docker exec -it voltest bash

cd app # This folder is mapped to the volume. Anything written on it will be mapped to the external volume.

# To test
apt update $$ apt install emacs 
emacs test.txt
# type sth and save the file

# or rather echo "type sth" > test.txt

CTRL - xs

# Detach from the instance
exit

# Stop and remove the container from memory
docker stop voltest
docker rm voltest

# If we didn' use a volume, the app text file would be lost.

# create a second instance
docker run -d --name voltest -v myvol:/app nginx:latest
docker exec -it voltest bash
cd app
cat test.txt
# And you find everything intact


# Cleanup
docker stop voltest
docker rm voltest
docker volume rm myvol
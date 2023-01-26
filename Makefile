# Makefile for the simple page server.
#

# Nothing to install for this project.
install:
	@(echo "Nothing to install")

start:
	@(bash start.sh)

stop:
	@(bash stop.sh; make clean)

run:
	@(cp credentials.ini ./pageserver/; make start)

clean:
	@(cd ./pageserver; rm -f *.pyc; rm -rf __pycache__; rm -f credentials.ini; cd ../)

veryclean:
	@(rm -f ,pypid)

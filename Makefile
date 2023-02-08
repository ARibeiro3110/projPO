all:
	cd po-uilib; make
	cd project; make
	java -cp ./po-uilib/po-uilib.jar:project/prr-core/prr-core.jar:project/prr-app/prr-app.jar prr.app.App
	cd prr-tests-ef-daily; sh runtests.sh
	cd project; make clean

a:
	cd po-uilib; make
	cd project; make
	java -cp ./po-uilib/po-uilib.jar:project/prr-core/prr-core.jar:project/prr-app/prr-app.jar prr.app.App
	cd project; make clean

u:
	cd po-uilib; make
	java -cp ./po-uilib/po-uilib.jar:project/prr-core/prr-core.jar:project/prr-app/prr-app.jar prr.app.App

p:
	cd project; make
	java -cp ./po-uilib/po-uilib.jar:project/prr-core/prr-core.jar:project/prr-app/prr-app.jar prr.app.App
	cd project; make clean

pro:
	cd project; make

t:
	cd prr-tests-ef-daily; sh runtests.sh

clean:
	cd project; make clean
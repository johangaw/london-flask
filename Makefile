
.PHONY: install clean

venv/bin/activate:
	virtualenv venv

build/pip: requierments.txt venv/bin/activate
	mkdir build
	source venv/bin/activate; pip install -r requierments.txt
	touch build/pip

install: build/pip

clean:
	rm -rf build/ venv/

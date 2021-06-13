FROM python:3.9
WORKDIR /work
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python
RUN /bin/bash -c "source /root/.poetry/env \
	&& git clone --depth 1 https://github.com/python-kasa/python-kasa.git \
	&& cd python-kasa \
	&& poetry build \
	&& cd dist \
	&& ls \
	&& pip install python_kasa*.whl"

rm -rf ./package
mkdir package
docker run --rm -v $(pwd):/work/opt -t packager:latest bash -c \
'source /work/shrink_venv/bin/activate \
&& pip install -r /work/opt/pip_requirements.txt \
&& cp -pr $VIRTUAL_ENV/lib/python3.6/site-packages/* /work/opt/package'
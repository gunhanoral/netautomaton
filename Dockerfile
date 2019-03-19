FROM python:3.7.2-stretch

ENV DEBIAN_FRONTEND noninteractive

# Install any needed Python modules
RUN pip install --trusted-host pypi.python.org \
'aiohttp==3.5.4' \
'ansible==2.7.9' \
'asn1crypto==0.24.0' \
'async-timeout==3.0.1' \
'asyncssh==1.16.0' \
'attrs==19.1.0' \
'backcall==0.1.0' \
'bcrypt==3.1.6' \
'certifi==2019.3.9' \
'cffi==1.12.2' \
'chardet==3.0.4' \
'Click==7.0' \
'colorama==0.4.1' \
'cryptography==2.6.1' \
'decorator==4.3.2' \
'dill==0.2.9' \
'Django==2.1.7' \
'Flask==1.0.2' \
'future==0.17.1' \
'genie==19.0' \
'genie.abstract==19.0.0' \
'genie.conf==19.0' \
'genie.examples==19.0' \
'genie.harness==19.0' \
'genie.libs.conf==19.0' \
'genie.libs.filetransferutils==19.0.0' \
'genie.libs.ops==19.0' \
'genie.libs.parser==19.0.1' \
'genie.libs.sdk==19.0' \
'genie.libs.telemetry==19.0.0' \
'genie.metaparser==19.0' \
'genie.ops==19.0.1' \
'genie.parsergen==19.0' \
'genie.predcore==19.0.0' \
'genie.telemetry==19.0.1' \
'genie.utils==19.0.1' \
'idna==2.8' \
'ipyats==0.2.0' \
'ipython==7.3.0' \
'ipython-genutils==0.2.0' \
'itsdangerous==1.1.0' \
'jedi==0.13.3' \
'Jinja2==2.10' \
'jsonpickle==1.1' \
'junit-xml==1.8' \
'junos-eznc==2.2.0' \
'lxml==4.3.2' \
'MarkupSafe==1.1.1' \
'multidict==4.5.2' \
'mypy-extensions==0.4.1' \
'napalm==2.4.0' \
'ncclient==0.6.3' \
'netaddr==0.7.19' \
'netdev==0.9.0' \
'netmiko==2.3.3' \
'networkx==2.2' \
'nornir==2.0.0' \
'nxapi-plumbing==0.5.2' \
'paramiko==2.4.2' \
'parso==0.3.4' \
'pathspec==0.5.9' \
'pexpect==4.6.0' \
'pickleshare==0.7.5' \
'prettytable==0.7.2' \
'prompt-toolkit==2.0.9' \
'psutil==5.6.1' \
'ptyprocess==0.6.0' \
'pyasn1==0.4.5' \
'pyats==19.0' \
'pyats.aereport==19.0' \
'pyats.aetest==19.0' \
'pyats.async==19.0' \
'pyats.connections==19.0' \
'pyats.datastructures==19.0' \
'pyats.easypy==19.0' \
'pyats.examples==19.0' \
'pyats.kleenex==19.0' \
'pyats.log==19.0' \
'pyats.results==19.0' \
'pyats.tcl==19.0' \
'pyats.templates==19.0' \
'pyats.topology==19.0' \
'pyats.utils==19.0' \
'pycparser==2.19' \
'pydantic==0.21' \
'pyeapi==0.8.2' \
'Pygments==2.3.1' \
'pyIOSXR==0.53' \
'PyNaCl==1.3.0' \
'pyserial==3.4' \
'pytz==2018.9' \
'PyYAML==5.1' \
'requests==2.21.0' \
'ruamel.yaml==0.15.89' \
'scapy==2.4.2' \
'scp==0.13.1' \
'selectors2==2.0.1' \
'setproctitle==1.1.10' \
'six==1.12.0' \
'textfsm==0.4.1' \
'tqdm==4.31.1' \
'traitlets==4.3.2' \
'unicon==19.0.1' \
'urllib3==1.24.1' \
'wcwidth==0.1.7' \
'Werkzeug==0.14.1' \
'xmltodict==0.12.0' \
'yamllint==1.15.0' \
'yarl==1.3.0' 

# Install other packages
RUN apt-get update && apt-get install -y vim netcat jq 

WORKDIR /scripts

VOLUME [ "/root","/usr", "/scripts" ]

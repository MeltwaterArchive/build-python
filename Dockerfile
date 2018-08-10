FROM centos:6

RUN yum install -y centos-release-scl
RUN yum install -y \
gcc \
python{,-devel,-setuptools} \
python27-python{,-devel,-setuptools} \
rpm-build \
rh-ruby24{,-ruby-devel}
RUN scl enable rh-ruby24 "gem install fpm --no-ri --no-rdoc"
RUN scl enable python27 "easy_install pex requests wheel"
ENV PATH /opt/rh/rh-ruby24/root/usr/local/bin:$PATH

VOLUME '/opt/src'
WORKDIR '/opt/src'
ENTRYPOINT ["scl", "enable", "python27", "rh-ruby24"]

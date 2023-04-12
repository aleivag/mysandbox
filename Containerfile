
FROM registry.fedoraproject.org/fedora:37

RUN dnf install -y \
  git\
  gcc\
  systemd-devel\
  python3-devel\
  python3-Cython\
  python3-wheel\
  python3-ipython && dnf clean all

# install python
RUN python3 -m pip install pystemd

COPY rel.py /opt/rel.py

# starts systemd
CMD [ "/usr/sbin/init" ]

        
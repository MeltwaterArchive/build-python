datasift/build-python
=====================

A docker image we use to build Python packages.

Based of the CentOS 6 images, and includes:

- Python 2.6 (the system default).
- Python 2.7, with the `pex` and `wheel` packages (via a SCL).
- Ruby 2.4 with the `fpm` package (via a SCL).

Usage
-----

```bash
docker pull datasift/build-python
docker run -it datasift/build-python bash
```

License
-------

Licensed under the MIT license. See the `LICENCE` file.

Authors
-------

- [Sam Clements](https://github.com/borntyping/)

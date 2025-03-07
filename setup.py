from setuptools import find_packages, setup, Extension
import numpy


version = "0.9.2b1"

PACKAGE_NAME = 'cpptest'


extensions = [
              Extension(
                'cpptest.test_wrapper',
                sources=['cpptest/test_wrapper.pyx', 'cpptest/_test.cpp'],
                language='c++')
              ]
setup(
    name=PACKAGE_NAME,
    requires=['numpy', 'cython'],
    setup_requires=['numpy', 'cython'],
    install_requires=['numpy', 'cython'],
    packages=find_packages(),
    ext_modules=extensions,
    version=version,
    include_dirs=[numpy.get_include()],
    package_dir={'': ''}
)

{{cookiecutter.project_name}}
{{"=" * cookiecutter.project_name|length}}

``version 0.0.0``

{{cookiecutter.project_short_description}}

.. image:: https://readthedocs.org/projects/{{cookiecutter.module_name}}/badge/?version=latest
   :target: http://{{cookiecutter.module_name}}.readthedocs.io/en/latest/?badge=latest
   :alt: Documentation Status
.. image:: https://travis-ci.org/{{cookiecutter.github_username}}/{{cookiecutter.module_name}}.svg?branch=master
    :target: https://travis-ci.org/{{cookiecutter.github_username}}/{{cookiecutter.module_name}}
.. |PyPI python versions| image:: https://img.shields.io/pypi/pyversions/{{cookiecutter.module_name}}.svg
   :target: https://pypi.python.org/pypi/{{cookiecutter.module_name}}
.. |Join the chat at https://gitter.im/{{cookiecutter.github_username}}/{{cookiecutter.module_name}}| image:: https://badges.gitter.im/{{cookiecutter.github_username}}/{{cookiecutter.module_name}}.svg
   :target: https://gitter.im/{{cookiecutter.github_username}}/{{cookiecutter.module_name}}?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge


Install
-------

.. code:: bash

   pip install {{cookiecutter.pypi_name}}


Documentation
-------------

`{{cookiecutter.readthedocs_url}} <{{cookiecutter.readthedocs_url}}>`_


Basic Usage
-----------


.. code:: python

    # demo usage for your python package

    this is an opportunity to get the attention of potential users of
    your package/tool/library


Contributing
------------

#. Check the `code structure documentation <CODE_STRUCTURE.rst>`_
#. Write tests
#. Write code
#. Send a pull-request

# -*- coding: utf-8 -*-
# Copyright (c) {{cookiecutter.copyright_year}} {{cookiecutter.full_name}} <{{cookiecutter.email}}>
#
# this file is part of the project "{{cookiecutter.project_name}}" released under the "MIT" open-source license

"""{{cookiecutter.project_name}}

{{cookiecutter.project_short_description}}
"""
import json
import requests


class HttpBinClient(object):
    """Python client for the HTTPBin API.

    Powered by :py:class:`requests.Session`.
    """
    def __init__(self, base_url="https://httpbin.org"):
        """
        :param base_url: a string. Defaults to ``https://httpbin.org``
        """
        self.base_url = base_url
        self.session = requests.Session()

    def make_full_url(self, path):
        """Builds a full url to be used internally in this client.

        :param path: a string with the path.

        :returns: a string

        .. note:: any trailing slashes at the left side of the
           **path** argument will be stripped.

        """
        path = path.lstrip('/')
        base_url = self.base_url
        return "{base_url}/{path}".format(**locals())

    def post(self, data=None):
        """Calls the `/post endpoint <https://httpbin.org/#/HTTP_Methods/post_post>`_

        .. note:: This function is here for demo purposes.

        :param data: data to be passed to :py:meth:`requests.Session.post`

        :returns: a dict with deserialized the JSON response
        """
        url = self.make_full_url("/post")
        response = self.session.post(url, data=data)
        return response.json()

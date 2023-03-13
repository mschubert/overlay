# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..11} )

inherit pypi distutils-r1

DESCRIPTION="Make-like task language"
HOMEPAGE="https://snakemake.readthedocs.io/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="dev-python/appdirs[${PYTHON_USEDEP}]
	dev-python/ConfigArgParse[${PYTHON_USEDEP}]
	dev-python/connection_pool[${PYTHON_USEDEP}]
	dev-python/datrie[${PYTHON_USEDEP}]
	dev-python/docutils[${PYTHON_USEDEP}]
	dev-python/GitPython[${PYTHON_USEDEP}]
	dev-python/humanfriendly[${PYTHON_USEDEP}]
	dev-python/jinja[${PYTHON_USEDEP}]
	dev-python/jsonschema[${PYTHON_USEDEP}]
	dev-python/nbformat[${PYTHON_USEDEP}]
	dev-python/psutil[${PYTHON_USEDEP}]
	dev-python/PuLP[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]
	dev-python/ratelimiter[${PYTHON_USEDEP}]
	dev-python/reretry[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/smart_open[${PYTHON_USEDEP}]
	dev-python/stopit[${PYTHON_USEDEP}]
	dev-python/tabulate[${PYTHON_USEDEP}]
	dev-python/throttler[${PYTHON_USEDEP}]
	dev-python/toposort[${PYTHON_USEDEP}]
	dev-python/wrapt[${PYTHON_USEDEP}]
	dev-python/yte[${PYTHON_USEDEP}]"

distutils_enable_tests pytest

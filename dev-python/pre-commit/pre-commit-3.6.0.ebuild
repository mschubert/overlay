# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..12} )

inherit pypi distutils-r1

DESCRIPTION="A framework for managing and maintaining multi-language pre-commit hooks"
HOMEPAGE="https://pypi.org/project/pre-commit/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

RDEPEND="dev-python/cfgv[${PYTHON_USEDEP}]
	dev-python/identify[${PYTHON_USEDEP}]
	dev-python/nodeenv[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]
	dev-python/virtualenv[${PYTHON_USEDEP}]"

distutils_enable_tests pytest

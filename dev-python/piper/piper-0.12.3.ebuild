# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{6..11} )

inherit pypi distutils-r1

DESCRIPTION="Gluing together restartable, robust shell pipelines"
HOMEPAGE="https://pypi.org/project/piper/"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

RDEPEND="dev-python/attmap[${PYTHON_USEDEP}]
	dev-python/logmuse[${PYTHON_USEDEP}]
	dev-python/psutil[${PYTHON_USEDEP}]
	dev-python/pandas[${PYTHON_USEDEP}]
	dev-python/ubiquerg[${PYTHON_USEDEP}]
	dev-python/yacman[${PYTHON_USEDEP}]"

distutils_enable_tests pytest

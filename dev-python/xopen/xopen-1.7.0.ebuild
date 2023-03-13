# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..11} )

inherit pypi distutils-r1

DESCRIPTION="Transparently open() compressed files"
HOMEPAGE="https://pypi.org/project/xopen/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~amd64-linux"

RDEPEND="dev-python/isal[${PYTHON_USEDEP}]"

distutils_enable_tests pytest

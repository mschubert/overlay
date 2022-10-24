# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{4..11} )

inherit distutils-r1

DESCRIPTION="Fast, efficiently stored Trie for Python"
HOMEPAGE="https://pypi.python.org/pypi/datrie/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

BDEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
distutils_enable_tests pytest

python_compile() {
	./update_c.sh
	distutils-r1_python_compile
}

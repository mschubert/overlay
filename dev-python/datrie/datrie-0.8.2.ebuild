# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_{4,5,6,7,8,9,10} )

inherit distutils-r1

DESCRIPTION="Fast, efficiently stored Trie for Python"
HOMEPAGE="https://pypi.python.org/pypi/datrie/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="dev-python/pytest[${PYTHON_USEDEP}]"

python_compile() {
	./update_c.sh
	distutils-r1_python_compile
}

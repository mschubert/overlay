# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{7..11} )

inherit distutils-r1

DESCRIPTION="Faster zlib and gzip de-/compression using the ISA-L library"
HOMEPAGE="https://pypi.org/project/isal/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

DEPEND="dev-libs/isa-l
	dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}
	dev-python/pytest[${PYTHON_USEDEP}]"

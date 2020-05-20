# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{4,5,6,7,8} )

inherit distutils-r1

DESCRIPTION="Interoperate R with Python"
HOMEPAGE="https://github.com/randy3k/${PN}"
SRC_URI="https://github.com/randy3k/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/six[${PYTHON_USEDEP}]"

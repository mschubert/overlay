# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{4,5,6,7} )

inherit distutils-r1

DESCRIPTION="A 21 century R console"
HOMEPAGE="https://github.com/randy3k/radian"
SRC_URI="https://github.com/randy3k/radian/archive/v${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	>=dev-python/lineedit-0.1.5[$PYTHON_USEDEP]
	>=dev-python/rchitect-0.3.24[$PYTHON_USEDEP]
	dev-python/six[$PYTHON_USEDEP]
	>=dev-lang/R-3.4.0"

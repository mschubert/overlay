# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{7..11} )

inherit pypi distutils-r1

DESCRIPTION="Faster zlib and gzip de-/compression using the ISA-L library"
HOMEPAGE="https://pypi.org/project/isal/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~amd64-linux"

DEPEND="dev-libs/isa-l"

distutils_enable_tests pytest

# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{4..11} )

inherit pypi distutils-r1

DESCRIPTION="Efficient pythonic random access to fasta subsequences"
HOMEPAGE="https://github.com/mdshw5/pyfaidx"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE=""

DEPEND="dev-python/six[${PYTHON_USEDEP}]"

distutils_enable_tests pytest

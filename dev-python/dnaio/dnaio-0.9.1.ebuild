# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{7..11} )

inherit distutils-r1

DESCRIPTION="Efficient parsing and writing of FASTQ and also FASTA files"
HOMEPAGE="https://pypi.org/project/dnaio/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

RDEPEND="dev-python/pytest[${PYTHON_USEDEP}]
	dev-python/xopen[${PYTHON_USEDEP}]"
DEPEND="dev-python/cython[${PYTHON_USEDEP}]
	dev-python/setuptools[${PYTHON_USEDEP}]"

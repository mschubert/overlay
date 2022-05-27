# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python2_7 python3_{4,5,6,7,8,9,10} )

inherit distutils-r1

DESCRIPTION="Identify transposon insertions and their effects from RNA-seq data"
HOMEPAGE="https://github.com/NKI-CCB/imfusion"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="sci-biology/STAR
	sci-biology/pyfaidx[${PYTHON_USEDEP}]
	>=sci-biology/HTSeq-0.7.2[${PYTHON_USEDEP}]
	>=sci-biology/pysam-0.9.1[${PYTHON_USEDEP}]
	>=dev-python/pandas-0.19.0[${PYTHON_USEDEP}]
	dev-python/future[${PYTHON_USEDEP}]
	dev-python/intervaltree[${PYTHON_USEDEP}]
	dev-python/matplotlib[${PYTHON_USEDEP}]
	dev-python/numexpr[${PYTHON_USEDEP}]
	dev-python/pathlib2[${PYTHON_USEDEP}]
	dev-python/seaborn[${PYTHON_USEDEP}]
	dev-python/toolz[${PYTHON_USEDEP}]
	sci-libs/scipy[${PYTHON_USEDEP}]"

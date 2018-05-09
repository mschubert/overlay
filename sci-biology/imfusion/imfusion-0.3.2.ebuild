# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python{2_7,3_4,3_5,3_6} )

inherit distutils-r1

DESCRIPTION="Identify transposon insertions and their effects from RNA-seq data"
HOMEPAGE="https://github.com/NKI-CCB/imfusion"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="sci-biology/STAR
	>=dev-python/pandas-0.19.0[${PYTHON_USEDEP}]
	dev-python/future[${PYTHON_USEDEP}]
	dev-python/numexpr[${PYTHON_USEDEP}]
	>=dev-python/pysam-0.9.1[${PYTHON_USEDEP}]
	dev-python/toolz[${PYTHON_USEDEP}]
	dev-python/pyfaidx[${PYTHON_USEDEP}]
	dev-python/intervaltree[${PYTHON_USEDEP}]
	dev-python/pathlib2[${PYTHON_USEDEP}]
	>=sci-biology/HTSeq-0.7.2[${PYTHON_USEDEP}]
	dev-python/matplotlib[${PYTHON_USEDEP}]
	dev-python/seaborn[${PYTHON_USEDEP}]
	sci-libs/scipy[${PYTHON_USEDEP}]"

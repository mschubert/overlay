# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{8..10} )

inherit pypi distutils-r1

DESCRIPTION="Identify transposon insertions and their effects from RNA-seq data"
HOMEPAGE="https://github.com/NKI-CCB/imfusion"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="sci-biology/pyfaidx[${PYTHON_USEDEP}]
	sci-biology/pysam[${PYTHON_USEDEP}]
	dev-python/pandas[${PYTHON_USEDEP}]
	dev-python/future[${PYTHON_USEDEP}]
	dev-python/intervaltree[${PYTHON_USEDEP}]
	dev-python/matplotlib[${PYTHON_USEDEP}]
	dev-python/numexpr[${PYTHON_USEDEP}]
	dev-python/pathlib2[${PYTHON_USEDEP}]
	dev-python/seaborn[${PYTHON_USEDEP}]
	dev-python/toolz[${PYTHON_USEDEP}]
	dev-python/scipy[${PYTHON_USEDEP}]"
# sci-biology/STAR sci-biology/HTSeq[${PYTHON_USEDEP}] causes pkgcheck to fail, not sure why

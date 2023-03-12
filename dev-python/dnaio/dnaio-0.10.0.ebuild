# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{7..11} )

inherit pypi distutils-r1

DESCRIPTION="Efficient parsing and writing of FASTQ and also FASTA files"
HOMEPAGE="https://pypi.org/project/dnaio/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

RDEPEND="dev-python/xopen[${PYTHON_USEDEP}]"
BEPEND="dev-python/cython[${PYTHON_USEDEP}]"

distutils_enable_tests pytest

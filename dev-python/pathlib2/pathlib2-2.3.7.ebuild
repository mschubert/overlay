# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{6..11} )

inherit pypi distutils-r1

DESCRIPTION="Backport of standard pathlib module"
HOMEPAGE="https://pypi.org/project/pathlib2/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

distutils_enable_tests pytest

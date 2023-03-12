# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{9..11} pypy3 )

inherit pypi distutils-r1

DESCRIPTION="Building powerful interactive command lines in Python"
HOMEPAGE="
	https://pypi.org/project/prompt-toolkit/
	https://github.com/prompt-toolkit/python-prompt-toolkit
"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

RDEPEND="dev-python/wcwidth[${PYTHON_USEDEP}]"

distutils_enable_tests pytest

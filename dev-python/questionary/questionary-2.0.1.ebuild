# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=poetry
PYTHON_COMPAT=( python3_{11..12} )

inherit pypi distutils-r1

DESCRIPTION="Python library to build pretty command line user prompts"
HOMEPAGE="https://pypi.org/project/questionary/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

RDEPEND="dev-python/prompt-toolkit[${PYTHON_USEDEP}]"

RESTRICT="test"
#distutils_enable_tests pytest # no tests collected

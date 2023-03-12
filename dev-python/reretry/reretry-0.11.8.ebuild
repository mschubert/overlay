# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{6..11} )

inherit pypi distutils-r1

DESCRIPTION="Easy to use retry decorator"
HOMEPAGE="https://pypi.org/project/reretry/"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

DEPEND="dev-python/decorator[${PYTHON_USEDEP}]"

distutils_enable_tests pytest

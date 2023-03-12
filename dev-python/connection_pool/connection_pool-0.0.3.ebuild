# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{4..11} )

inherit pypi distutils-r1

DESCRIPTION="Thread-safe connection pool for python"
HOMEPAGE="https://pypi.org/project/connection_pool/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

distutils_enable_tests pytest

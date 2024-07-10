# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..12} )

inherit pypi distutils-r1

DESCRIPTION="Low-level functions that can be used in lots of different places"
HOMEPAGE="https://pypi.org/project/ubiquerg/"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

DEPENDS="
	test ? (
		dev-python/veracitools
	)
"

RESTRICT="test"
#distutils_enable_tests pytest # no dev-python/veracitools ebuild

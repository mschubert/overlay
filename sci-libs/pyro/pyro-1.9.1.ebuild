# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..12} )
PYPI_PN=pyro-ppl
DISTUTILS_SINGLE_IMPL=1
inherit pypi distutils-r1

DESCRIPTION="A Python library for probabilistic modeling and inference"
HOMEPAGE="https://pyro.ai/"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	${PYTHON_DEPS}
	sci-libs/pytorch[${PYTHON_SINGLE_USEDEP}]
	$(python_gen_cond_dep '
		dev-python/numpy[${PYTHON_USEDEP}]
		dev-python/opt-einsum[${PYTHON_USEDEP}]
		dev-python/pyro-api[${PYTHON_USEDEP}]
		dev-python/tqdm[${PYTHON_USEDEP}]
	')
"
#		plot? (
#			dev-python/graphviz[${PYTHON_USEDEP}]
#			dev-python/matplotlib[${PYTHON_USEDEP}]
#			dev-python/seaborn[${PYTHON_USEDEP}]
#		)

distutils_enable_tests pytest

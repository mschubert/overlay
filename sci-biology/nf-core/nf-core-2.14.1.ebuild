# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_{10..12} )

inherit pypi distutils-r1

DESCRIPTION="Helper tools for use with nf-core Nextflow pipelines"
HOMEPAGE="https://pypi.org/project/nf-core/"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

RDEPEND="dev-python/click[${PYTHON_USEDEP}]
	dev-python/filetype[${PYTHON_USEDEP}]
	dev-python/GitPython[${PYTHON_USEDEP}]
	dev-python/jinja[${PYTHON_USEDEP}]
	dev-python/jsonschema[${PYTHON_USEDEP}]
	dev-python/markdown[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	dev-python/pillow[${PYTHON_USEDEP}]
	dev-python/pdiff[${PYTHON_USEDEP}]
	dev-python/pre-commit[${PYTHON_USEDEP}]
	dev-python/prompt-toolkit[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]
	dev-python/questionary[${PYTHON_USEDEP}]
	dev-python/requests[${PYTHON_USEDEP}]
	dev-python/requests-cache[${PYTHON_USEDEP}]
	dev-python/rich-click[${PYTHON_USEDEP}]
	dev-python/rich[${PYTHON_USEDEP}]
	dev-python/tabulate[${PYTHON_USEDEP}]
	dev-python/trogon[${PYTHON_USEDEP}]
	sci-biology/refgenie[${PYTHON_USEDEP}]"

distutils_enable_tests pytest

python_install() {
	distutils-r1_python_install
	rm -rf "${D}$(python_get_sitedir)"/tests
}

#!/bin/sh

# Set Environment Variables for Golaem
export GOLAEM_INSTALL_PATH=/opt/golaem/GolaemForUSD
export USD_INSTALL_PATH=/opt/usd/25.05


#alias prsusdview="LD_LIBRARY_PATH=$prs_usd/lib/:$prs_usd/lib64/:${LD_LIBRARY_PATH} PYTHONPATH=$prs_usd/lib/python:$prs_python_venv:${PYTHONPATH} $prs_usd/bin/usdview"

# Set Environment Variables for USD
export LD_LIBRARY_PATH=${GOLAEM_INSTALL_PATH}/lib:${USD_INSTALL_PATH}/lib:${LD_LIBRARY_PATH}
export PYTHONPATH=${USD_INSTALL_PATH}/lib/python:/cache/dev/python39_venv_pyside6/.venv/lib/python3.9/site-packages:${PYTHONPATH}
export PXR_PLUGINPATH_NAME=${GOLAEM_INSTALL_PATH}/procedurals/usd:${PXR_PLUGINPATH_NAME}

# Launch USD Viewer
#${USD_INSTALL_PATH}/bin/usdview /cache/dev/sandbox/rvx/usd/examples/simple_scene.usda

# procedural (it works)
${USD_INSTALL_PATH}/bin/usdview /job/hb/film/testEpisode/testSequence01/testShot1/work/valdi/lighting/golaem/usd/procedural_test01/untitled.renderProxyShape1_pierrer.usda

# skeleton (it works too)
#${USD_INSTALL_PATH}/bin/usdview /job/hb/film/testEpisode/testSequence01/testShot1/work/valdi/lighting/golaem/usd/skel_test01/untitled.crowdField1_renderProxyShape1.usda
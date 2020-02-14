channels:
  - defaults
  - conda-forge
  - https://conda.saturncloud.io/pkgs
  - saturncloud
dependencies:
  - nodejs=11
  - python=3.7
  - ipywidgets=7.5.1
  - jupyterlab=1.0.4
  - nbconvert
  - notebook
  - jupyterhub=1.0.0.devsaturn2
  - nbserverproxy
  - tornado=5.0
  - jupyter_saturn=${JUPYTER_SATURN_VERSION}
  - nbdime=1.0.7
  - pyyaml
  - sutils=${SUTILS_VERSION}
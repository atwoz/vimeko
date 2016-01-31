================
syntastic-extras
================

.. image:: https://travis-ci.org/myint/syntastic-extras.svg?branch=master
    :target: https://travis-ci.org/myint/syntastic-extras
    :alt: Build status

Additional syntax checkers for the Vim plugin Syntastic_.

.. _Syntastic: https://github.com/scrooloose/syntastic

Checkers
========

- C:

.. code-block:: vim

    " Like Syntastic's normal checker, but only checks files if there is a
    " '.syntastic_c_config' file existing in the directory or an ancestor
    " directory. It ignores warnings in included files by using '-isystem'
    " instead of '-I'.
    let g:syntastic_c_checkers = ['check']

- C++:

.. code-block:: vim

    " Like Syntastic's normal checker, but only checks files if there is a
    " '.syntastic_cpp_config' file existing in the directory or an ancestor
    " directory. It ignores warnings in included files by using '-isystem'
    " instead of '-I'.
    let g:syntastic_cpp_checkers = ['check']

- ``cfg``/``dosini``:

.. code-block:: vim

    let g:syntastic_cfg_checkers = ['cfg']
    let g:syntastic_dosini_checkers = ['dosini']

- GNU Make:

.. code-block:: vim

    let g:syntastic_make_checkers = ['gnumake']

- JSON

.. code-block:: vim

    let g:syntastic_javascript_checkers = ['json_tool']

- Language check in ``gitcommit``/``svn`` (commit prompts):

.. code-block:: vim

    let g:syntastic_gitcommit_checkers = ['language_check']
    let g:syntastic_svn_checkers = ['language_check']

- Python:

.. code-block:: vim

    " Like Syntastic's pyflakes checker, but treats messages about unused
    " variables/imports as warnings rather than errors.
    let g:syntastic_python_checkers = ['pyflakes_with_warnings']

- YAML:

.. code-block:: vim

    let g:syntastic_yaml_checkers = ['pyyaml']

Hooks
=====

- Block ``ZZ`` if there are syntax errors:

.. code-block:: vim

    nnoremap ZZ :call syntastic_extras#quit_hook()<cr>

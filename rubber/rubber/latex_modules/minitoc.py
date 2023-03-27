# SPDX-License-Identifier: GPL-3.0-or-later
# (c) Emmanuel Beffara, 2002--2006
"""
Support for the minitoc package.

This package allows for the insertion of partial tables of contents at the
level of chapters, parts and sections. This nice feature has the drawback of
producing a lot of auxiliary files, and this module handles the cleaning of
these.

It relies on the listfiles option, wich is active by default. Listing
the produced files is quite complex (see shortext option for example).
"""

import os.path
import logging

msg = logging.getLogger(__name__)
from rubber.util import _
import rubber.module_interface


class Module(rubber.module_interface.Module):

    def __init__(self, document, opt):
        self.maf = document.basename(with_suffix=".maf")

    # Adding the .maf file to products may lead it to be removed
    # before we can read it. It is wise to deal with it locally.
    def clean(self):
        if os.path.exists(self.maf):
            # Report any decoding error instead of erasing random files.
            try:
                with open(self.maf, encoding='utf_8') as list:
                    for name in list:
                        name = name.rstrip()
                        if os.path.exists(name):
                            msg.info(_("removing %s"), name)
                            os.remove(name)
            except UnicodeDecodeError:
                raise rubber.GenericError(_('Failed to decode file {aux} generated by {pkg} LaTeX package.')
                                          .format(aux=self.maf, pkg='minitoc'))
            msg.info(_("removing %s"), self.maf)
            os.remove(self.maf)
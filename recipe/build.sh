#!/bin/bash
export DISABLE_AUTOBREW=1
rm configure
mv Makevars src/Makevars
${R} CMD INSTALL --build . ${R_ARGS}

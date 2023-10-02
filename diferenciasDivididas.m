## Copyright (C) 2023 Pedro Gonçalves Schwingel - ENS
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} diferenciasDivididas (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Pedro Gonçalves Schwingel - ENS <pedro.goncalves@pcunix31.fing.edu.uy>
## Created: 2023-10-02

function retval = diferenciasDivididas (x)
 % y es un vector que contiene a todos los x evaluados en f
  n = length(x);
  M=zeros(n,n);
  M(:,1)= funcionDeRunge(x);
  for i=1:n
    for j=i:n
      M()
    endfor

  endfor

endfunction

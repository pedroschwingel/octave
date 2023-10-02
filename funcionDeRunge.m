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
## @deftypefn {} {@var{retval} =} funcionDeRunge (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Pedro Gonçalves Schwingel - ENS <pedro.goncalves@pcunix31.fing.edu.uy>
## Created: 2023-10-02

function result = funcionDeRunge (x)
  funcion = @(x) 1./(1 + 25*x.^2);
  result = zeros(length(x),1)
  for i=1:length(x)
   result(i,1)=funcion(x(i));
  endfor
endfunction

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
## @deftypefn {} {@var{retval} =} baseLagrange (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Pedro Gonçalves Schwingel - ENS <pedro.goncalves@pcunix31.fing.edu.uy>
## Created: 2023-10-03

function retval = baseLagrange (x,y)
  x=[1/4,1,5/2];
  y=[-3/4,-1,3/2];
  grado = length(x);
  L_n = zeros(grado,grado);
  for k =1:grado
    ar =1;
    ab =1;
    for i=1:grado
      if(i!=k)
        coef=[1,-x(i)];
         ar =  conv(ar,coef);
         ab = (ab * (x(k)-x(i)));
         endif
    endfor
    %la fila k-esima tiene los coeficientes del la base, donde cada fila representa el grado del polinomio
    L_n(k,:) = ar(:,:)./ab;
  endfor
  resultado = zeros(grado,grado);
    for i=1:grado
     for j =1:grado
        resultado(i,j)=L_n(i,j)*y(j);
     endfor
    endfor
    result =sum(resultado,2)
    a=result(1,1)
    b=result(2,1)
    c=result(3,1)
    g = @(o) a*o.^2+b.*o+c;
    vtest_x=linspace(-1,3,50);
    vtest_y=g(vtest_x);
    for i=1:length(vtest_x)
        vtest_y(i)= g(vtest_x(i));
    endfor
    plot(vtest_x,vtest_y);
    hold on;
    scatter(x,y)
    grid on;
    %funcionn= @(h) (result(1,1).*h^2+result(2,1).*h+result(3,1))
    %funcionn(1/4);

endfunction

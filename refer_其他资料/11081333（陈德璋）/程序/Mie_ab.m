function result = Mie_ab(m,x)z=m.*x;nmax=round(2+x+4*x.^(1/3));nmx=round(max(nmax,abs(z))+16);n=(1:nmax); nu = (n+0.5); sx=sqrt(0.5*pi*x);px=sx.*besselj(nu,x);p1x=[sin(x), px(1:nmax-1)];chx=-sx.*bessely(nu,x);ch1x=[cos(x), chx(1:nmax-1)];gsx=px-i*chx; gs1x=p1x-i*ch1x;dnx(nmx)=0+0i;for j=nmx:-1:2          dnx(j-1)=j./z-1/(dnx(j)+j./z);end;dn=dnx(n);        da=dn./m+n./x; db=m.*dn+n./x;an=(da.*px-p1x)./(da.*gsx-gs1x);bn=(db.*px-p1x)./(db.*gsx-gs1x);result=[an; bn];
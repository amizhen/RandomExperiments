function [out] = gauss_jordan(matrix)
  matrix = gauss(matrix);
  [n,m] = size(matrix);
  val = 0;
  start = find(flipud(matrix)(:,n)!=0,1);
  if start;
    start = n - start+1;
    for i=start:-1:2
      val = matrix(i,m);
      matrix(1:i-1,m) -= matrix(1:i-1,i) * val;
      matrix(1:i-1,i) *= 0;
    endfor
  endif
  out = matrix;
end
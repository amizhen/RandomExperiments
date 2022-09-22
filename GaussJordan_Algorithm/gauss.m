function [out] = gauss(matrix)
  [n,m] = size(matrix);
  pivot = 0;
  tempRow = zeros(m);
  for startRow=1:n-1
    pivot = find(matrix(startRow:end,startRow)!=0,1);
    if pivot
      pivot+=startRow-1;
      %matrix(pivot,:)
      tempRow = matrix(startRow, :);
      matrix(startRow, :) = matrix(pivot, :);
      matrix(pivot, :) = tempRow;
      %matrix
      
      matrix(startRow,:) /= matrix(startRow,startRow);
      matrix(startRow+1:end,startRow:end) -= matrix(startRow+1:end,startRow)*matrix(startRow,startRow:end);
      %matrix
    endif
  endfor
  if matrix(n,n)!= 0
    matrix(n,:)/=matrix(n,n);
  end
  out = matrix;
end
  
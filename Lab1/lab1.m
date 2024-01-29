% Create a 3x3 matrix
A = [1 2 3; 4 5 6; 7 8 9];
disp('Original Matrix A:');
disp(A);
% Extract a submatrix (submatrix from row 2 to end, and column 1 to 2)
submatrix = A(2:end, 1:2);
disp('Submatrix:');
disp(submatrix);
% Modify a submatrix (set all elements in the submatrix to 0)
A(2:end, 1:2) = 0;
disp('Modified Matrix A:');
disp(A);
% Create a matrix
B = magic(4);
disp('Matrix B:');
disp(B);

% Extract elements greater than 10
C = B(B > 10);
disp('Elements greater than 10 in Matrix B:');
disp(C);
% Logical indexing to set elements to 0 based on a condition
B(B > 10) = 0;
disp('Modified Matrix B (elements > 10 set to 0):');
disp(B);
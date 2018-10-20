A = input (' please insert the grades in a matrix ');

[rn , cn ] = size(A); 

if isempty(A)==1 %check if the user did not entered grades 
    disp('No Grades Were entered')
else % if the user entered grades perform the program
    for r = 1:rn
        for c = 1: cn
            if A(r,c) <= 60
                B(r,c) ='F';
            elseif A(r,c) < 70
                B(r,c) = 'D';
            elseif A(r,c) < 80
                B(r,c) = 'C';
            elseif A(r,c) < 90
                B(r,c) = 'B';
            else
                B(r,c) = 'A';
            end
        end
    end

    for r = 1:rn
        for c = 1: cn
            if A(r,c)<63;
                D(r,c)= ' '  ;   
            elseif A(r,c)== 100 | mod(A(r,c), 10) > 7;
                D(r,c) = '+';
            elseif mod(A(r,c), 10) <= 3;
                D(r,c) ='-';
            else 
                D(r,c)= ' '  ;
            end
        end
    end

    for r=1:rn %create a matrix of the same number of rows and double number of columns 
        f=1;
        for c=1:2*cn'
            if mod(c,2)==0; 
                Z(r,c)= D(r,c/2);
            elseif c==1
            Z(r,c)= B(r,c);
            else
                Z(r,c)= B(r,c-f);
                f=f+1;
            end
        end
    end
    Z
end
        

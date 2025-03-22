% -----------------
% ----- EX 11 -----
% -----------------

function shapeCreator(r)
    if r <= 0
        disp("please enter a valid value for r!");
        return;
    end
    
    % ----- declaring the variables -----
    height=4;
    n=1000;
    th = linspace(0,2*pi);


    % ----- creating the first segment -----
    r1 = linspace(0, 2*r) ;
    [R1,T1] = meshgrid(r1,th) ;
    x1 = R1.*cos(T1);
    y1 = R1.*sin(T1);
    z1 = -R1;
 
    % ----- creating the second segment -----
    r2 = linspace(0.5*r, 2*r) ;
    [R2,T2] = meshgrid(r2,th) ;
    x2 = R2.*cos(T2);
    y2 = R2.*sin(T2);
    z2 = min(z1(:)) - R2;

    % ----- creating the third segment -----
    r3 = linspace(0.5*r, r) ;
    [R3,T3] = meshgrid(r3,th) ;
    x3 = R3.*cos(T3);
    y3 = R3.*sin(T3);
    z3 = min(z2(:)) - R3;

    % ----- plotting the final shape -----
    figure; 

    mesh(x1, y1, z1);
    hold on;

    mesh(x2, y2, z2);

    hold on;

    mesh(x3, y3, z3);

    xlabel('X'); ylabel('Y'); zlabel('Z');
    axis equal;
end

shapeCreator(5);
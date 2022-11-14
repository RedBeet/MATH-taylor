%% 1/(1-x)
syms x
f = 1/(1-x)
fplot(f, [-5 5])
hold on

for i = 1:20
    Mac = taylor(f,x,'Order',i)
    fplot(Mac, [-5 5] )
end
title("taylor series for 1/(1-x)")
legendstring = string(1:20)

for i = 20:-1:1
    legendstring(i+1) = legendstring(i)
end
legendstring(1) = "Original"

legend(legendstring, 'Location','southeast','NumColumns',4)
hold off
%% sin(x)
syms x
f = sin(x)
fplot(f, [-pi pi])
hold on

for i = 1:20
    Mac = taylor(f,x,'Order',i)
    fplot(Mac, [-pi pi] )
end
title("taylor series of sin(x)")
legendstring = string(1:20)

for i = 20:-1:1
    legendstring(i+1) = legendstring(i)
end
legendstring(1) = "Original"

legend(legendstring, 'Location','southeast','NumColumns',4)
hold off
%% cos(x)
syms x
f = cos(x)
fplot(f, [-pi pi])
hold on

for i = 1:20
    Mac = taylor(f,x,'Order',i)
    fplot(Mac, [-pi pi] )
end
title("taylor series of cos(x)")
legendstring = string(1:20)

for i = 20:-1:1
    legendstring(i+1) = legendstring(i)
end
legendstring(1) = "Original"

legend(legendstring, 'Location','southeast','NumColumns',4)
hold off
%% e^x
syms x
f = exp(x)
fplot(f, [-5 5])
hold on

for i = 1:20
    Mac = taylor(f,x,'Order',i)
    fplot(Mac, [-5 5] )
end
title("taylor series of e^x")
legendstring = string(1:20)

for i = 20:-1:1
    legendstring(i+1) = legendstring(i)
end
legendstring(1) = "Original"

legend(legendstring, 'Location','northwest','NumColumns',4)
hold off
%% ln(1-x)
syms x
f = log(1-x)
fplot(f, [-5 5])
hold on

for i = 1:20
    Mac = taylor(f,x,'Order',i)
    fplot(Mac, [-5 5] )
end
title("taylor series of ln(1-x)")
legendstring = string(1:20)

for i = 20:-1:1
    legendstring(i+1) = legendstring(i)
end
legendstring(1) = "Original"

legend(legendstring, 'Location','southwest','NumColumns',4)
hold off
%% ln(1+x)
syms x
f = log(1+x)
fplot(f, [-5 5])
hold on

for i = 1:20
    Mac = taylor(f,x,'Order',i)
    fplot(Mac, [-5 5] )
end
title("taylor series of ln(1+x)")
legendstring = string(1:20)

for i = 20:-1:1
    legendstring(i+1) = legendstring(i)
end
legendstring(1) = "Original"

legend(legendstring, 'Location','southeast','NumColumns',4)
hold off
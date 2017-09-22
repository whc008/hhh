x1=mapminmax(fliplr(plate1));
x2=mapminmax(fliplr(plate2));
x3=mapminmax(fliplr(plate3));
y11=conv(x1,plate1);

y21=conv(x2,plate1);
y31=conv(x2,plate1);
y12=conv(x1,plate2);
y22=conv(x2,plate2);
y32=conv(x3,plate2);
y13=conv(x1,plate3);
y23=conv(x2,plate3);
y33=conv(x3,plate3);


figure
axis([0 200 -10 10]);
subplot(331)


plot(y11)
axis([0 200 -20 20]);
subplot(332)
plot(y21)
axis([0 200 -20 20]);
subplot(333)
plot(y31)
axis([0 200 -20 20]);
subplot(334)
plot(y12)
axis([0 200 -20 20]);
subplot(335)
plot(y22)
axis([0 200 -20 20]);
subplot(336)
plot(y32)
axis([0 200 -20 20]);
subplot(337)
plot(y13)
axis([0 200 -20 20]);
subplot(338)
plot(y23)
axis([0 200 -20 20]);
subplot(339)
plot(y33)
axis([0 200 -20 20]);
k=input("enter the number");
rseqgen=randi([1 100],1,k);
disp(rseqgen)
x=1:k;
disp(x)
plot(x,rseqgen,'-o')
xlabel('index')
ylabel('Random Value')
title('Random Sequence Number')
grid on
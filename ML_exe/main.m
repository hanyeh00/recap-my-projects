clear
clc
load ('wdbc.mat');

sc=20; 

prompt = ' Please choOse your classifire and enter the number( 1=KNN 2=DWKNN 3=RBF 4=RBF_ToOlBox): '; 
CF=input(prompt); 

if (CF==1 || CF==2)
           prompt = ' Please enter your k: ';
           KNN = input(prompt);
end
number_run_program=10; 

%  % pca 
%  r=5;
%  xn = data(:,1:end-1);
%  pc = princomp(xn);
%  pc = pc(:,1:r);
%  xr = xn *pc;
%  temp = zeros(max(size(data)),r+1);
%  temp(:,1:r) = xr;
%  temp(:,r+1) = data(:,end);
%  data=temp;

% kfold
save_time=0;
save_result=zeros(number_run_program,5);
result=zeros(10,5);
for run=1:number_run_program
    tic
    index = crossvalind( 'Kfold', length(data(:,end)) , 10 );
    for fold=1:10
        testID = (index == fold); 
        trainID = ~testID;
        train = data(trainID,:);
        test = data(testID ,:);
       if (CF==1 || CF==2)
           result(fold,:)=KNN_DWKNN(train,test,KNN,CF);
       end
       if (CF==3)  
           result(fold,:)=RBF_func(train,test);
       end
       if (CF==4) 
           result(fold,:)=rbf_matlab(train,test,sc);
       end
    end
   save_time(run)=toc; 
   save_result(run,:)=mean(result);
end
disp(['Mean Run Time: ' num2str(mean(save_time))]);
disp(['Result Mean: ' num2str(mean(save_result))]);
disp(['Result STD: ' num2str(std(save_result(:,1)))]);
disp(['Result Worst: ' num2str(min(save_result(:,1)))]);
disp(['Result Best: ' num2str(max(save_result(:,1)))]);

for run = 1:number_run_program
    x = 0:0.1:1;
    plot(x,x,'r:',(1-save_result(run,3)),save_result(run,2),'+');
    title([' ROC Plot for Test in different Runs ' ,int2str(run)]); 
    xlabel(' FPR or (1 - specificity)');
    ylabel(' TPR or sensitivity');
    hold on;
end


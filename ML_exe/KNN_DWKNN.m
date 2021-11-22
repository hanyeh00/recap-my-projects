function [ result,output_test]=KNN_DWKNN(train_set,test_set,KNN,TYPE_KNN )
% TYPE_KNN=1 KNN
%TYPE_KNN=2 DWKNN
output_test=[];

count_data_train=max(size(train_set));
count_data_test=max(size(test_set));
result=0;
for j =1 : count_data_test
        for k = 1:count_data_train
            DIST1(j,k ) = norm(test_set(j,1:end-1) - train_set(k,1:end-1));
        end
        
        if(TYPE_KNN==2)  
             DIST1=1./(DIST1.^2);  
             [B1,IX1] = sort(DIST1(j,:),2,'descend');
             best_fit_with_train=train_set(IX1(1:KNN),end);
             best_fit_with_weight=B1(1:KNN);
             temp=(best_fit_with_train'.*best_fit_with_weight)./sum(best_fit_with_weight);
             temp=sum(temp);
             output_test(j)=round(temp);
        else
             [B1,IX1] = sort(DIST1(j,:),2);
             output_test(j)= round(mean(train_set(IX1(1:KNN),end)));
        end
end


result=Evaluate(test_set(:,end),output_test');
end 
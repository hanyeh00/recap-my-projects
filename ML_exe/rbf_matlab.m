

function out=rbf_matlab(train_set,test_set,sc)
train_set=train_set';
test_set=test_set';

eg = 0.02; % sum-squared error goal

net = newrb(train_set(1:end-1,:),train_set(end,:),eg,sc,20);
Y = net(test_set(1:end-1,:));
Y=round(Y);

test_set=test_set';
out=Evaluate(Y',test_set(:,end));

end

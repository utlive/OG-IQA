function [dec] = BP_Ada(train_data, train_value, test_data, quantity)
% AdaBoosting BP neural network
%confirm the quantity T of the WeakLearns and reform data
T=quantity;
train_data=train_data';
train_value=train_value';
test_data=test_data';
K=size(train_data, 2);% K in paper


%initialize the distribution D1 of the training set
D(1,:)=ones(1,K)/K;


for i=1:T %for each WeakLearn
    
    %train ith WeakLearn
    net=newff(train_data, train_value, [6, 6], {'tansig', 'radbas', 'tansig'});
    net.trainParam.epochs=5000;
    net.trainParam.showWindow=0;
    net.trainParam.lr=0.1;
    net=train(net,train_data,train_value);
    
    % estimate the predicted output of the training set
    BPoutput=sim(net,train_data);
    
    %compute the difference between the predicted output of the training
    %set and original ones
    train_error(i,:)=train_value-BPoutput;
    
    % estimate the predicted output of the test set
    test_output(i,:)=sim(net,test_data);
    
    %updata the distribution Di+1 for next WeakLearn and compute the evaluation error of the ith WeakLearn
    all_Error(i)=0;
    for j=1:K
        if abs(train_error(i,j))>0.1 % threshold=0.1
            all_Error(i)=all_Error(i)+D(i,j);
            D(i+1,j)=D(i,j)*1.1;% sigma=0.1
        else
            D(i+1,j)=D(i,j);
        end
    end
    
    %compute the ith WeakLearn weight
%     a(i)=0.5*log((1+all_Error(i))/(1-all_Error(i)));
    a(i)=sigmf(abs(1-all_Error(i)),[1 0.5]);
    D(i+1,:)=D(i+1,:)/sum(D(i+1,:));
end

a=a/sum(a);

%the final output
dec=a*test_output;

dec=dec';
end


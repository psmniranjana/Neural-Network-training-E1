
close all,clear all,clc;


% Calculate the output of a simple neuron


%neurons weight
w=[4 -2];
%neurons bias
b = -3;
%activation function
func='tansig'; %also can explore other functions sucj as 'purelin' 'hardlim' 'logsig'

%define input vector
v=[2 3];
%calculate neuron output
activation_potential = v*w'+b;
neuron_output=feval(func,activation_potential)
%plot neuron output over the range of inputs
[p1,p2] = meshgrid(-10:.25:10);
z = feval(func,[p1(:) p2(:)]*w'+b);
z = reshape(z,length(p1),length(p2));
plot3(p1,p2,z)
grid on
xlabel('Input 1')
ylabel('Input 2')
zlabel('Neuron output')
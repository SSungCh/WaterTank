import numpy as np
import io

class linearR:
    
    def __init__(self):
        
        self.vector_set = [] # total data
        with open('plots.txt','r') as f: # file read
            for line in f:
                self.vector_set.append(line.strip().split('\t'))
                
        self.num_points = len(self.vector_set)
        self.W = np.random.randn(3,1)

    def forward(self, batch):
        
        batch_set_size = int(round(self.num_points / batch +0.5)) # calculate number of batch set
        
        for i in range(0, batch_set_size): # learning on every batch set
            
            batch_set = self.vector_set[batch_set_size*i:batch_set_size*(i+1)-1] # batch set data extract from total data
            
            x_data = np.array([[float(v[0]), float(v[1]), 1.0] for v in batch_set])
            y_data = np.array([[float(v[2])] for v in batch_set])

            print 'batch set ' + str(i)
            
            for step in range(350):# 350 times learning

                y = np.dot(x_data,self.W)
                loss = np.average(np.power(y-y_data,2))

                z = np.dot(x_data.T, (y-y_data))/batch_set_size

                self.W = self.W-0.0072*z #learning rate = 0.0072

                if step % 100 ==0:
                    print (step, self.W.reshape(-1,3), loss)

            print 'learning result ' + str(i)
            print (self.W.reshape(-1,3), loss)

    
if __name__=='__main__':

    a = linearR()
    a.forward(100) #batch size = 100

        

function [stackInfo]=stack_Khripkov(strAction,data)

persistent StackInd structStack

global Stack_size

if isempty(StackInd)
    StackInd=0;
end

switch strAction  

    case 'Push'
    
    if isempty(structStack)  
        structStack = 0;
    end
      
        if  (StackInd<Stack_size)       
            StackInd=StackInd+1;     
            structStack(StackInd)=data; 
        stackInfo=1;                                     
    
        else
        stackInfo=0;                 
        disp('Error,Stack is full')  
        end 
        
case 'Pop'   
       
    stackInfo=structStack(StackInd); 
        StackInd=StackInd-1;       
    
   case 'Peek'
      stackInfo=structStack(StackInd); 

case 'IsEmpty'  
    
    if  StackInd == 0
        stackInfo=1;        
    else
        stackInfo=0;           
        
    end
        
    case 'IsFull'  
        
        if  StackInd == Stack_size
        stackInfo=1;   
        else
        stackInfo=0;   
        end          

end

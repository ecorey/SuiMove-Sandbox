module fp::yeast {

    // imports
    use std::string;
    use sui::object::{Self, UID};
    use sui::tx_context::{Self, TxContext};
    use sui::transfer;
    
    
    struct Yeast has drop {
       
        
    }

    fun new_yeast( ctx: &mut TxContext): Yeast {
            Yeast {
             
                
            }
        }
        

    public entry fun create_yeast(ctx: &mut TxContext): Yeast {
        
        let yeast = new_yeast(ctx);
        
        yeast 
    }   

    

   
   





}
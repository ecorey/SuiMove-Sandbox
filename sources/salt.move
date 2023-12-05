module fp::salt {

    // imports
    use std::string;
    use sui::object::{Self, UID};
    use sui::tx_context::{Self, TxContext};
    use sui::transfer;
    
    
    struct Salt has drop {
      
    }


    fun new_salt( ctx: &mut TxContext): Salt {
            Salt {
                
                
            }
        }
   


    public entry fun create_salt(ctx: &mut TxContext): Salt {
        
        let salt = new_salt(ctx);
        
        salt 
    }   




}
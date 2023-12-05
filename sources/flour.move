module fp::flour {

    // imports
    use std::string;
    use sui::object::{Self, UID};
    use sui::tx_context::{Self, TxContext};
    use sui::transfer;
    
    


    
    struct Flour has drop {
       
        
    }

    
    fun new_flour( ctx: &mut TxContext): Flour {
        Flour {
          
            
        }
    }

    // function to create the flour object and return it
    public entry fun create_flour(ctx: &mut TxContext): Flour {
        
        let flour = new_flour(ctx);
        
        flour 
    }   
    

    

}
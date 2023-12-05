module fp::flour {

    // imports
    use std::string;
    use sui::object::{Self, UID};
    use sui::tx_context::{Self, TxContext};
    use sui::transfer;
    
    

    struct Flour has key {
       id: UID,
        
    }

    
    fun new_flour( ctx: &mut TxContext): Flour {
        Flour {
          
          id: object::new(ctx),
            
        }
    }


    // function to create the flour object and return it
    public  fun create_flour(ctx: &mut TxContext): Flour {
        
        let flour = new_flour(ctx);
        
        flour 
    }   
    

    public fun delete_flour(flour: Flour) {
        let Flour { id } = flour;
        sui::object::delete(id);
    }

    

}
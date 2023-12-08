module fp::salt {

    // imports
    use sui::object::{Self, UID};
    use sui::tx_context::{Self, TxContext};
    use sui::transfer;
    

    struct Salt has key {
       id: UID,
        
    }

    
    fun new_salt( ctx: &mut TxContext): Salt {
        Salt {
          
          id: object::new(ctx),
            
        }
    }


    // function to create the flour object and return it
    public entry fun create_salt(ctx: &mut TxContext) {
        let salt = new_salt(ctx);
        transfer::transfer(salt, tx_context::sender(ctx))
    }   
    

    public entry fun delete_salt(salt: Salt) {
        
        let Salt {
             id 
             } = salt;
        
        object::delete(id);
    }

    

}

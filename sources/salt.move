module fp::salt {

    // imports
    use std::string;
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
   


    public entry fun create_salt(ctx: &mut TxContext): Salt {
        
        let salt = new_salt(ctx);
        
        salt 
    }   


    public fun delete_salt(salt: Salt) {
        let Salt { id } = salt;
        sui::object::delete(id);
    }

}
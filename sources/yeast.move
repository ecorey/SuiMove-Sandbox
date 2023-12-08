module fp::yeast {

    // imports
    use sui::object::{Self, UID};
    use sui::tx_context::{Self, TxContext};
    use sui::transfer;
    

    struct Yeast has key {
       id: UID,
        
    }

    
    fun new_yeast( ctx: &mut TxContext): Yeast {
        Yeast {
          
          id: object::new(ctx),
            
        }
    }


    // function to create the flour object and return it
    public entry fun create_yeast(ctx: &mut TxContext) {
        let yeast = new_yeast(ctx);
        transfer::transfer(yeast, tx_context::sender(ctx))
    }   
    

    public entry fun delete_yeast(yeast: Yeast) {
        
        let Yeast {
             id 
             } = yeast;
        
        object::delete(id);
    }

    

}

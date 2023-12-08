module fp::flour {

    // imports
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
    public entry fun create_flour(ctx: &mut TxContext) {
        let flour = new_flour(ctx);
        transfer::transfer(flour, tx_context::sender(ctx))
    }   
 

    public entry fun delete_flour(flour: Flour) {

        let Flour {
             id 
             } = flour;
        
        object::delete(id);
    }

    

}

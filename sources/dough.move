module fp::dough {

    // imports
    use sui::object::{Self, UID};
    use sui::tx_context::{Self, TxContext};
    use sui::transfer;
    
    use fp::flour::Flour;
    use fp::salt::Salt;
    use fp::yeast::Yeast;

    
    struct Dough has key {
        id: UID,
        
    }

    
     fun new_dough( ctx: &mut TxContext): Dough {
        Dough {
          
          id: object::new(ctx),
            
        }
    }

    

    public entry fun delete_dough(dough: Dough) {
        
        let Dough {
             id 
             } = dough;
        
        object::delete(id);
    }

   
    // Function to combine Flour, Salt, and Yeast into Dough using references
    public entry fun combine(flour: Flour, salt: Salt, yeast: Yeast, ctx: &mut TxContext) {
        
         // Delete flour, salt, and yeast
        fp::flour::delete_flour(flour); 
        fp::salt::delete_salt(salt);   
        fp::yeast::delete_yeast(yeast); 
        
        // Create and return new dough
        let dough = new_dough(ctx);
        transfer::transfer(dough, tx_context::sender(ctx))

    }



}

module fp::dough {

    // imports
    use std::string;
    use sui::object::{Self, UID};
    use sui::tx_context::{Self, TxContext};
    use sui::transfer;
    
    use fp::flour::Flour;
    use fp::salt::Salt;
    use fp::yeast::Yeast;

    
    struct Dough has drop {
        
        
    }

    
    
    fun new_dough( ctx: &mut TxContext): Dough {
            Dough {
                
                
            }
        }

    
    
    public entry fun create_dough(ctx: &mut TxContext): Dough {
        
        let dough = new_dough(ctx);
        
        dough 
    }   

   

    // Function to combine Flour, Salt, and Yeast into Dough using references
    public fun combine(flour: &Flour, salt: &Salt, yeast: &Yeast, ctx: &mut TxContext): Dough {
        

        
        let dough = new_dough(ctx);
        
        
        create_dough(ctx)

    }



}
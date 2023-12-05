module fp::yeast {

    // imports
    use std::string;
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
        

    public entry fun create_yeast(ctx: &mut TxContext): Yeast {
        
        let yeast = new_yeast(ctx);
        
        yeast 
    }   

    

   
   public fun delete_yeast(yeast: Yeast) {
        let Yeast { id } = yeast;
        sui::object::delete(id);
    }





}
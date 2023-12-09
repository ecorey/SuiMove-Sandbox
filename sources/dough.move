module fp::dough {

    // imports
    use sui::object::{Self, UID};
    use sui::tx_context::{Self, TxContext};
    use sui::transfer;

    use fp::flour::{Flour, delete_flour};
    use fp::salt::{Salt, delete_salt};
    use fp::yeast::{Yeast, delete_yeast};
    
    

    struct Dough has key {
       id: UID,
        
    }

    
    fun new_dough( ctx: &mut TxContext): Dough {
        Dough {
          
          id: object::new(ctx),
            
        }
    }


    // function to create the flour object and return it
    public entry fun create_dough(flour: &mut Flour, salt: &mut Salt, yeast: &mut Yeast, ctx: &mut TxContext) {
        let flour_id = flour.id;
        let salt_id = salt.id;
        let yeast_id = yeast.id;

        delete_flour(flour_id);
        delete_salt(salt_id);
        delete_yeast(yeast_id);
        
        let dough = new_dough(ctx);
        transfer::transfer(dough, tx_context_sender(ctx));
    } 
    

    public entry fun delete_dough(dough: Dough) {
        
        let Dough {
             id 
             } = dough;
        
        object::delete(id);
    }

    

}

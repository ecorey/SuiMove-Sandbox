module fp::bread {

    // imports
    use std::string;
    use sui::object::{Self, UID};
    use sui::tx_context::{Self, TxContext};
    use sui::transfer;
    
    use fp::dough::Dough;



    
    struct Bread has key {
        id: UID, 
        
    }

    fun new_bread( ctx: &mut TxContext): Bread {
            Bread {
                id: object::new(ctx),
                
            }
        }
        

    public entry fun create_bread(ctx: &mut TxContext): Bread {
        
        let bread = new_bread(ctx);
        
        bread 
    }   

    

   
    public entry fun transfer_bread(bread: Bread, recipient: address) {
        transfer::transfer(bread, recipient);
    }


     
    // Function to bake Dough into Bread
    public fun bake(dough: &mut Dough, ctx: &mut TxContext): Bread {
        
        
        create_bread(ctx)
    }





}

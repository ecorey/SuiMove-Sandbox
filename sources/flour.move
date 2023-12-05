// first flour is package, second is this particular module
module fp::flour {

    // imports
    use std::string;
    // allows to instantiate and intiate objects
    use sui::object::{Self, UID};
    // TxContext used in testing, and object creation, manipulation
    use sui::tx_context::{Self, TxContext};
    // transfer
    use sui::transfer;
    
    


    // flour object that exists on the sui network
    // can have store, to be stored in another object
    // also can have copy and drop allow dupolication and deletion 
    struct Flour has key {
        // all objects need to have a unique identifier, UID
        id: UID, 
        
    }

    // function to create a salt object but not return it
    // entry can be called directly by transaction and cannot return anything
    // public can be called by anyone
    // need the TxContext to instantiate a new object UID
    fun new_flour( ctx: &mut TxContext): Flour {
        Flour {
            id: object::new(ctx),
            
        }
    }

    // function to create the salt object and return it
    public entry fun create_flour(ctx: &mut TxContext): Flour {
        
        let flour = new_flour(ctx);
        
        // return does not include a return keyword or use a ;
        flour 
    }   
    

    // to transfer the object to another user
    // transfer must be public entry
    // bc transfer::transfer is not a public entry function it needs to be wrapped
    public entry fun transfer_flour(flour: Flour, recipient: address) {
        transfer::transfer(flour, recipient);
    }






}
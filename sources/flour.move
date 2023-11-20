
module fp::flour {
    use sui::tx_context::{sender, TxContext};
    use std::string::{utf8, String};
    use sui::transfer::transfer;
    use sui::object::{Self, UID};

    
    use sui::package;
    use sui::display;

    
    struct Flour has key, store {
        id: UID,
        name: String,
        img_url: String,
    }

    // One-Time-Witness for the module.
    struct MY_FLOUR has drop {}

   
    fun init(otw: MY_FLOUR, ctx: &mut TxContext) {
        let keys = vector[
            utf8(b"name"),
            utf8(b"link"),
            utf8(b"image_url"),
            utf8(b"description"),
            utf8(b"project_url"),
            utf8(b"creator"),
        ];

        let values = vector[
            // For `name` one can use the `Flour.name` property
            utf8(b"{name}"),
            // For `link` one can build a URL using an `id` property
            utf8(b"https://makebread.io/flour/{id}"),
            // For `image_url` use an IPFS template + `img_url` property.
            utf8(b"ipfs://{img_url}"),
            // Description 
            utf8(b"Make Dough to get Bread"),
            // Project URL 
            utf8(b"https://makebread.io"),
            // Creator field can be any
            utf8(b"Unknown Sui Fan")
        ];

        // Claim the `Publisher` for the package!
        let publisher = package::claim(otw, ctx);

        // Get a new `Display` object for the `Flour` type.
        let display = display::new_with_fields<Flour>(
            &publisher, keys, values, ctx
        );

        // Commit first version of `Display` to apply changes.
        display::update_version(&mut display);

        transfer(publisher, sender(ctx));
        transfer(display, sender(ctx));
    }

    /// Anyone can mint their `Flour`!
    public fun mint_flour(name: String, img_url: String, ctx: &mut TxContext): Flour {
        let id = object::new(ctx);
        Flour { id, name, img_url }
    }
}
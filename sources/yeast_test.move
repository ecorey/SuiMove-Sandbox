// yeast_test.move
script {
    use fp::yeast::{salt, mint_yeast};
    use sui::tx_context::mock_context;
    use std::string::String;

    fun test_mint_yeast() {
        let ctx = mock_context();
        let yeast = mint_yeast( &mut ctx);

        // Assertions
        // Check if the flour object is created correctly
        assert!(yeast.id != 0, b"Invalid ID for Yeast");
    }

    
}

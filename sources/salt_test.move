// salt_test.move
script {
    
    use fp::salt::{salt, mint_salt};
    use sui::tx_context::mock_context;
    use std::string::String;

    fun test_mint_salt() {
        let ctx = mock_context();
        let salt = mint_salt( &mut ctx);

        // Assertions
        // Check if the flour object is created correctly
        assert!(salt.id != 0, b"Invalid ID for Salt");
    }

    
}

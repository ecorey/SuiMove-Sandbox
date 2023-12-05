// flour_test.move
script {

    use fp::flour::{salt, mint_flour};
    use sui::tx_context::mock_context;
    use std::string::String;

    fun test_mint_flour() {
        let ctx = mock_context();
        let flour = mint_flour( &mut ctx);

        
        assert!(flour.id != 0, b"Invalid ID for Flour");
    }

    
}

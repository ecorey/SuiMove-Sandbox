// flour_test.move
script {
    
    use fp::flour::{Flour, mint_flour};
    use sui::tx_context::mock_context;

    fun test_mint_flour() {
        let ctx = mock_context();
        let flour = mint_flour(&mut ctx);

        // Assertions
        assert!(flour.id != 0, b"Invalid ID for Flour");
    }
}

module fp::baking_test {

    use sui::test_scenario;
    use sui::object::{Self, UID};
    use sui::tx_context::{Self, TxContext};
    use fp::flour::{Self, Flour, create_flour};
    use fp::salt::{Self, Salt, create_salt};
    use fp::yeast::{Self, Yeast, create_yeast};
    use fp::dough::{Self, Dough, create_dough, combine};
    use fp::bread::{Self, Bread, create_bread, bake, transfer_bread};

    #[test]
    fun test_baking_process() {
        let admin = @0x123;
        let baker = @0x456;

        // Begin test scenario
        let scenario_val = test_scenario::begin(admin);
        let scenario = &mut scenario_val;

        // Create flour, salt, and yeast
        test_scenario::next_tx(scenario, baker);
        {
            let flour = create_flour(test_scenario::ctx(scenario));
            let salt = create_salt(test_scenario::ctx(scenario));
            let yeast = create_yeast(test_scenario::ctx(scenario));

            // check that flour, salt, and yeast are created
        };

        // Combine ingredients to create dough
        test_scenario::next_tx(scenario, baker);
        {
            let flour = create_flour(test_scenario::ctx(scenario));
            let salt = create_salt(test_scenario::ctx(scenario));
            let yeast = create_yeast(test_scenario::ctx(scenario));

            let dough = combine(&flour, &salt, &yeast, test_scenario::ctx(scenario));

            // check that dough is created
            
        };

        // Bake dough to create bread
        test_scenario::next_tx(scenario, baker);
        {

            let flour = create_flour(test_scenario::ctx(scenario));
            let salt = create_salt(test_scenario::ctx(scenario));
            let yeast = create_yeast(test_scenario::ctx(scenario));

            let dough = combine(&flour, &salt, &yeast, test_scenario::ctx(scenario));

            let bread = bake(&mut dough, test_scenario::ctx(scenario));

            // Consume by transfering Bread object
            transfer_bread(bread, @0x123);
            
        };

        // End test scenario
        test_scenario::end(scenario_val);
    }
}

module testing::baking_testing {
    use sui::test_scenario;
    use sui::tx_context::{Self, TxContext};
    use sui::object::UID;
    use fp::flour::{Flour, create_flour, delete_flour};
    use fp::salt::{Salt, create_salt, delete_salt};
    use fp::yeast::{Yeast, create_yeast, delete_yeast};
    use fp::dough::{Dough, create_dough, combine, delete_dough};
    use fp::bread::{Bread, create_bread, bake};

    #[test]
    fun test_baking_process() {
        let admin = @0x123;
        let baker = @0x456;

        // Start test scenario
        let scenario_val = test_scenario::begin(admin);
        let scenario = &mut scenario_val;

        // tx 1: Create flour, salt, and yeast
        test_scenario::next_tx(scenario, baker);
        {
            let flour = create_flour(test_scenario::ctx(scenario));
            let salt = create_salt(test_scenario::ctx(scenario));
            let yeast = create_yeast(test_scenario::ctx(scenario));

            // Ensure objects are created
            assert!(flour.id != UID::ZERO, 1);
            assert!(salt.id != UID::ZERO, 1);
            assert!(yeast.id != UID::ZERO, 1);
        };

        // tx 2: Combine flour, salt, and yeast to create dough
        test_scenario::next_tx(scenario, baker);
        {
            let flour = test_scenario::take_from_sender<Flour>(scenario);
            let salt = test_scenario::take_from_sender<Salt>(scenario);
            let yeast = test_scenario::take_from_sender<Yeast>(scenario);

            let dough = combine(flour, salt, yeast, test_scenario::ctx(scenario));

            // Ensure dough is created
            assert!(dough.id != UID::ZERO, 1);
        };

        // tx 3: Bake dough into bread
        test_scenario::next_tx(scenario, baker);
        {
            let dough = test_scenario::take_from_sender<Dough>(scenario);
            let bread = bake(dough, test_scenario::ctx(scenario));

            // Ensure bread is created
            assert!(bread.id != UID::ZERO, 1);
        };

        test_scenario::end(scenario_val);
    }
}

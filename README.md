# Final Sui Move project


**front end integration:**
https://kit.suiet.app/docs/QuickStart

**Display Library:**
https://docs.sui.io/standards/display

**Project Overview:**

*Concept:* Users can purchase three separate objects - flour, salt, and yeast - and combine them to create a bread NFT.

*Mechanics:* Combining the three ingredients requires an additional payment in Sui, representing water.

---

---

A. Creating Base NFTs
- Separate NFTs: Implement smart contracts in Move to create NFTs for flour, salt, and yeast. Each NFT should have its unique properties and image URLs.
- Storefront: Design a storefront on the Sui blockchain where users can purchase these NFTs.

---

B. Combination Mechanism
- Combination Function: Develop a smart contract function allowing users to combine the three NFTs (flour, salt, yeast).
- Sui Payment: Incorporate a feature where combining the ingredients requires a Sui payment, symbolizing the addition of water.
- Bread NFT Creation: Upon successful combination and payment, generate a new bread NFT with its unique attributes and image URL.

---

C. NFT Display Update
- Use of Display Library: Utilize the Display Library to reflect the transformation of the individual ingredients into the bread NFT on the user interface.

---

D. Testing and Deployment
- Testing: Rigorously test the smart contracts and the NFT combining mechanism.
- Deployment: Deploy the contracts to the Sui blockchain, ensuring smooth operation and integration.
/*
Assessment Requirements
1. Create a variable that can hold a number of NFT's. What type of variable might this be?
2. Create an object inside your mintNFT function that will hold the metadata for your NFTs. 
   The metadata values will be passed to the function as parameters. When the NFT is ready, 
   you will store it in the variable you created in step 1
3. Your listNFTs() function will print all of your NFTs metadata to the console (i.e. console.log("Name: " + someNFT.name))
4. For good measure, getTotalSupply() should return the number of NFT's you have created
*/

// create a variable to hold your NFT's
const NFTStore = []
// this function will take in some values as parameters, create an
// NFT object using the parameters passed to it for its metadata, 
// and store it in the variable above.
function mintNFT (_name , _race , _age , _gender) {

    const nft = {
        "name" : _name,
        "race" :_race,
        "age" : _race,
        "gender" : _gender
    }
    NFTStore.push(nft);
    console.log(_name +" Minted | ID -> "+ NFTStore.length);
}

// create a "loop" that will go through an "array" of NFT's
// and print their metadata with console.log()
function listNFTs () {
   console.log("\nlisting all minted nfts till now \n")

   for(let i = 0 ;i<NFTStore.length;i++)
   {
       console.log("NFT id -> "+(i+1))
       console.log(NFTStore[i])
       console.log("\n")
   }


   console.log("These are all MINTED NFTS till now !!\n")


}

// print the total number of NFTs we have minted to the console
function getTotalSupply() {
   console.log("Total number supplied NFTs are " + NFTStore.length)
}

// call your functions below this line
mintNFT("soumya","indian",19,"Male")
mintNFT("pritimohan","indian",20,"male")
listNFTs()
getTotalSupply()

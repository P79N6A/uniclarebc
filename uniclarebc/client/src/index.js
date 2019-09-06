"use strict";

const user = require("./user.js");
const college = require("./College.js");
const gdt = require("./gdt.js");
const insurance = require("./insurance.js");
const dealer = require("./dealer.js")
const wallet_store = require("./common/create_wallet.js");

module.exports = function(app) {



app.post("/enroll_user",async (req,res)=>{
    user.enrollUser(req,res);
})

app.post("/enrollStudentToCollege",async(req,res)=>{
    
   let wallet_data = await wallet_store.store_wallet(req);
   
   if(wallet_data==-1)
   {
       res.json({status:"false","data":"",msg:"Error in user certificates or private key"})
       return;
   }
        college.enrollStudentToCollege(req,res,wallet_data);
});

app.get("/getAllStudents",async(req,res)=>{
    let wallet_data = await wallet_store.store_wallet(req);
   if(wallet_data==-1)
   {
       res.json({status:"false","data":"",msg:"Error in user certificates or private key"})
       return;
   }
        college.getAllStudents(req,res,wallet_data);
   
})

app.post("/searchStudent",async(req,res)=>{
    let wallet_data = await wallet_store.store_wallet(req);
   if(wallet_data==-1)
   {
       res.json({status:"false","data":"",msg:"Error in user certificates or private key"})
       return;
   }
      college.searchStudent(req,res,wallet_data);
});

app.post("/issueDegree",async(req,res)=>{
    let wallet_data = await wallet_store.store_wallet(req);
   if(wallet_data==-1)
   {
       res.json({status:"false","data":"",msg:"Error in user certificates or private key"})
       return;
   }
   college.issueDegree(req,res,wallet_data)
})

app.post("/add_vehicle_number",async(req,res)=>{
    let wallet_data = await wallet_store.store_wallet(req);
   if(wallet_data==-1)
   {
       res.json({status:"false","data":"",msg:"Error in user certificates or private key"})
       return;
   }

   gdt.addVehicleNumber(req,res,wallet_data);

})

app.post("/add_vehicle_policy",async(req,res)=>{
    let wallet_data = await wallet_store.store_wallet(req);
   if(wallet_data==-1)
   {
       res.json({status:"false","data":"",msg:"Error in user certificates or private key"})
       return;
   }

   insurance.addVehiclePolicy(req,res,wallet_data);
});

app.get("/get_vehicle_history",async(req,res)=>{
    let wallet_data = await wallet_store.store_wallet(req);
   if(wallet_data==-1)
   {
       res.json({status:"false","data":"",msg:"Error in user certificates or private key"})
       return;
   }

   manufacturer.traveseHistory(req,res,wallet_data);
})


app.post("/request_for_plate_number",async(req,res)=>{
    let wallet_data = await wallet_store.store_wallet(req);
   if(wallet_data==-1)
   {
       res.json({status:"false","data":"",msg:"Error in user certificates or private key"})
       return;
   }
   console.log("Request for plate number called");
     dealer.request_for_plate_number(req,res,wallet_data);
})


app.post("/request_for_policy_number",async(req,res)=>{
    let wallet_data = await wallet_store.store_wallet(req);
   if(wallet_data==-1)
   {
       res.json({status:"false","data":"",msg:"Error in user certificates or private key"})
       return;
   }
   dealer.request_for_policy_number(req,res,wallet_data);
})



app.post("/reject_policy_number",async(req,res)=>{
    let wallet_data = await wallet_store.store_wallet(req);
   if(wallet_data==-1)
   {
       res.json({status:"false","data":"",msg:"Error in user certificates or private key"})
       return;
   }
   insurance.rejectNewPolicyRequest(req,res,wallet_data);
})

app.post("/reject_plate_number",async(req,res)=>{
    let wallet_data = await wallet_store.store_wallet(req);
   if(wallet_data==-1)
   {
       res.json({status:"false","data":"",msg:"Error in user certificates or private key"})
       return;
   }
   gdt.rejectNewPlateNumberRequest(req,res,wallet_data);
});


app.get("/get_all_plate_requests",async(req,res)=>{
    let wallet_data = await wallet_store.store_wallet(req);
   if(wallet_data==-1)
   {
       res.json({status:"false","data":"",msg:"Error in user certificates or private key"})
       return;
   }
   gdt.viewAllGdtRequests(req,res,wallet_data);
});


app.get("/get_all_policy_requests",async(req,res)=>{
    let wallet_data = await wallet_store.store_wallet(req);
   if(wallet_data==-1)
   {
       res.json({status:"false","data":"",msg:"Error in user certificates or private key"})
       return;
   }
   insurance.viewInsuranceRequest(req,res,wallet_data);
});



}







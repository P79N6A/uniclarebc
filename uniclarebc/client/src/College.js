const { FileSystemWallet, Gateway } = require('fabric-network')
const fs = require('fs')
const path = require('path')

const ccpPath = './connection.json'
const ccpJSON = fs.readFileSync(ccpPath, 'utf8')
const ccp = JSON.parse(ccpJSON)
const connection = require('./common/connect.js')

module.exports = {
  async enrollStudentToCollege (req, res, wallet_data) {
    try {
      let { studentName, sex,  age, contactNumber,address,studentId } = req.body
      console.log("bodysddsfs",req.body);

      let contract = await connection.get_contract(wallet_data);
      
      let result = await contract.submitTransaction(
        'enrollStudentToCollege',
        studentName,
        sex,
        age,
        contactNumber,
        address,
        studentId,
      )
      console.log('Transaction has been submitted ' + result)
      // await remove_wallet(wallet_data.userName);
      res.json({ status: true, data: '', msg: 'Student Added' })
    } catch (error) {
      console.log('error in user identity')
      res.json({ status: false, data: '', msg: error })
    }
  },

  async getAllStudents (req, res, wallet_data) {
    let contract = await connection.get_contract(wallet_data);
    let result = await contract.evaluateTransaction('getAllStudents');
    result = JSON.parse(result);
    let respData = {};
    let data = result.data;
    if(data.length==0)
    {
      respData.status=true;
      respData.data="Empty";
      res.send(respData);
      return;
    }
    respData.data = await parse_json(result.data);
    respData.status = result.status;
    res.send(respData);
  },

  async searchStudent(req,res,wallet_data)
  {
    let {studentId} = req.body;
    let contract = await connection.get_contract(wallet_data);
    let result = await contract.evaluateTransaction('searchStudent',studentId);
    result = JSON.parse(result);
    let respData = {};
    let data = result.data;
    if(data.length==0)
    {
      respData.status=true;
      respData.data="Empty";
      res.send(respData);
      return;
    }
    respData.data = await parse_json(result.data);
    respData.status = result.status;
    res.send(respData);
  },

  async issueDegree(req,res,wallet_data)
  {
    let {studentId,degreeType,yop} = req.body;
    let contract = await connection.get_contract(wallet_data);
    let result = await contract.submitTransaction('issueDegree',studentId,degreeType,yop);
    console.log(result);
    res.json({status:true,data:"",msg:"Degree issued!"});
  },

 

   

}

async function parse_json(data){

  var arr = new Array();
for(var i=0;i<data.length;i++)
{
  arr[i] = JSON.parse(data[i].value);
}

return arr;

}

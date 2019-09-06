
const query = require("../common/query.js");
const uuidv4 = require('uuid/v4');


module.exports={
    async enrollStudentToCollege(ctx,studentName,sex,age,contactNumber,address,studentId)
    {
           
         
         let studentData = {
            studentId  :studentId,
            studentName:studentName,
            sex        :sex,
            age        :age,
            contactNumber :contactNumber,
            address    :address,
            certificate:[],
            
        }

        await ctx.stub.putState(studentId.toString(),Buffer.from(JSON.stringify(studentData)));
        let returnObj = {status:true,data:{studentId:studentId},"msg":"Student Added"};
        return returnObj; 
    },

    async searchStudent(ctx,studentId)
    {
        let queryString = {};
        queryString.selector = {
            "studentId":studentId
          };
          let allResults = await query.runQuery(ctx,queryString);
          let resultObj = {};
          resultObj.status = "true"
           resultObj.data = allResults;
           resultObj.msg = "";
           console.log(allResults)
          return resultObj;

    },



    async getAllStudents(ctx)
    {
        let queryString = {};
        queryString.selector = {
            "_id": {
                "$gt": null
             }
          };
        let allResults = await query.runQuery(ctx,queryString);
        let resultObj = {};
        resultObj.status = "true"
         resultObj.data = allResults;
         resultObj.msg = "";
         console.log(allResults)
        return resultObj;
    },



    async issueDegree(ctx,studentId,degreeType,yop)
    {
        let degreeId  = uuidv4();
        const studentData = await ctx.stub.getState(studentId); // get the car from chaincode state
        if (!studentData || studentData.length === 0) {
            let errorResult = {};
            errorResult.status=false;
            errorResult.data={};
            errorResult.msg = studentId + " does not exsist!";
            return errorResult;
        }

        try {            
        const data = JSON.parse(studentData.toString());
        let degreeObj = {};
        degreeObj.degreeType = degreeType;
        degreeObj.yop = yop;
        degreeObj.collegeName ="Example college of engineering";
        degreeObj.degreeId = degreeId;

        console.log(degreeObj);

        data.certificate.push(degreeObj);
        console.log(data.certificate);
        
        await ctx.stub.putState(studentId, Buffer.from(JSON.stringify(data)));
        let resultObj = {};
        resultObj.status = true;
        resultObj.data = {};
        resultObj.msg = "Degree issued!";
         return resultObj;

        } catch (error) {
            console.log(error);
        }
        
        
    }
}
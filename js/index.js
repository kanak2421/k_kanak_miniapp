import { fetchGetData } from "./modules/fetchAPI.js";
import CarTypes from "./modules/CarTypes.js";
import CarDetail from "./modules/CarDetail.js";
(() => {
    let vue_vm = new Vue({
        data: {
            message: "Hi Vue!",
            canshow:false,
            miniCarList: [],
            caritem:{"ID":1},
            t:'abc'
        },

        // this is the "mounted" lifecycle hook. Vue is done creating itself, and has attached itself to the "app" div on the page
        mounted: function () {
            console.log("Vue is mounted!");
            //get the car types
             this.getData();        
        },

        // run a method when we change our view (update the DOM with Vue)
        updated: function () {
            console.log('Vue just updated the DOM');
        },

        methods: {
            getData () { // get all data
                fetchGetData(`./includes/index.php`).then(data => {
                    if(data.code){
                       console.log(data);
                       var mydata=data.data;
                       this.miniCarList=mydata;
                       this.caritem=this.miniCarList[0];
                       console.log(this.caritem);
                   }else{
                     console.log("error"); 
                   } 
                }).catch(err => {
                  //  console.log(err);  
                    alert(err); 
                }); 
            },
            changeImage (index) {
                 this.caritem= this.miniCarList[index-1];
                 this.canshow=false;
            },
            changeLogic(){
                this.canshow=true;
                this.t="this is test";
            }
        },
        components: {
             "car-types": CarTypes,
             "car-detail": CarDetail
        }
    }).$mount("#app"); 
})();
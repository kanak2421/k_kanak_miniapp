export default {
    name: "TheCarDetail",
    props:{
        item:{type:Object,default:{}},
        canshow:{default:false},
        t:{type:String,default:''},
    },
    data: function () {
        return {
            myflag: this.canshow,
        }
    },

    template:
        `<div class="flex-wrapper">
          <div class="car-detailleft">
          <p>Price Info</p>
          <h4>{{ item.carprice }}</h4>
          </div>
         <div class="car-detailmiddle"  @click="changeLogic()">
            <h2>{{item!=null?item.Name:''}}
          </h2>
            <img class="car" :src="item!=null?item.ImageUrl:''" >
       
        </div>
        <div class="car-detailright">
            
            {{item!=null?item.Name:''}}
            <h4>{{ item.cardesc }}</h4>
           
           
          
         </div>
      </div>`,
    created: function () {
        console.log("detail:"+this.canshow);
        console.log("t:"+this.t);

    },

    methods: {
        changeLogic() {
            console.log("detail2:"+this.myflag);
            console.log("t:"+this.t);
            this.$emit("change", this.myflag)
        },
    }
}
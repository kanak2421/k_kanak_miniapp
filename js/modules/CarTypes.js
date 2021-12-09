export default{
    name: "CarTypes",
    props:["item", "index"],
    data: function(){
        return {  
        }
    },

    template: 
    `<div @click.prevent="changeImageInfo(item.ID)"><img :src="item.ImageUrl" :alt="item.Name"></div>`,
    created: function(){
    },

    methods:{
        changeImageInfo (index) {
           this.$emit("change", index)
        }     
    }
}

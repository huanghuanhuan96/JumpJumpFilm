<template>
    <div class="tabbaricon">
        <img :src="isfocus?focusImg:nomalImg" alt="">
    </div>
</template>

<script>
export default {
    data(){
        return{

        }
    },
    props:{
        isfocus:false,
        nomalImg:{default:''},
        focusImg:{default:''}
    }
}
</script>
 
<style scoped>
    img{
        width: 30px;
        height:30px;
    }
</style>

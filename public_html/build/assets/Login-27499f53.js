import{v as w,e as d,b as t,u as s,w as l,F as b,o as i,G as h,t as x,f as c,a,c as v,g as u,j as k,n as y,i as V}from"./app-b324b9d6.js";import{A as B}from"./AuthenticationCard-adc89c0b.js";import{_ as C}from"./Checkbox-1bdd3583.js";import{_ as f,a as p}from"./TextInput-5999e3a8.js";import{_ as g}from"./InputLabel-afe6c026.js";import{_ as $}from"./PrimaryButton-5d94ea47.js";import"./_plugin-vue_export-helper-c27b6911.js";const F=a("svg",{fill:"currentColor",class:"icone h-20 w-20 mb-2 text-center inline text-caribbeangreen",viewBox:"0 0 24 24",xmlns:"http://www.w3.org/2000/svg","aria-hidden":"true"},[a("path",{"clip-rule":"evenodd","fill-rule":"evenodd",d:"M11.54 22.351l.07.04.028.016a.76.76 0 00.723 0l.028-.015.071-.041a16.975 16.975 0 001.144-.742 19.58 19.58 0 002.683-2.282c1.944-1.99 3.963-4.98 3.963-8.827a8.25 8.25 0 00-16.5 0c0 3.846 2.02 6.837 3.963 8.827a19.58 19.58 0 002.682 2.282 16.975 16.975 0 001.145.742zM12 13.5a3 3 0 100-6 3 3 0 000 6z"})],-1),N={key:0,class:"mb-4 font-medium text-sm text-green-600"},S=["onSubmit"],q={class:"mt-4"},z={class:"block mt-4"},L={class:"flex items-center"},M=a("span",{class:"ml-2 text-sm text-gray-600"},"Remember me",-1),P={class:"flex items-center justify-end mt-4"},T={__name:"Login",props:{canResetPassword:Boolean,status:String},setup(n){const e=w({email:"",password:"",remember:!1}),_=()=>{e.transform(m=>({...m,remember:e.remember?"on":""})).post(route("login"),{onFinish:()=>e.reset("password")})};return(m,o)=>(i(),d(b,null,[t(s(h),{title:"Log in"}),t(B,null,{logo:l(()=>[F]),default:l(()=>[n.status?(i(),d("div",N,x(n.status),1)):c("",!0),a("form",{onSubmit:V(_,["prevent"])},[a("div",null,[t(g,{for:"email",value:"Email"}),t(f,{id:"email",modelValue:s(e).email,"onUpdate:modelValue":o[0]||(o[0]=r=>s(e).email=r),type:"email",class:"mt-1 block w-full",required:"",autofocus:"",autocomplete:"username"},null,8,["modelValue"]),t(p,{class:"mt-2",message:s(e).errors.email},null,8,["message"])]),a("div",q,[t(g,{for:"password",value:"Password"}),t(f,{id:"password",modelValue:s(e).password,"onUpdate:modelValue":o[1]||(o[1]=r=>s(e).password=r),type:"password",class:"mt-1 block w-full",required:"",autocomplete:"current-password"},null,8,["modelValue"]),t(p,{class:"mt-2",message:s(e).errors.password},null,8,["message"])]),a("div",z,[a("label",L,[t(C,{checked:s(e).remember,"onUpdate:checked":o[2]||(o[2]=r=>s(e).remember=r),name:"remember"},null,8,["checked"]),M])]),a("div",P,[n.canResetPassword?(i(),v(s(k),{key:0,href:m.route("password.request"),class:"underline text-sm text-gray-600 hover:text-gray-900 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500"},{default:l(()=>[u(" Forgot your password? ")]),_:1},8,["href"])):c("",!0),t($,{class:y(["ml-4",{"opacity-25":s(e).processing}]),disabled:s(e).processing},{default:l(()=>[u(" Log in ")]),_:1},8,["class","disabled"])])],40,S)]),_:1})],64))}};export{T as default};

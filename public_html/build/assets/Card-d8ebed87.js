import{o as n,e as r,a as t,t as a,i as x,u as c,g as u,F as g,h as w,n as v,b as m,w as b,j as f}from"./app-b324b9d6.js";import{u as p}from"./activityStore-c7832dfe.js";const y={class:"relative shadow-lg shadow-slate-700/50 min-w-[225px] h-[500px] ml-6 mr-3 rounded-xl bg-[#4B8798] flex flex-col",width:"225"},_={class:"relative"},k={class:"text-xs py-1 px-2 absolute left-4 top-4 rounded-lg text-center font-bold bg-slate-50 text-jellybeanblue"},C=t("svg",{fill:"none",class:"w-4 h-4 text-gargoylegas",stroke:"currentColor","stroke-width":"2",viewBox:"0 0 24 24",xmlns:"http://www.w3.org/2000/svg","aria-hidden":"true"},[t("path",{"stroke-linecap":"round","stroke-linejoin":"round",d:"M17.593 3.322c1.1.128 1.907 1.077 1.907 2.185V21L12 17.25 4.5 21V5.507c0-1.108.806-2.057 1.907-2.185a48.507 48.507 0 0111.186 0z"})],-1),z=[C],B=t("svg",{fill:"none",class:"w-4 h-4",stroke:"currentColor","stroke-width":"2",viewBox:"0 0 24 24",xmlns:"http://www.w3.org/2000/svg","aria-hidden":"true"},[t("path",{"stroke-linecap":"round","stroke-linejoin":"round",d:"M17.593 3.322c1.1.128 1.907 1.077 1.907 2.185V21L12 17.25 4.5 21V5.507c0-1.108.806-2.057 1.907-2.185a48.507 48.507 0 0111.186 0z"})],-1),M=[B],j={class:"py-1 px-2 font-bold absolute rounded-lg text-center bg-slate-50 text-jellybeanblue bottom-4 text-xs right-4"},V=["src"],$={class:"px-5 mt-5"},L={class:"font-bold text-md mb-2 text-slate-50"},I={class:"text-caribbeangreen mb-2 flex items-center space-x-1"},N=t("svg",{fill:"currentColor",class:"icone min-h-[24px] min-w-[24px] h-6 w-6 inline text-caribbeangreen",viewBox:"0 0 24 24",xmlns:"http://www.w3.org/2000/svg","aria-hidden":"true"},[t("path",{"clip-rule":"evenodd","fill-rule":"evenodd",d:"M11.54 22.351l.07.04.028.016a.76.76 0 00.723 0l.028-.015.071-.041a16.975 16.975 0 001.144-.742 19.58 19.58 0 002.683-2.282c1.944-1.99 3.963-4.98 3.963-8.827a8.25 8.25 0 00-16.5 0c0 3.846 2.02 6.837 3.963 8.827a19.58 19.58 0 002.682 2.282 16.975 16.975 0 001.145.742zM12 13.5a3 3 0 100-6 3 3 0 000 6z"})],-1),S={class:"text-base inline"},T={class:"text-slate-50 text-base mb-2"},A=t("svg",{fill:"currentColor",class:"text-slate-50 inline h-6 w-6",viewBox:"0 0 24 24",xmlns:"http://www.w3.org/2000/svg","aria-hidden":"true"},[t("path",{"clip-rule":"evenodd","fill-rule":"evenodd",d:"M7.5 6a4.5 4.5 0 119 0 4.5 4.5 0 01-9 0zM3.751 20.105a8.25 8.25 0 0116.498 0 .75.75 0 01-.437.695A18.683 18.683 0 0112 22.5c-2.786 0-5.433-.608-7.812-1.7a.75.75 0 01-.437-.695z"})],-1),F={class:"pr-2"},O=t("path",{"clip-rule":"evenodd","fill-rule":"evenodd",d:"M10.788 3.21c.448-1.077 1.976-1.077 2.424 0l2.082 5.007 5.404.433c1.164.093 1.636 1.545.749 2.305l-4.117 3.527 1.257 5.273c.271 1.136-.964 2.033-1.96 1.425L12 18.354 7.373 21.18c-.996.608-2.231-.29-1.96-1.425l1.257-5.273-4.117-3.527c-.887-.76-.415-2.212.749-2.305l5.404-.433 2.082-5.006z"},null,-1),D=[O],E={class:"text-slate-50 text-base"},P=t("svg",{fill:"currentColor",class:"icone h-6 w-6 inline",viewBox:"0 0 24 24",xmlns:"http://www.w3.org/2000/svg","aria-hidden":"true"},[t("path",{d:"M4.5 6.375a4.125 4.125 0 118.25 0 4.125 4.125 0 01-8.25 0zM14.25 8.625a3.375 3.375 0 116.75 0 3.375 3.375 0 01-6.75 0zM1.5 19.125a7.125 7.125 0 0114.25 0v.003l-.001.119a.75.75 0 01-.363.63 13.067 13.067 0 01-6.761 1.873c-2.472 0-4.786-.684-6.76-1.873a.75.75 0 01-.364-.63l-.001-.122zM17.25 19.128l-.001.144a2.25 2.25 0 01-.233.96 10.088 10.088 0 005.06-1.01.75.75 0 00.42-.643 4.875 4.875 0 00-6.957-4.611 8.586 8.586 0 011.71 5.157v.003z"})],-1),q={class:""},G={class:"w-28 mx-auto my-auto"},Q={__name:"Card",props:{activity:Object,img:String},setup(e){const d=p(),h=(o,s)=>{if(o.length>s){const l=o.substring(0,20),i=l.lastIndexOf(" ");return l.substring(0,i)+"..."}else return o};return(o,s)=>(n(),r("div",y,[t("div",_,[t("div",k,a(e.activity.category.name),1),e.activity.bookmarked?(n(),r("button",{key:0,href:"",onClick:s[0]||(s[0]=x(l=>c(d).deleteBookmark(e.activity),["prevent"])),class:"rounded-full bg-jellybeanblue text-center absolute p-2 right-4 top-4 text-slate-800"},z)):(n(),r("button",{key:1,onClick:s[1]||(s[1]=x(l=>c(d).addToBookmarks(e.activity),["prevent"])),href:"",class:"rounded-full bg-slate-50 text-center absolute p-2 right-4 top-4 text-slate-800"},M)),t("div",j,a(c(d).dateTime(e.activity)),1),t("img",{class:"w-full rounded-t-xl object-cover",style:{height:"230px !important"},src:e.img,alt:"Cover Photo"},null,8,V)]),t("div",$,[t("h3",L,a(h(e.activity.title,20)),1),t("div",I,[N,t("p",S,a(`${e.activity.city}, ${e.activity.distance}km`),1)]),t("p",T,[A,u(),t("span",F,a(h(e.activity.user.pseudo,17)),1),t("div",null,[(n(),r(g,null,w(5,(l,i)=>t("svg",{fill:"currentColor",key:i,class:v([i<e.activity.user.rating?"text-gargoylegas":"text-slate-50","inline align-text-top h-4 w-4"]),viewBox:"0 0 24 24",xmlns:"http://www.w3.org/2000/svg","aria-hidden":"true"},D,2)),64))])]),t("p",E,[P,u(),t("span",q,a(e.activity.nbr_participants+"/"+e.activity.max_participants+" participants"),1)])]),t("div",G,[m(c(f),{class:v(["","bg-caribbeangreen w-full text-slate-50 font-medium rounded-xl py-1 px-6 mx-auto"]),href:`/infos/${e.activity.id}`,method:"get",as:"button"},{default:b(()=>[u(" Infos ")]),_:1},8,["href"])])]))}};export{Q as _};
import{e as a,b as i,u as o,a as t,c as d,w as r,F as u,f,o as e,G as h,g as l,j as n}from"./app-b324b9d6.js";const m={class:"relative flex flex-col justify-center min-h-screen bg-gradient-to-b from-moonstone to-[#539ABB] selection:bg-red-500 selection:text-white h-full text-slate-50"},g=t("svg",{fill:"currentColor",class:"mx-auto icone h-8 w-8 mb-2 text-center inline text-caribbeangreen",viewBox:"0 0 24 24",xmlns:"http://www.w3.org/2000/svg","aria-hidden":"true"},[t("path",{"clip-rule":"evenodd","fill-rule":"evenodd",d:"M11.54 22.351l.07.04.028.016a.76.76 0 00.723 0l.028-.015.071-.041a16.975 16.975 0 001.144-.742 19.58 19.58 0 002.683-2.282c1.944-1.99 3.963-4.98 3.963-8.827a8.25 8.25 0 00-16.5 0c0 3.846 2.02 6.837 3.963 8.827a19.58 19.58 0 002.682 2.282 16.975 16.975 0 001.145.742zM12 13.5a3 3 0 100-6 3 3 0 000 6z"})],-1),x=t("h1",{class:"text-slate-50 text-center text-4xl font-bold mb-2"},"Together",-1),_={key:0,class:"p-3 text-center"},b=t("div",{class:"inline semibold"},"-",-1),y={__name:"Welcome",props:{canLogin:Boolean,canRegister:Boolean,laravelVersion:String,phpVersion:String},setup(c){return(s,v)=>(e(),a(u,null,[i(o(h),{title:"Welcome"}),t("div",m,[g,x,c.canLogin?(e(),a("div",_,[s.$page.props.auth.user?(e(),d(o(n),{key:0,href:s.route("dashboard"),class:"font-semibold text-slate-50 focus:text-crystal hover:text-crystal focus:rounded-sm"},{default:r(()=>[l("accès Dashboard")]),_:1},8,["href"])):(e(),a(u,{key:1},[i(o(n),{href:s.route("login"),class:"font-semibold mr-4 focus:text-crystal hover:text-crystal"},{default:r(()=>[l("Log in")]),_:1},8,["href"]),b,c.canRegister?(e(),d(o(n),{key:0,href:s.route("register"),class:"ml-4 font-semibold focus:text-crystal hover:text-crystal"},{default:r(()=>[l("Register")]),_:1},8,["href"])):f("",!0)],64))])):f("",!0)])],64))}};export{y as default};
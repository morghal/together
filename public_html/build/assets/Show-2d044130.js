import{_ as c}from"./AppLayout-1e1cf448.js";import p from"./DeleteUserForm-ed16746d.js";import l from"./LogoutOtherBrowserSessionsForm-f408c4d1.js";import{S as e}from"./SectionBorder-01870aa7.js";import f from"./TwoFactorAuthenticationForm-ca815965.js";import _ from"./UpdatePasswordForm-23b434f8.js";import u from"./UpdateProfileInformationForm-758f845f.js";import{_ as d}from"./Header-75ee48ff.js";import{_ as h}from"./FooterNav-4db9fbf3.js";import{c as $,w as n,o as s,b as t,a as i,e as r,f as a,F as g}from"./app-b324b9d6.js";import"./DialogModal-6e5bfcda.js";import"./SectionTitle-b4a498ee.js";import"./_plugin-vue_export-helper-c27b6911.js";import"./DangerButton-676f4f66.js";import"./TextInput-5999e3a8.js";import"./SecondaryButton-13bf0c72.js";import"./ActionMessage-d680d0a9.js";import"./PrimaryButton-5d94ea47.js";import"./InputLabel-afe6c026.js";import"./FormSection-e83cce5b.js";const w=i("h2",{class:"font-semibold text-xl text-gray-800 leading-tight"}," Profile ",-1),k={class:"max-w-7xl mx-auto pb-10 sm:px-6 lg:px-8"},x={key:0},y={key:1},B={key:2},K={__name:"Show",props:{confirmsTwoFactorAuthentication:Boolean,sessions:Array},setup(m){return(o,F)=>(s(),$(c,{title:"Profile",class:""},{header:n(()=>[w]),default:n(()=>[t(d,{hide:!0}),i("div",null,[i("div",k,[o.$page.props.jetstream.canUpdateProfileInformation?(s(),r("div",x,[t(u,{user:o.$page.props.auth.user},null,8,["user"]),t(e)])):a("",!0),o.$page.props.jetstream.canUpdatePassword?(s(),r("div",y,[t(_,{class:"mt-10 sm:mt-0"}),t(e)])):a("",!0),o.$page.props.jetstream.canManageTwoFactorAuthentication?(s(),r("div",B,[t(f,{"requires-confirmation":m.confirmsTwoFactorAuthentication,class:"mt-10 sm:mt-0"},null,8,["requires-confirmation"]),t(e)])):a("",!0),t(l,{sessions:m.sessions,class:"mt-10 sm:mt-0"},null,8,["sessions"]),o.$page.props.jetstream.hasAccountDeletionFeatures?(s(),r(g,{key:3},[t(e),t(p,{class:"mt-10 sm:mt-0"})],64)):a("",!0)])]),t(h,{class:"fixed bottom-0"})]),_:1}))}};export{K as default};
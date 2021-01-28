<#import "parts/common.ftl" as c>
<#import "parts/logreg.ftl" as l>
<@c.page>
    ${message!""}
    <div>Registration form</div>
    <@l.login "/registration"/>
</@c.page>
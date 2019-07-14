<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>
Add New User
    ${message?ifExists}
<@l.login "/registration" />
</@c.page>
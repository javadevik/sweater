<#macro login path>
    <form action="${path}" method="post">
        <div><label>Username:<input type="text" name="username" placeholder="Username"></label></div>
        <div><label>Password:<input type="password" name="password" placeholder="Password"></label></div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <div><input type="submit" value="Sign In"></div>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <input type="submit" value="Sign Out">
    </form>
</#macro>
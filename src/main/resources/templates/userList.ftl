<#import "parts/common.ftl" as c>
<@c.page>
    User List:
    <table>
        <thead>
            <th>Username</th>
            <th>Roles</th>
            <th></th>
        </thead>
        <tbody>
            <#list users as user>
                <tr>
                    <td>${user.getUsername()}</td>
                    <td><#list user.getRoles() as role>${role}<#sep>, </#list></td>
                    <td><a href="/user/${user.id}">EDIT</a></td>
                </tr>
            </#list>
        </tbody>
    </table>
</@c.page>
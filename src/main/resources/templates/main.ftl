<#import "parts/common.ftl" as c>
<#import "parts/logreg.ftl" as l>

<@c.page>
        <div><@l.logout/></div>
        <span><a href="/user">User List</a></span>
        <form method="post" enctype="multipart/form-data">
            <input type="text" name="text" placeholder="Type message">
            <input type="text" name="tag" placeholder="Tag">
            <input type="file" name="image">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button type="submit">Add</button>
        </form>
        <div>Message list:</div>
        <form method="get" action="/main">
            <input type="tag" name="filter" value="${filter!""}" placeholder="Find by tag">
            <button type="submit">Find</button>
        </form>
        <#list page.content as message>
            <div>
                <b>${message.id}</b>
                <span>${message.text}</span>
                <i>${message.tag}</i>
                <strong>${message.authorName}</strong>
                <div>
                    <#if message.file??>
                        <img src="data:image/jpg;base64, ${message.getFile()}"/>
                    </#if>
                </div>
            </div>
        </#list>
</@c.page>
<#import "parts/common.ftl" as c>
    <#import "parts/login.ftl" as l>
<@c.page>
<div>
    <@l.logout />
    <a href="/user">User list</a>
</div>
<div>
    <form method="post">
        <input type="text" name="text" placeholder="Введите сообщение" />
        <input type="text" name="tag" placeholder="Тэг" />
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type="submit">Добавить</button>
    </form>
</div>
<div></div>
<h2>Список сообщений</h2>
<form method="get" action="/main">
    <input type="text" name="filter" value="${filter?ifExists}">
    <button type="submit">Найти</button>
</form>
<table>
    <tr>
        <th>ID</th>
        <th>Текст сообщения</th>
        <th>Тэг</th>
        <th>Автор</th>
    </tr>
    <#list messages as message>
        <tr>
            <td>${message.id}</td>
            <td>${message.text}</td>
            <td>${message.tag}</td>
            <td>${message.authorName()}</td>
        </tr>
        <#else>
        No message
    </#list>
</table>
</@c.page>
<#include "runtime://template/screen-macro/DefaultScreenMacros.html.ftl"/>

<#macro "section-pagination">
    <#assign listName = .node["@listName"]>

    <#assign curPageIndex = context[listName + "PageIndex"]>
    <#assign curPageMaxIndex = context[listName + "PageMaxIndex"]>
    <#assign prevPageIndexMin = curPageIndex - 3><#if (prevPageIndexMin < 0)><#assign prevPageIndexMin = 0></#if>
    <#assign prevPageIndexMax = curPageIndex - 1><#assign nextPageIndexMin = curPageIndex + 1>
    <#assign nextPageIndexMax = curPageIndex + 3><#if (nextPageIndexMax > curPageMaxIndex)><#assign nextPageIndexMax = curPageMaxIndex></#if>
    <nav class="d-flex justify-content-center wow fadeIn">
        <ul class="pagination pg-blue">
            <#if (curPageIndex > 0)>
                <#assign previousUrlInfo = sri.getScreenUrlInstance().cloneUrlInstance().addParameter("pageIndex", (curPageIndex - 1))>
                <li class="page-item">
                    <a class="page-link" href="${previousUrlInfo.getUrlWithParams()}" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                        <span class="sr-only">Previous</span>
                    </a>
                </li>
            <#else>
                <li class="page-item disabled"><a class="page-link" href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span><span class="sr-only">Previous</span></a></li>
            </#if>

            <#list 0..curPageMaxIndex as pageIndex>
                <#assign pageUrlInfo = sri.getScreenUrlInstance().cloneUrlInstance().addParameter("pageIndex", pageIndex)>
                <li class="page-item <#if curPageIndex==pageIndex>active</#if>">
                    <a class="page-link" href="${pageUrlInfo.getUrlWithParams()}">${pageIndex +1}
                        <#if curPageIndex==pageIndex><span class="sr-only">(current)</span></#if>
                    </a>
                </li>
            </#list>

            <#if (curPageIndex < curPageMaxIndex)>
                <#assign nextUrlInfo = sri.getScreenUrlInstance().cloneUrlInstance().addParameter("pageIndex", curPageIndex + 1)>
                <li class="page-item">
                    <a class="page-link" href="${nextUrlInfo.getUrlWithParams()}" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                        <span class="sr-only">Next</span>
                    </a>
                </li>
            <#else>
                <li class="page-item"><a class="page-link disabled" href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span><span class="sr-only">Next</span></a></li>
            </#if>
        </ul>
    </nav>
</#macro>
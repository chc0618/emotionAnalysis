<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/app/crawl/list.js"></script>
<style type="text/css">
    #map {
        height: 350px;
        margin: 0 20px 20px 20px;
    }
</style>
<div class="m-b-md">
  <form class="form-inline" role="form" id="searchForm"
        name="searchForm">
      <div class="form-group">
          <label class="control-label"> <span
                  class="h4 font-thin v-middle">爬取目标URL:</span></label> <input
              class="input-medium ui-autocomplete-input" id="name"
              name="meetupFormMap.name">
      </div>
      <div class="form-group">
          <label class="control-label"> <span
                  class="h4 font-thin v-middle">爬取标签:</span></label> <input
              class="input-medium ui-autocomplete-input" id="country"
              name="meetupFormMap.country" placeholder="多个标签用分号gekai">
      </div>
      <div class="form-group">
          <label class="control-label"> <span
                  class="h4 font-thin v-middle">爬取深度:</span></label> <input
              class="input-medium ui-autocomplete-input" id="region"
              name="meetupFormMap.region">
      </div>
    <a href="javascript:void(0)" class="btn btn-info" id="search">开始爬取</a>
  </form>
</div>

<header class="panel-heading">
    <div class="doc-buttons">
    	爬取结果：
        <c:forEach items="${res}" var="key">
            ${key.description}
        </c:forEach>
    </div>
</header>

<div class="table-responsive">
    <div id="paging" class="pagclass"></div>
</div>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>  
    <title>AngularJS $http Example</title>  
    <style>
      .username.ng-valid {
          background-color: lightgreen;
      }
      .username.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .username.ng-dirty.ng-invalid-minlength {
          background-color: yellow;
      }

      .email.ng-valid {
          background-color: lightgreen;
      }
      .email.ng-dirty.ng-invalid-required {
          background-color: red;
      }
      .email.ng-dirty.ng-invalid-email {
          background-color: yellow;
      }

    </style>
     <!--link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"-->
      <link data-require="bootstrap-css@2.3.2" data-semver="2.3.2" rel="stylesheet" href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" />
      <script data-require="angular.js@1.1.5" data-semver="1.1.5" src="http://code.angularjs.org/1.1.5/angular.min.js"></script>
      <script data-require="angular-ui-bootstrap@0.3.0" data-semver="0.3.0" src="http://angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.3.0.min.js"></script>
     <!--link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link-->
  </head>
  <body ng-app="myApp" class="ng-cloak">
      <div class="generic-container"  ng-controller="TodoController">
          <div class="panel panel-default">

              <div class="formcontainer">
                  <form ng-submit="submit()" name="myForm" class="form-horizontal">
                      <input type="hidden" ng-model="user.id" />
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="file">Имя</label>
                              <div class="col-md-7">
                                  <input type="text" ng-model="user.name" name="uname" class="username form-control input-sm" required/>
                              </div>
                          </div>
                      </div>

                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="file">Возраст</label>
                              <div>
                                  <input type="text" ng-model="user.age" class="form-control input-sm" />
                              </div>
                          </div>
                      </div>
                      <div class="row">
                          <div class="form-group col-md-12">
                              <label class="col-md-2 control-lable" for="file">Admin</label>
                              <div >
                                  <input type="email" ng-model="user.admin" name="email" class="email form-control input-sm"  required/>

                              </div>
                          </div>
                      </div>

                      <div class="row">
                          <div class="form-actions floatRight">
                              <input type="submit"  value="{{!ctrl.user.id ? 'Add' : 'Update'}}" class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid">
                              <button type="button" ng-click="ctrl.reset()" class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset Form</button>
                          </div>
                      </div>
                  </form>
              </div>
          </div>
          <div class="panel panel-default">
                <!-- Default panel contents -->
              <div class="panel-heading"><span class="lead">Список пользователей </span></div>
              <div class="tablecontainer" >
                  <table class="table table-hover">
                      <thead>
                          <tr>
                              <th>Id</th>
                              <th>Имя</th>
                              <th>Возраст</th>
                              <th>Админ</th>
                              <th width="20%">Дата</th>
                          </tr>
                      </thead>
                      <tbody>
                          <tr ng-repeat="u in filteredTodos">
                              <td><span ng-bind="u.id"></span></td>
                              <td><span ng-bind="u.name"></span></td>
                              <td><span ng-bind="u.age"></span></td>
                              <td><span ng-bind="u.admin"></span></td>
                              <td><span ng-bind="u.createdDate"></span></td>

                              <td width="250px">
                              <button  width="150px" type="button" ng-click="edit(u.id)" class="btn btn-success custom-width">Редактировать</button>
                                  <button  type="button" ng-click="remove(u.id)" class="btn btn-danger custom-width">Удалить</button>
                              </td>
                          </tr>
                      </tbody>
                  </table>
              </div>
          </div>



          <div data-pagination="" data-num-pages="numPages()"
               data-current-page="currentPage" data-max-size="maxSize"
               data-boundary-links="true"></div>
          </div>


      

      <script src="<c:url value='/static/js/app.js' />"></script>
      <script src="<c:url value='/static/js/service/user_service.js' />"></script>
      <script src="<c:url value='/static/js/controller/app_pagination.js' />"></script>



  </body>
</html>
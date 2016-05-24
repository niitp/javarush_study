/**
 * Created by roman on 23.05.2016.
 */
App.controller('TodoController',  ['$scope', 'UserService', function($scope, UserService) {


    self.users=[];
    self.fetchAllUsers = function(){
        UserService.fetchAllUsers()
            .then(
                function(d) {
                    self.users = d;
                    $scope.makeTodos();
                    $scope.numPages();
                    $scope.firstWath();
                    console.log("Recalculate");
                },
                function(errResponse){
                    console.error('Error while fetching Currencies');
                }
            );
    };

    self.fetchAllUsers();

    $scope.filteredTodos = []
        , $scope.currentPage = 1
        , $scope.numPerPage = 10
        , $scope.maxSize = 5;

    $scope.myApp = [];
    $scope.makeTodos = function () {

        for (i = 1; i <=  self.users.length; i++) {
            console.log(i);
            $scope.myApp.push(self.users[i-1]);
        }
    };


    $scope.numPages = function () {
        return Math.ceil($scope.myApp.length / $scope.numPerPage);
    };

    $scope.firstWath = function() {
        $scope.$watch('currentPage + numPerPage', function () {
            var begin = (($scope.currentPage - 1) * $scope.numPerPage)
                , end = begin + $scope.numPerPage;

            $scope.filteredTodos = $scope.myApp.slice(begin, end);
        });
    }
    $scope.firstWath();


    $scope.edit = function(id){
        console.log('id to be edited', id);
        for(var i = 0; i < self.users.length; i++){
            if(self.users[i].id == id) {
                self.user = angular.copy(self.users[i]);
                break;
            }
        }
    };

    $scope.remove = function(id){
        console.log('id to be deleted', id);
         $scope.deleteUser(id);
    };


    $scope.reset = function(){
        self.user={id:null,username:'',address:'',email:''};
        $scope.myForm.$setPristine(); //reset Form
    };


    $scope.deleteUser = function(id){
        UserService.deleteUser(id)
            .then( function ( response ) {
                    $scope.myApp.length = 0;
                    console.log("delete ok!");
                    self.fetchAllUsers();
                },
                function(errResponse){
                    console.error('Error while deleting User.');
                }
            );
    };

}]);
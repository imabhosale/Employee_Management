<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<body>
    <script type="text/javascript">
           function callAlert()
          {
               swal({
                title: "Are you sure to logout?",
                //text: "Once deleted, you will not be able to recover this imaginary file!",
                icon: "warning",
                buttons: true,
                dangerMode: true,
              })

              
              .then((willDelete) => {
                if (willDelete) {
          
                    icon: "success";
                    
                    window.location.href = "http://localhost:6289/employeemanagement/login";    
                
                }                
//                else {
////                  swal("Your imaginary file is safe!");
//                  timer: 2000,
//                  window.location.href = "http://localhost:6289/employeemanagement/profile";
//                }
              });
              
              }
        </script>
</body>
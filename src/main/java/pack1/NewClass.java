/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pack1;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author kunal
 */
public class NewClass {
    
    
  @PostMapping("/myEndpoint")
@ResponseBody
public ResponseEntity<String> handleRequest(@RequestParam("id") String id,
                                             @RequestParam("firstName") String firstName,
                                             @RequestParam("lastName") String lastName) {
    // Do something with the received data (e.g., save it to a database)
    System.out.println("Selected data: " + firstName + " " + lastName + " (ID: " + id + ")");

    // Return a response
    return ResponseEntity.ok("Received data: " + firstName + " " + lastName + " (ID: " + id + ")");
}

    
}

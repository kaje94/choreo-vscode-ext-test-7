import ballerina/http;
import ballerina/log;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "testserviceforlogs",
	id: "testserviceforlogs-813de6b6-7709-4ea0-845f-0ee47da69493"
}
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        log:printInfo("info log123 name:"+name);
        return "Hello, " + name;
    }
}

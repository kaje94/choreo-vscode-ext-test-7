import ballerina/log;
import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "testinglogsservice",
	id: "testinglogsservice-893ad54e-47b7-42b1-9824-065379919ae4"
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
        log:printInfo("printing log :"+name);
        return "Hello, " + name;
    }
}

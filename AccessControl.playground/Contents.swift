import UIKit

/*
 # Access Control
 restrict the visibility and accessibility of various parts of your code, such as classes, structures, enums, functions, variables, and so on.

 1. open
 Note: Accessible from anywhere.
 When you define your class with the “open” keyword we can see that code from another module, packages, and so on. The “open” keyword is very useful when you want to create your own framework or libraries as Combine, Alamofire, and so on.

 2. public
 Note: Accessible from anywhere.
 “open” additionally allows other modules to subclass and override classes and their members but “public” does give that permission.

 3. internal (by default)
 Note: Declarations are accessible only within the defined module.
 This means you can only access these methods within that module.

 4. fileprivate
 Note: Declarations are accessible only within the current swift file.

 5. private
 Note: Accessible within the same declaration or extension.
 The most restrictive access level. Useful for encapsulating implementation details within a class or structure.

 6. private(set)
 Note: It has the same accessibility as the “private” but I can see(get) value when defining the variable as the “private(set)”.

 7. final
 Note: Prevent inheritance
 When we define our classes with the “final” keyword we prevent inheritance what that means? For example, I have the “Parent” class which is defined as “final” and also I have the “Child” class which want to inherit from the “Parent” class but cannot because the “Parent” is “final”.
 */

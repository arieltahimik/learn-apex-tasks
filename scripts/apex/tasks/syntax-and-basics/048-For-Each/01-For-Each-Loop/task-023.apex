/*
Write a method named 'addStringAfterEach' that takes a list of strings and a string as parameters. 
The method should append the given string parameter after each string in the given list. 
However, this operation should only be performed for strings in the list with a length less than 5. 
Additionally, even if the given string parameter is null or empty, the method should still perform the operation.

After appending the string parameter, the method should return a newly created list containing the modified strings.

Requirements:
- If the given list is null, the method should return an empty list.
- If the given list is empty, the method should return an empty list.
- The method should add the given string to each element of the given string list 
if the element of the string has less than 5 characters, and return a new list consisting of the modified strings.
*/


// My solution:

public class StringListModifier {
    // Write your code here
    public List<String> addStringAfterEach(List<String> sourceStrings, String suffix) {
        if (sourceStrings==null || sourceStrings.isEmpty()) { 
            return new List<String>(); 
        }

        if (String.isBlank(suffix)) {
            suffix = '';
        }

        List<String> newList = new List<String>();
        for (String str : sourceStrings) {
            if (str.length() < 5) {
                str += suffix;
                newList.add(str);
            }
        }
        return newList;
    }
}


// TEST CASE
List<String> sourceStrings = new List<String>{'Apple','Banana','Cat','Dog'};
String suffix = 'force';
System.debug('addStringAfterEach: ' + addStringAfterEach(sourceStrings, suffix));

sourceStrings = new List<String>();
suffix = 'force';
System.debug('addStringAfterEach: ' + addStringAfterEach(sourceStrings, suffix));

sourceStrings = null;
suffix = 'force';
System.debug('addStringAfterEach: ' + addStringAfterEach(sourceStrings, suffix));



// LA Solution
/*
public List<String> addStringAfterEach(List<String> stringList, String strToAdd) {
    List<String> modifiedList = new List<String>(); // Initialize a new list to store modified strings
    
    if (stringList == null || stringList.isEmpty()) {
        return modifiedList; // Return an empty list
    }
    
    // Check if strToAdd is null or empty, if so, assign an empty string to it
    if (strToAdd == null) {
        strToAdd = '';
    }
    
    // Iterate through each string in the input list
    for(String str : stringList) {
        if(str.length() < 5){
            modifiedList.add(str + strToAdd); // Add the given parameter after each string
        }
    }
    
    return modifiedList; // Return the newly created list
}
*/
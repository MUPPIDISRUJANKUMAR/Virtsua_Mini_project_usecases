import java.util.*;

public class PasswordValidator{
    public static void main(String[] args){
        Scanner sc=new Scanner(System.in);
        System.out.println("Instructions for creating a valid password: ");
        System.out.println("1. Password must be atleast 8 characters long.");
        System.out.println("2. Password must contain atleast one uppercase letter.");
        System.out.println("3. Password must contain atleast one lowercase letter.");
        System.out.println("4. Password must contain atleast one digit (0-9).");
        System.out.println("5. Password must contain atleast one special character(eg: !,@,#,$,%,^,&,*,(,)).");
        System.out.println("6. Password should not contain spaces and at start or end.");
        System.out.println("Please create a password that meets the above criteria.");
        System.out.println("NOTE: The password will be validated and you will be prompted to re-enter if it does not met the criteria.");

        while(true){
            System.out.print("Enter your password: ");
            String password=sc.nextLine();
            password=password.trim();
            boolean valid=true;

            if(!checkLength(password)) valid=false;
            if(!checkUpperCase(password)) valid=false;
            if(!checkLowerCase(password)) valid=false;
            if(!checkDigit(password)) valid=false;
            if(!checkSpecialChar(password)) valid=false;
            if(!checkSpaces(password)) valid=false;


            if(valid){
                System.out.println("Password is valid.");
                break;
            }
        }
        
        sc.close();
    }

    public static boolean checkLength(String password){
        if(password.length()<8){
            System.out.println("Password must be atleast 8 characters Long");
            return false;
        }
        return true;
    }

    public static boolean checkUpperCase(String password){
        for(int i=0;i<password.length();i++){
            if(Character.isUpperCase(password.charAt(i))){
                return true;
            }
        }
        System.out.println("Password must contain atleast one uppercase letter.");
        return false;
    }

    public static boolean checkLowerCase(String password){
        for(int i=0;i<password.length();i++){
            if(Character.isLowerCase(password.charAt(i))){
                return true;
            }
        }
        System.out.println("Password must contain atleast one lowercase letter.");
        return false;
    }

    public static boolean checkDigit(String password){
        for(int i=0;i<password.length();i++){
            if(Character.isDigit(password.charAt(i))){
                return true;
            }
        }
        System.out.println("Password must contain atleast one digit.");
        return false;
    }

    public static boolean checkSpecialChar(String password){
        String sp_chars="!@#$%^&*()";
        for (int i=0;i<password.length();i++){
            if(sp_chars.indexOf(password.charAt(i))!=-1){
                return true;
            }
        }
        System.out.println("Password must contain atleast one special character.");
        return false;
    }

    public static boolean checkSpaces(String password){
        if(password.contains(" ")){
            System.out.println("Password should not contain spaces.");
            return false;
        }
        return true;
    }
}

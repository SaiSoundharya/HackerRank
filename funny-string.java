
    public static String funnyString(String s) {
    // Write your code here
        StringBuilder sb = new StringBuilder(s);
        String rev = sb.reverse().toString();
        int[] arr = new int[s.length()-1];
        for(int i=0; i<arr.length-1; i++){
            int k=i+1;
            arr[i] = (int)Math.abs((s.charAt(i)-'a') - (s.charAt(k)-'a'));
        }
        // System.out.println(Arrays.toString(arr));
        int[] arr1 = arr.clone();
        // System.out.println(Arrays.toString(arr1));
        for(int i=0; i<arr.length-1; i++){
            int k=i+1;
            arr[i] = (int)Math.abs((rev.charAt(i)-'a') - (rev.charAt(k)-'a'));
        }
        // System.out.println(Arrays.toString(arr));
        if(Arrays.equals(arr, arr1)){
            return "Funny";
        }
        return "Not Funny";
    }

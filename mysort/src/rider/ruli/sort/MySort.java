package rider.ruli.sort;

import java.util.Random;

public class MySort {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int a[]={49,38,65,97,76,13,27,49,78,34,12,64,5,4,62,99,98,54,56,17,18,23,34,15,35,25,53,51}; 
		int b[]={1,54,6,3,34,12,10,7};  
		//bubbleSort(b);
		quickSort(a);
		displayArr(b);
		displayArr(a);
	}

	public static void bubbleSort(int... arr){
		for (int i = 0, len = arr.length-1; i < len; i++) {
			for (int j = 0; j < len-i; j++) {
				if(arr[j]>arr[j+1]){
					int temp = arr[j];
					arr[j]= arr[j+1];
					arr[j+1] =temp;
				}
			}
		}
	}
	
	
	public static void quickSort(int... arr){
		if(arr!=null){
			quickSort(0, arr.length-1, arr,new Random());
		}
	}
	
	private static void quickSort(int beg, int end,int[] arr){
		if(beg>=end || arr ==null){
			return;
		}
		int middle = _getMiddle(beg, end, arr);
		quickSort(beg, middle-1, arr);
		quickSort(middle+1, end, arr);
	}
	
	private static void quickSort(int beg, int end,int[] arr,Random random){
		if(beg>=end || arr ==null){
			return;
		}
		int middle = _getMiddle(beg, end, arr,random);
		quickSort(beg, middle-1, arr,random);
		quickSort(middle+1, end, arr,random);
	}
	
	private static int _getMiddle(int beg, int end, int[] arr,Random random) {
		int index = random.nextInt(end)%(end-beg+1)-beg;
		int last = arr[index];
		int pri = beg, fri = end;
		while(pri<fri){
			while(arr[pri]<last && pri<=end){
				pri++;
			}
			while(arr[fri]>=last && fri>beg){
				fri--;
			}
			if(pri<fri){
				int temp = arr[pri];
				arr[pri] = arr[fri];
				arr[fri] = temp;
			}
		}
		if(pri != end){
			int temp = arr[end];
			arr[end] = arr[pri];
			arr[pri] = temp;
		}
		return pri;
	}
	
	//{1,54,6,3,34,12,45}[1, 6, 3, 12, 34, 54, 10, 7]
	private static int _getMiddle(int beg, int end, int[] arr){
		int last = arr[end];
		int i = beg ;
		for (int j = beg; j < end; j++) {
			if(arr[j] <= last){
				if(i != j){
					arr[i] = arr[i]^arr[j];
					arr[j] = arr[i]^arr[j];
					arr[i] = arr[i]^arr[j];
				}
				i++;
			}
		}
		if(i != end){
			arr[i] = arr[i]^arr[end];
			arr[end] = arr[i]^arr[end];
			arr[i] = arr[i]^arr[end];
		}
		return i;
	}

	public static int getMiddle(int beg, int end, int[] arr,Random random){
		int index = random.nextInt(end)%(end-beg+1)-beg, last = arr[index];
		int i = beg;
		for (int j = i; j<=end;j++) {
			if(arr[j]<last&& j!=index){
				if(i!=j  &&i!=index){
					arr[i] = arr[i]^arr[j];
					arr[j] = arr[i]^arr[j];
					arr[i] = arr[i]^arr[j];
				}
				i++;
			}
		}
		if(i!=index ){
			arr[i] = arr[i]^arr[index];
			arr[index] = arr[i]^arr[index];
			arr[i] = arr[i]^arr[index];
		}
		return i;
	}
	
	public static void displayArr(int... arr){
		for (int i = 0; i < arr.length; i++) {
			System.out.print(arr[i]+" ");
		}
		System.out.println();
	}
	
	void test(int a){
		
	}
}

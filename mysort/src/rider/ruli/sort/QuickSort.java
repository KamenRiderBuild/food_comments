package rider.ruli.sort;

import java.util.Random;

public class QuickSort extends MySort{

	public static void main(String[] args) {
		int a[]={49,38,65,97,76,13,27,49,78,34,12,64,5,4,62,99,98,54,56,17,18,23,34,15,35,25,53,51};
		quickSort(a);
		displayArr(a);
		
//		Random random = new Random();
//		int end = 60,beg=51;
//		for (int i = 0; i < 20; i++) {
//			int j = random.nextInt(end)%(end-beg+1)+beg;
//			System.out.println(j);
//		}
		
	}

	public static void quickSort(int... arr){
		if(arr!=null){
			quickSort(0, arr.length-1, arr);
		}
	}
	
	private static void quickSort(int beg, int end,int[] arr){
		if(beg>=end || arr ==null){
			return;
		}
		int middle = random_getmiddle(beg, end, arr);
		quickSort(beg, middle-1, arr);
		quickSort(middle+1, end, arr);
	}
	
	private static int random_getmiddle(int beg, int end, int[] arr){
		Random random = new Random();
		int index = random.nextInt(end-beg+1)+beg;
		swap(index, end, arr);
		return _getMiddle(beg, end, arr);
	}
	
	private static void swap(int i, int j, int[] arr){
		int temp = arr[i];
		arr[i] = arr[j];
		arr[j] = temp;
	}
	
	private static int getMiddle(int beg, int end, int[] arr){
		int last = arr[end];
		int pri = beg, fri = end;
		while(pri<fri){
			while(pri<end && arr[pri]<last ){
				pri++;
			}
			while(fri>beg && arr[fri]>=last){
				fri--;
			}
			if(pri<fri ){
				swap(pri, fri, arr);
			}
		}
		if(pri != end ){
			swap(pri, end, arr);
		}
		return pri;
		
	}
	

	private static int _getMiddle(int beg, int end, int[] arr){
		int last = arr[end];
		int i =beg;
		for (int j = i; j < end; j++) {
			if(arr[j]<last){
				if(i!=j){
					swap(i, j, arr);
				}
				i++;
			}
		}
		if(i!=end){
			swap(i, end, arr);
		}
		//displayArr(beg, end, arr);
		return i;
	}
	
	public static void displayArr(int... arr){
		for (int i = 0; i < arr.length; i++) {
			System.out.print(arr[i]+" ");
		}
		System.out.println();
		
	}
	public static void displayArr(int i,int j,int... arr){
		for (; i <= j; i++) {
			System.out.print(arr[i]+" ");
		}
		System.out.println();
		
	}
}

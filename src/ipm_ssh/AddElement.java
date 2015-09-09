package ipm_ssh;

import java.util.Arrays;

public class AddElement {

	public static int[] addElement(int[] a, int e) {
		a  = Arrays.copyOf(a, a.length + 1);
		a[a.length - 1] = e;
		return a;
		}
}

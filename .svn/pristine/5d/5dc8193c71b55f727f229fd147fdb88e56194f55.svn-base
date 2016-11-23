package com.zhanwkj.fx2.utils;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import javax.swing.JOptionPane;
/**
 * 获取数组中出现次数最多的元素
 * 
 * @author Chitry
 *
 */
public class getMoreUtil {
	public static int getmore(int[] ss) {
		Map map = new HashMap();
		for (int i = 0; i < ss.length; i++) {
			int count = 0;
			for (int j = 0; j < ss.length; j++) {
				if (ss[i] == (ss[j])) {
					count = count + 1;
				}
			}
			// 为了不打印重复的，放入map中去掉重复的
			map.put(ss[i], count);
		}

		// 遍历map，打印包含的数字和个数
		Set key = map.keySet();
		int k = key.size();
		int ii[] = new int[k];// 存放出现次数最多的
		k = 0;
		int temp = 0;// 比较的时候的中间量
		int temp2 = 0;
		for (Iterator iterator = key.iterator(); iterator.hasNext();) {
			int name = Integer.parseInt(iterator.next().toString());
			int count2 = Integer.parseInt(map.get(name).toString());
			if (temp < count2) {
				temp = count2;

			}
			System.out.println(name + "出现 " + count2 + " 次");
		}

		for (Iterator iterator = key.iterator(); iterator.hasNext();) {
			int name = Integer.parseInt(iterator.next().toString());
			int count2 = Integer.parseInt(map.get(name).toString());
			if (temp == count2) {
				ii[k]=name;
				k++;
			}
		}

		System.out.print("出现最多的是:");
		for (int i = 0; i < ii.length; i++) {
			if (ii[i] != 0) {
				System.out.print(ii[i] + " ");
				return ii[i];
			}

		}
		return 0;
	}
}

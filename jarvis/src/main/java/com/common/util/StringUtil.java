/*
 * Created on 2012-4-02 08:15:00
 *
 */
package com.common.util;

import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @author yenaibao
 * 
 */
public class StringUtil {
	// private static String[] chars = new String[]{
	// "a","b","c","d","e","f","g","h",
	// "i","j","k","l","m","n","o","p",
	// "q","r","s","t","u","v","w","x",
	// "y","z","0","1","2","3","4","5",
	// "6","7","8","9","A","B","C","D",
	// "E","F","G","H","I","J","K","L",
	// "M","N","O","P","Q","R","S","T",
	// "U","V","W","X","Y","Z"
	// };
	private static String[] chars = new String[] { "0", "1", "2", "3", "4",
			"5", "6", "7", "8", "9" };

	public static boolean isEmpty(String value) {
		return (value == null || value.length() == 0 || value.trim().equals("")) ? true
				: false;
	}

	public static boolean isNullEmpty(String value) {
		return (value == null || value.length() == 0 || value.trim().equals("") || "null"
				.equals(value)) ? true : false;
	}

	public static boolean isNotEmpty(String value) {
		return (value != null && value.length() > 0 && !value.trim().equals("")) ? true
				: false;
	}

	public static String notNull(String value) {
		return value == null ? "" : value.trim();
	}

	public static boolean equals(String value1, String value2) {
		return value1 == null ? false : value1.equals(value2);
	}

	public static String toString(String value) {
		return value == null ? "" : value.trim();
	}

	public static String toString(String value, String defaultValue) {
		return value == null ? defaultValue : value.trim();
	}

	public static String toString(int value) {
		return String.valueOf(value);
	}

	public static String toString(double value) {
		return String.valueOf(value);
	}

	public static String toString(Integer value) {
		return value == null ? "" : String.valueOf(value);
	}

	public static String toString(Integer value, String defaultValue) {
		return value == null ? defaultValue : String.valueOf(value);
	}

	public static String toString(Double value) {
		return value == null ? "" : String.valueOf(value);
	}

	public static String toString(Object value) {
		return value == null ? "" : String.valueOf(value);
	}

	public static int toInt(String value) {
		return toInt(value, 0);
	}

	public static int toInt(String value, int defaultValue) {
		if (value == null) {
			return defaultValue;
		}

		int num = defaultValue;
		try {
			num = Integer.parseInt(value);
		} catch (Exception e) {
		}
		return num;
	}

	public static BigDecimal toBigDecimal(String value) {
		if (value == null) {
			return null;
		}
		BigDecimal de = new BigDecimal(value);
		return de;
	}

	public static int toInt(Integer value) {
		return value == null ? 0 : value.intValue();
	}

	public static int toInt(Integer value, int defaultValue) {
		return value == null ? defaultValue : value.intValue();
	}

	public static int toInt(Object value) {
		return value == null ? 0 : toInt(toString(value));
	}

	public static Integer toInteger(String value) {
		return value == null ? null : toInt(value);
	}

	public static double toDouble(String value) {
		return toDouble(value, 0.0);
	}

	public static double toDouble(String value, double defaultValue) {
		if (value == null) {
			return defaultValue;
		}

		double num = defaultValue;
		try {
			num = Double.parseDouble(value);
		} catch (Exception e) {
		}
		return num;
	}

	public static Date toDate(String value) {
		return toDate(value, "yyyy-MM-dd HH:mm:ss");
	}

	public static Date toDate(String value, String formatDate) {
		if (value == null || value.equals(""))
			return null;
		try {
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat(formatDate);
			return simpleDateFormat.parse(value);
		} catch (ParseException e) {
			return null;
		}
	}

	public static boolean toBoolean(String value) {
		if (value == null) {
			return false;
		}

		if (value.equals("TRUE") || value.equals("true") || value.equals("1")) {
			return true;
		} else {
			return false;
		}
	}

	public static boolean toBoolean(Integer value) {
		if (value == null) {
			return false;
		}

		if (value.intValue() == 1) {
			return true;
		} else {
			return false;
		}
	}

	public static String toHtml(String value) {
		if (value == null || value.length() == 0) {
			return "";
		}

		value = value.trim();
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < value.length(); i++) {
			char c = value.charAt(i);
			if (c == '<') {
				sb.append("&lt;");
			} else if (c == '>') {
				sb.append("&gt;");
			} else if (c == '"') {
				sb.append("&quot;");
			} else if (c == '&') {
				sb.append("&amp;");
			} else if (c == '\'') {
				sb.append("&#39;");
			} else {
				sb.append(c);
			}
		}
		return sb.toString();
	}

	public static String escape(String value) {
		if (value == null || value.length() == 0) {
			return value;
		}

		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < value.length(); i++) {
			char c = value.charAt(i);
			if (c == '<') {
				sb.append("&lt;");
			} else if (c == '>') {
				sb.append("&gt;");
			} else if (c == '"') {
				sb.append("&quot;");
			} else if (c == '&') {
				sb.append("&amp;");
			} else if (c == '\'') {
				sb.append("&#39;");
			} else {
				sb.append(c);
			}
		}
		return sb.toString();
	}

	public static String unEscape(String value) {
		if (value == null || value.length() == 0) {
			return "";
		}

		if (value.contains("&lt;")) {
			value = value.replace("&lt;", "<");
		}
		if (value.contains("&gt;")) {
			value = value.replace("&gt;", ">");
		}
		if (value.contains("&quot;")) {
			value = value.replace("&quot;", "\"");
		}
		if (value.contains("&amp;")) {
			value = value.replace("&amp;", "&");
		}
		if (value.contains("&#39;")) {
			value = value.replace("&#39;", "\'");
		}

		return value;
	}

	public static String searchLeft(String value, String word) {
		int pos = value.indexOf(word);
		if ((pos > 0) && (pos < (value.length() - 1))) {
			return value.substring(0, pos);
		}
		return value;
	}

	public static String searchRight(String value, String word) {
		int pos = value.indexOf(word);
		if ((pos > 0) && (pos < (value.length() - 1))) {
			return value.substring(pos + word.length());
		}
		return value;
	}

	public static String searchLastLeft(String value, String word) {
		int pos = value.lastIndexOf(word);
		if ((pos > 0) && (pos < (value.length() - 1))) {
			return value.substring(0, pos);
		}
		return value;
	}

	public static String searchLastRight(String value, String word) {
		int pos = value.lastIndexOf(word);
		if ((pos > 0) && (pos < (value.length() - 1))) {
			return value.substring(pos + word.length());
		}
		return value;
	}

	public static String format(String format, Object... args) {
		return String.format(format, args);
	}

	public static String formatDate(Date date) {
		return formatDate(date, "yyyy-MM-dd");
	}

	public static String formatDate1(Date date) {
		return formatDate(date, "yyyyMMdd");
	}

	public static String formatDateTime(Date date) {
		return formatDate(date, "yyyy-MM-dd HH:mm");
	}

	public static String formatDateTime1(Date date) {
		return formatDate(date, "yyyy-MM-dd HH:mm:ss");
	}

	public static String formatDate(Date date, String formatDate) {
		if (date == null)
			return "";

		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(formatDate);
		return simpleDateFormat.format(date);
	}

	public static String formatNumber(Integer value) {
		return value == null ? "" : formatNumber(value.intValue());
	}

	public static String formatNumber(int value) {
		DecimalFormat decimalFormat = new DecimalFormat("##,###,###,###");
		return decimalFormat.format(value);
	}

	public static String formatPercent(Double value) {
		return value == null ? "" : formatPercent(value.doubleValue());
	}

	public static String formatPercent(double value) {
		NumberFormat numberFormat = NumberFormat.getInstance();
		numberFormat.setMaximumFractionDigits(2);
		return numberFormat.format(value * 100) + "%";
	}

	public static String formatDouble(Double value) {
		return value == null ? "" : formatMoney(value.doubleValue());
	}

	public static String formatDouble(double value) {
		DecimalFormat decimalFormat = new DecimalFormat("##########0.00");
		return decimalFormat.format(value);
	}

	public static String formatMoney(Double value) {
		return value == null ? "" : formatMoney(value.doubleValue());
	}

	public static String formatMoney(double value) {
		DecimalFormat decimalFormat = new DecimalFormat("##,###,###,##0.00");
		return decimalFormat.format(value);
	}

	public static String formatFourString(int value) {
		DecimalFormat decimalFormat = new DecimalFormat("0000");
		return decimalFormat.format(value);
	}

	public static String formatSixString(int value) {
		DecimalFormat decimalFormat = new DecimalFormat("000000");
		return decimalFormat.format(value);
	}

	public static boolean isContain(String value, String values) {
		if (isEmpty(value) || isEmpty(values)) {
			return false;
		}
		String[] array = values.split(",");
		for (int i = 0; i < array.length; i++) {
			if (array[i].equals(value)) {
				return true;
			}
		}
		return false;
	}

	public static String brief(String value, int length) {
		if (value == null) {
			return "";
		}
		if (value.length() > length)
			return value.substring(0, length - 1) + "...";
		else
			return value;
	}

	public static String join(String[] values, String seperator) {
		if (values == null || values.length == 0) {
			return "";
		}
		StringBuilder sb = new StringBuilder();
		sb.append(values[0]);
		for (int i = 1; i < values.length; i++) {
			sb.append(seperator).append(values[i]);
		}
		return sb.toString();
	}

	public static String join(List<?> values, String seperator) {
		if (values == null || values.size() == 0) {
			return "";
		}
		StringBuilder sb = new StringBuilder();
		sb.append(values.get(0));
		for (int i = 1; i < values.size(); i++) {
			sb.append(seperator).append(values.get(i));
		}
		return sb.toString();
	}

	public static String repeat(String value, int n) {
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < n; i++) {
			sb.append(value);
		}

		return sb.toString();
	}

	public static String capFirst(String value) {
		if (value == null || value.trim().equals("")) {
			return "";
		}

		String val = value.toLowerCase();
		StringBuilder sb = new StringBuilder();
		boolean match = false;
		for (int i = 0; i < val.length(); i++) {
			char ch = val.charAt(i);
			if (match && ch >= 97 && ch <= 122) {
				ch -= 32;
			}
			if (ch != '_') {
				match = false;
				sb.append(ch);
			} else {
				match = true;
			}
		}
		return sb.toString();
	}

	public static String upperFirst(String value) {
		return Character.toUpperCase(value.charAt(0)) + value.substring(1);
	}

	public static String lowerFirst(String value) {
		return Character.toLowerCase(value.charAt(0)) + value.substring(1);
	}

	public static String replaceCR(String value) {
		return value == null ? "" : value.replaceAll("\n", "<br/>");
	}

	public static boolean pattern(String content, String regEx) {
		Pattern p = Pattern.compile(regEx);
		Matcher m = p.matcher(content);
		return m.find();
	}

	public static String match(String content, String regEx) {
		Pattern p = Pattern.compile(regEx);
		Matcher m = p.matcher(content);
		if (m.find()) {
			return m.group();
		}
		return null;
	}

	public static String match(String content, String regEx, int i) {
		Pattern p = Pattern.compile(regEx);
		Matcher m = p.matcher(content);
		if (m.find()) {
			return m.group(i);
		}
		return null;
	}

	public static String iso2gb(String value) {
		if (value == null) {
			return "";
		} else {
			try {
				return new String(value.trim().getBytes("iso-8859-1"), "gb2312");
			} catch (UnsupportedEncodingException e) {
				return "";
			}
		}
	}

	public static String encode(String value) {
		try {
			return URLEncoder.encode(value, "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			return "";
		}
	}

	public static String decode(String value) {
		try {
			return URLDecoder.decode(value, "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
			return "";
		}
	}

	public static String getRandStr(int n) {
		Random random = new Random();
		String sRand = "";
		for (int i = 0; i < n; i++) {
			String indexStr = String.valueOf(random.nextInt(9));
			int index = Integer.valueOf(indexStr);
			String rand = chars[index];
			sRand += rand;
		}
		return sRand;
	}

	/**
	 * 检查对象是否为数字型字符串。
	 */
	public static boolean isNumeric(Object obj) {
		if (obj == null) {
			return false;
		}
		String str = obj.toString();
		int sz = str.length();
		for (int i = 0; i < sz; i++) {
			if (!Character.isDigit(str.charAt(i))) {
				return false;
			}
		}
		return true;
	}
}
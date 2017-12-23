package com.common.util;



/**
 * @author F
 * 
 */
public class Html {
	public static String textBox(String name, String value) {
		return textBox(name, name, value, "", "", "");
	}

	// 文本框
	public static String textBox(String name, String id, String value,
			String size, String maxlength, String other) {
		StringBuilder sb = new StringBuilder();
		sb.append("<input type=\"text\" name=\"");
		sb.append(name);
		sb.append("\" value=\"");
		sb.append(value);
		if (StringUtil.isNotEmpty(id)) {
			sb.append("\" id=\"");
			sb.append(id);
		}
		if (StringUtil.isNotEmpty(size)) {
			sb.append("\" size=\"");
			sb.append(size);
		}
		if (StringUtil.isNotEmpty(maxlength)) {
			sb.append("\" maxlength=\"");
			sb.append(maxlength);
		}
		sb.append("\" ");
		sb.append(other);
		sb.append(">");

		return sb.toString();
	}

	public static String textArea(String name, String value) {
		return textArea(name, name, value, "", "", "");
	}

	// 多行文本框
	public static String textArea(String name, String id, String value,
			String rows, String cols, String other) {
		StringBuilder sb = new StringBuilder();
		sb.append("<textarea name=\"");
		sb.append(name);
		if (StringUtil.isNotEmpty(id)) {
			sb.append("\" id=\"");
			sb.append(id);
		}
		if (StringUtil.isNotEmpty(rows)) {
			sb.append("\" rows=\"");
			sb.append(rows);
		}
		if (StringUtil.isNotEmpty(cols)) {
			sb.append("\" cols=\"");
			sb.append(cols);
		}
		sb.append("\" ");
		sb.append(other);
		sb.append(">");
		sb.append(value);
		sb.append("</textarea>");

		return sb.toString();
	}

	public static String selectBox(String name, String[][] paras,
			String selectData) {
		return selectBox(name, name, paras, selectData, "");
	}

	// 显示下拉框
	public static String selectBox(String name, String id, String[][] paras,
			String selectData, String other) {
		StringBuilder sb = new StringBuilder();
		sb.append("<select name=\"");
		sb.append(name);
		if (StringUtil.isNotEmpty(id)) {
			sb.append("\" id=\"");
			sb.append(id);
		}
		sb.append("\" ");
		sb.append(other);
		sb.append(">\n");
		for (int i = 0; i < paras.length; i++) {
			sb.append(selectBox(paras[i][0], paras[i][1], selectData));
		}
		sb.append("</select>");

		return sb.toString();
	}

	public static String selectBox(String[][] paras) {
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < paras.length; i++) {
			sb.append(selectBox(paras[i][0], paras[i][1], ""));
		}

		return sb.toString();
	}

	public static StringBuilder selectBox(String value, String content,
			String selectData) {
		StringBuilder sb = new StringBuilder();
		sb.append("<option value=\"");
		sb.append(value);
		sb.append("\"");
		if (value.equals(selectData)) {
			sb.append(" selected=\"selected\"");
		}
		sb.append(">");
		sb.append(content);
		sb.append("</option>\n");

		return sb;
	}

	public static StringBuilder radio(String name, String value,
			String content, String selectData) {
		return radio(name, "", value, content, selectData, "");
	}

	// 显示单选钮
	public static StringBuilder radio(String name, String id, String value,
			String content, String selectData, String other) {
		StringBuilder sb = new StringBuilder();
		sb.append("<input type=\"radio\" name=\"");
		sb.append(name);
		if (StringUtil.isNotEmpty(id)) {
			sb.append("\" id=\"");
			sb.append(id);
		}
		sb.append("\" value=\"");
		sb.append(value);
		sb.append("\" ");
		sb.append(other);
		if (value.equals(selectData)) {
			sb.append(" checked=\"checked\"");
		}
		sb.append(">");
		sb.append(content);
		sb.append("&nbsp;");

		return sb;
	}

	public static StringBuilder checkBox(String name, String value,
			String content, String selectData) {
		return checkBox(name, "", value, content, "&nbsp;", selectData, "");
	}

	public static StringBuilder checkBox(String name, String id, String value,
			String content, String selectData, String other) {
		return checkBox(name, id, value, content, "&nbsp;", selectData, other);
	}

	// 显示复选框
	public static StringBuilder checkBox(String name, String id, String value,
			String content, String split, String selectData, String other) {
		StringBuilder sb = new StringBuilder();
		sb.append("<input type=\"checkbox\" name=\"");
		sb.append(name);
		if (StringUtil.isNotEmpty(id)) {
			sb.append("\" id=\"");
			sb.append(id);
		}
		sb.append("\" value=\"");
		sb.append(value);
		if (StringUtil.isContain(value, selectData)) {
			sb.append("\" checked=\"checked\"");
		}
		sb.append("\" ");
		sb.append(other);
		sb.append(">");
		sb.append(content);
		sb.append(split);
		return sb;
	}

	// 显示复选框
	public static String checkBox(String name, String[][] paras,
			String selectData, int rownum, boolean flag) {
		if (rownum < 1) {
			return "";
		}

		StringBuilder sb = new StringBuilder();
		sb.append("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\" width=\"100%\" class=\"table-none\">\n");
		for (int i = 0; i < paras.length; i++) {
			if (i % rownum == 0) {
				sb.append("<tr>\n");
			}
			if (flag) {
				sb.append("<td width='").append(100 / rownum).append("%'>");
			} else {
				sb.append("<td>");
			}
			sb.append(checkBox(name, paras[i][0], paras[i][1], selectData));
			sb.append("</td>\n");
			if (i % rownum == rownum - 1) {
				sb.append("</td>\n</tr>\n");
			}
		}
		if (paras.length % rownum != 0) {
			if (flag) {
				sb.append(
						StringUtil.repeat("<td width='" + 100 / rownum
								+ "%'>&nbsp;</td>\n", rownum - paras.length
								% rownum)).append("</tr>\n");
			} else {
				sb.append(
						StringUtil.repeat("<td>&nbsp;</td>\n", rownum
								- paras.length % rownum)).append("</tr>\n");
			}
		}
		sb.append("</table>\n");
		return sb.toString();
	}

	// 显示复选框
	public static String checkBox(String name, String[][] paras,
			String selectData, int rownum, int width) {
		if (rownum < 1) {
			return "";
		}

		StringBuilder sb = new StringBuilder();
		sb.append("<table border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\n");
		for (int i = 0; i < paras.length; i++) {
			if (i % rownum == 0) {
				sb.append("<tr>\n");
			}
			sb.append("<td width='").append(width).append("'>");

			sb.append(checkBox(name, paras[i][0], paras[i][1], selectData));
			sb.append("</td>\n");
			if (i % rownum == rownum - 1) {
				sb.append("</td>\n</tr>\n");
			}
		}
		if (paras.length % rownum != 0) {
			sb.append("</tr>\n");
		}
		sb.append("</table>\n");
		return sb.toString();
	}

	public static String tagSelectBox(String selectBoxName, String selectData,
			String content, String split, String message) {
		String[] arr = content.split(split);
		if (StringUtil.isNotEmpty(content)) {
			String[][] paras = new String[arr.length + 1][2];
			paras[0][0] = "";
			paras[0][1] = message;

			int i = 1;
			for (String name : arr) {
				paras[i][0] = name;
				paras[i][1] = name;
				i++;
			}
			return Html.selectBox(selectBoxName, selectBoxName, paras,
					selectData, "");
		} else {
			String[][] paras = new String[1][2];
			paras[0][0] = "";
			paras[0][1] = message;
			return Html.selectBox(selectBoxName, selectBoxName, paras,
					selectData, "");
		}

	}

	public static String tagCheckBox(String checkBoxName, String selectData,
			String content, String split) {
		String[] arr = content.split(split);
		if (StringUtil.isNotEmpty(content)) {
			StringBuilder sb = new StringBuilder();
			for (String name : arr) {
				name = name.replace("\\", "");
				sb.append(Html.checkBox(checkBoxName, String.valueOf(name),
						name, selectData));
			}
			return sb.toString();
		}
		return "";
	}

	public static String colSort(String col, String colName, String orderby,
			String descflag) {
		if (col.equals(orderby)) {
			if (StringUtil.isEmpty(descflag)) {
				return "<span style='cursor:pointer' onclick=\"return sortIt('"
						+ col
						+ "','desc')\">"
						+ colName
						+ "&nbsp;<img src='../images/uparrow.gif' alt='正序' width='12' height='12' border='0'/></span>";
			} else {
				return "<span style='cursor:pointer' onclick=\"return sortIt('"
						+ col
						+ "','')\">"
						+ colName
						+ "&nbsp;<img src='../images/downarrow.gif' alt='逆序' width='12' height='12' border='0'/></span>";
			}
		} else {
			return "<span style='cursor:pointer' onclick=\"return sortIt('"
					+ col + "','')\">" + colName + "</span>";
		}
	}
}
package com.common.entity;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.common.util.Html;
import com.common.util.StringUtil;


/**
 * ��ҳ��������
 * 
 * @author dancer
 * @date 2016-3-24
 */
public class Page<T> implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2376350406572276136L;
	private int pageSize; // ÿҳ��¼��
	private int currentPage; // ��ǰҳ
	private int pageCount; // ��ҳ��
	private int recordCount; // �ܼ�¼��
	private int defaultPageSize = 15; // ȱʡÿҳ��¼��
	private int maxPageCount = 999; // ȱʡ���ҳ��
	private String formName = "form1"; // form��
	private String pageNoName = "pn"; // ҳ����

	private List<T> results;// ��Ӧ�ĵ�ǰҳ��¼
	private Map<String, Object> params = new HashMap<String, Object>();// �����Ĳ������ǰ�����װ��һ��Map����

	public Page() {
		pageSize = defaultPageSize;
		currentPage = 1;
		pageCount = 0;
		recordCount = 0;
	}

	public void setPageSize(int pageSize) {
		if (pageSize <= 0) {
			pageSize = defaultPageSize;
		}
		this.pageSize = pageSize;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setCurrentPage(String currentPage) {
		setCurrentPage(StringUtil.toInt(currentPage, 1));
	}

	public void setCurrentPage(int currentPage) {
		if (currentPage <= 0) {
			currentPage = 1;
		}
		this.currentPage = currentPage;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public int getPageCount() {
		if (pageCount == 0) {
			calcPageCount();
		}

		if (pageCount > maxPageCount) {
			pageCount = maxPageCount;
		}

		return pageCount;
	}

	public void calcPageCount() {
		this.pageCount = (recordCount - 1) / pageSize + 1;

		if (currentPage > pageCount) {
			this.currentPage = pageCount;
		}
	}

	public void setRecordCount(int recordCount) {
		if (recordCount <= 0) {
			recordCount = 0;
		}
		this.recordCount = recordCount;
	}

	public int getRecordCount() {
		return recordCount;
	}

	public void setDefaultPageSize(int defaultPageSize) {
		this.defaultPageSize = defaultPageSize;
	}

	public int getDefaultPageSize() {
		return defaultPageSize;
	}

	public String getFormName() {
		return formName;
	}

	public void setFormName(String formName) {
		this.formName = formName;
	}

	public String getPageNoName() {
		return pageNoName;
	}

	public void setPageNoName(String pageNoName) {
		this.pageNoName = pageNoName;
	}

	public String getPagePrint() {
		if (pageCount == 0) {
			calcPageCount();
		}

		StringBuilder sb = new StringBuilder();
		if (currentPage == 1) {
			sb.append("��ҳ&nbsp;");
		} else {
			sb.append("<a href='#' onclick='goPage(1);'>��ҳ</a>&nbsp;");
		}
		if (currentPage <= 1) {
			sb.append("&nbsp;ǰһҳ&nbsp;");
		} else {
			sb.append("&nbsp;<a href='#' onclick='goPage(" + (currentPage - 1)
					+ ");'>ǰһҳ</a>&nbsp;");
		}
		if (currentPage >= pageCount) {
			sb.append("&nbsp;��һҳ&nbsp;");
		} else {
			sb.append("&nbsp;<a href='#' onclick='goPage(" + (currentPage + 1)
					+ ");'>��һҳ</a>&nbsp;");
		}
		if (currentPage == pageCount) {
			sb.append("&nbsp;ĩҳ");
		} else {
			sb.append("&nbsp;<a href='#' onclick='goPage(" + pageCount
					+ ");'>ĩҳ</a>");
		}
		return sb.toString();
	}

	public String getPageMorePrint() {
		if (pageCount == 0) {
			calcPageCount();
		}

		StringBuilder sb = new StringBuilder();
		sb.append("<div class='page-list'>\n<div class='page'>\n");
		if (currentPage <= 1) {
			sb.append("<span class='prev'>��һҳ</span>\n");
		} else {
			sb.append("<a href='#' class='prev' onclick='goPage("
					+ (currentPage - 1) + ");'>��һҳ</a>\n");
		}

		int pre = 3;
		int next = 5;
		if (pageCount > pre + next && currentPage > pre + 1) {
			sb.append("<a href='#' onclick='goPage(1);'>1</a>\n");
			if (currentPage > pre + 2) {
				sb.append("<span>..</span>\n");
			}
		}
		for (int i = 1; i <= pageCount; i++) {
			if (i >= currentPage - pre && i <= currentPage + next) {
				if (i == currentPage) {
					sb.append("<span class='current' onclick='goPage(" + i
							+ ");'>" + i + "</span>\n");
				} else {
					sb.append("<a href='#' onclick='goPage(" + i + ");'>" + i
							+ "</a>\n");
				}
			}
		}
		if (pageCount > pre + next && currentPage < pageCount - next) {
			if (currentPage < pageCount - next - 1) {
				sb.append("<span>..</span>\n");
			}
			sb.append("<a href='#' onclick='goPage(" + pageCount + ");'>"
					+ pageCount + "</a>\n");
		}

		if (currentPage >= pageCount) {
			sb.append("<span class='next'>��һҳ</span>\n");
		} else {
			sb.append("<a href='#' class='next' onclick='goPage("
					+ (currentPage + 1) + ");'>��һҳ</a>\n");
		}
		sb.append("</div>\n</div>");

		return sb.toString();
	}

	public String getRecordCountPrint() {
		if (pageCount == 0) {
			calcPageCount();
		}

		StringBuilder sb = new StringBuilder();
		sb.append("�ܼ�¼��:<font color='red'>");
		sb.append(recordCount);
		sb.append("</font>&nbsp;&nbsp;&nbsp;&nbsp;��ǰҳ:<font color='red'>");
		sb.append(currentPage);
		sb.append("</font>/<font color='red'>");
		sb.append(pageCount);
		sb.append("</font>\n");
		return sb.toString();
	}

	public String getRecordNumPrint() {
		if (pageCount == 0) {
			calcPageCount();
		}

		StringBuilder sb = new StringBuilder();
		sb.append("��&nbsp;<font color='red'>");
		sb.append(recordCount);
		sb.append("</font>&nbsp;����¼\n");
		return sb.toString();
	}

	public String getPageSizePrint() {
		String[][] paras = new String[3][2];
		paras[0][0] = String.valueOf(defaultPageSize);
		paras[0][1] = String.valueOf(defaultPageSize);
		paras[1][0] = "50";
		paras[1][1] = "50";
		paras[2][0] = "100";
		paras[2][1] = "100";
		String selectBox = Html.selectBox("pageSize", "pageSize", paras,
				String.valueOf(pageSize), "onchange='return pageSizeChange()'");

		StringBuilder sb = new StringBuilder();
		sb.append("ÿҳ").append(selectBox).append("��\n");
		sb.append("<script>\n");
		sb.append("function pageSizeChange() {\n");
		sb.append("    if(document.").append(formName).append(".")
				.append(pageNoName).append(" !=null){\n");
		sb.append("        document.").append(formName).append(".")
				.append(pageNoName).append(".value = '1';\n");
		sb.append("    }\n");
		sb.append("    document.").append(formName).append(".submit();\n");
		sb.append("}\n");
		sb.append("</script>");
		return sb.toString();
	}

	public String getPageJumpPrint() {
		StringBuilder sb = new StringBuilder();
		sb.append("&nbsp;����<input id='jumpPage' name='jumpPage' type='text' class='jumpPage' maxlength='4'/> ҳ<img style='cursor:pointer;vertical-align:middle;' onclick='gotoPage();' src='../images/ok.gif'>");
		sb.append("<script>\n");
		sb.append("function gotoPage() {\n");
		sb.append("  var page = document.").append(formName)
				.append(".jumpPage.value;\n");
		sb.append("    if (page==\"\" || isNaN(page)) {\n");
		sb.append("      alert ('����������!');\n");
		sb.append("      document.").append(formName)
				.append(".jumpPage.value='';\n");
		sb.append("      document.").append(formName)
				.append(".jumpPage.focus();;\n");
		sb.append("      return;\n");
		sb.append("    }\n");
		sb.append("    if (page > ").append(pageCount)
				.append(" || page == 0) {\n");
		sb.append("      alert ('�ѳ���ҳ�뷶Χ!');\n");
		sb.append("      document.").append(formName)
				.append(".jumpPage.value='';\n");
		sb.append("      document.").append(formName)
				.append(".jumpPage.focus();;\n");
		sb.append("      return;\n");
		sb.append("    }\n");
		sb.append("    goPage(page);\n");
		sb.append("}\n");
		sb.append("</script>");
		return sb.toString();
	}

	public String getGoPagePrint() {
		StringBuilder sb = new StringBuilder();
		sb.append("\n<script>\n");
		sb.append("function goPage(pn) {\n");
		sb.append("    document.").append(formName).append(".")
				.append(pageNoName).append(".value=pn;\n");
		sb.append("    document.").append(formName).append(".submit();");
		sb.append("}\n\n");
		sb.append("</script>\n");
		return sb.toString();
	}

	public List<T> getResults() {
		return results;
	}

	public void setResults(List<T> results) {
		this.results = results;
	}

	public Map<String, Object> getParams() {
		return params;
	}

	public void setParams(Map<String, Object> params) {
		this.params = params;
	}
}

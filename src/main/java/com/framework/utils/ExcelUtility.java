package com.framework.utils;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import org.apache.poi.ss.usermodel.BorderStyle;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFCellStyle;
import org.apache.poi.xssf.usermodel.XSSFFont;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Component;



@Component
public class ExcelUtility {
	/**
	 * Create Cell
	 * 
	 * @param row
	 * @param columnCount
	 * @param value
	 * @param style
	 */
	void createCell(Row row, int columnCount, Object value, CellStyle style) {
		Cell cell = row.createCell(columnCount);
		if (value instanceof Integer) {
			cell.setCellValue((Integer) value);
		} else if (value instanceof Boolean) {
			cell.setCellValue((Boolean) value);
		} else {
			cell.setCellValue((String) value);
		}
		cell.setCellStyle(style);
	}
	
	void createCell(Row row, int columnCount, Object value, CellStyle style, XSSFSheet sheet, int columnWidth) {
		Cell cell = row.createCell(columnCount);
		if (value instanceof Integer) {
			cell.setCellValue((Integer) value);
		} else if (value instanceof Boolean) {
			cell.setCellValue((Boolean) value);
		} else if (value instanceof Double) {
			cell.setCellValue((Double) value);
		} else {
			cell.setCellValue((String) value);
		}
		sheet.setColumnWidth(columnCount, columnWidth);
		cell.setCellStyle(style);
	}

	/**
	 * Set Header lines
	 * 
	 * @param row
	 * @param columnCount
	 * @param headerData
	 * @param workbook
	 */
	void createHeader(Row row, int columnCount, Object[] headerData, XSSFWorkbook workbook) {

		/**
		 * Header Style
		 */
		CellStyle style1 = workbook.createCellStyle();
		XSSFFont font1 = workbook.createFont();
		font1.setBold(true);
		font1.setFontHeight(12);
		style1.setFont(font1);

		/**
		 * Header lines
		 */
		for (Object field : headerData) {
			createCell(row, columnCount++, field, style1);
		}
	}
	
	/**
	 * Set Date lines
	 * 
	 * @param row
	 * @param columnCount
	 * @param date
	 * @param workbook
	 */
   void createDate(Row row0, int columnCount, Object[] headerDataNew, XSSFWorkbook workbook) {
		/**
		 * Header Style
		 */
		CellStyle style1 = workbook.createCellStyle();
		XSSFFont font1 = workbook.createFont();
		font1.setBold(true);
		font1.setFontHeight(12);
		style1.setFont(font1);
		style1.setBorderTop(BorderStyle.THIN);
		style1.setBorderBottom(BorderStyle.THIN);
		style1.setBorderLeft(BorderStyle.THIN);
		style1.setBorderRight(BorderStyle.THIN);

		/**
		 * Date lines
		 */
		for (Object field : headerDataNew) {
			createCell(row0, columnCount++, field, style1);
		}
		
	}

	/**
	 * Set Data Styles
	 * 
	 * @param workbook
	 * @return
	 */
	public XSSFCellStyle setDataStyle(XSSFWorkbook workbook) {
		XSSFCellStyle style3 = workbook.createCellStyle();
		XSSFFont font = workbook.createFont();
		font.setFontHeight(10);
		style3.setBorderTop(BorderStyle.THIN);
		style3.setBorderBottom(BorderStyle.THIN);
		style3.setBorderLeft(BorderStyle.THIN);
		style3.setBorderRight(BorderStyle.THIN);
		style3.setFont(font);
		return style3;
	}

	
	}

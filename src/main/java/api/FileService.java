package api;

import api.exceptions.ApiError;
import api.exceptions.PDFNotCreated;
import domain.order.Order;
import infrastructure.exceptions.PDFNotFound;

import java.io.File;

public interface FileService {
  File generatePdf(Order order, String svgSide, String svgTop) throws PDFNotCreated;

  File getPdf(String filename) throws PDFNotFound;

  String convertSVGtoPNG(String fileName, String svgSource) throws ApiError;
}

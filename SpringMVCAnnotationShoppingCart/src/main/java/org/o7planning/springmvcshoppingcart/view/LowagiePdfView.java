package org.o7planning.springmvcshoppingcart.view;

import com.lowagie.text.Document;
import com.lowagie.text.pdf.PdfPTable;
import com.lowagie.text.pdf.PdfWriter;

import org.o7planning.springmvcshoppingcart.model.CartInfo;
import org.o7planning.springmvcshoppingcart.model.CartLineInfo;
import org.o7planning.springmvcshoppingcart.model.CustomerInfo;

import org.springframework.web.servlet.view.document.AbstractPdfView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.DateFormat;
import java.util.List;
import java.util.Map;

public class LowagiePdfView extends AbstractPdfView {


    @Override
    protected void buildPdfDocument(Map<String, Object> model,
                                    Document document, PdfWriter writer,
                                    HttpServletRequest request,
                                    HttpServletResponse response) throws Exception {

        @SuppressWarnings("unchecked")
        List<CustomerInfo> customers = (List<CustomerInfo>) model.get("customerForm");

        PdfPTable table = new PdfPTable(3);

        table.addCell("Name");
        table.addCell("Address");
        table.addCell("Email");
        table.addCell("Phone");

        for (CustomerInfo customer : customers){
            table.addCell(customer.getName());
            table.addCell(customer.getAddress());
            table.addCell(customer.getEmail());
            table.addCell(customer.getPhone());
        }

        document.add(table);
    }
}

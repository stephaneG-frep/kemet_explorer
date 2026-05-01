import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class PdfExportService {
  Future<void> exportKemetBooklet({
    required String title,
    required List<String> sections,
  }) async {
    final doc = pw.Document();

    doc.addPage(
      pw.MultiPage(
        pageTheme: pw.PageTheme(
          margin: const pw.EdgeInsets.all(28),
          theme: pw.ThemeData.withFont(
            base: await PdfGoogleFonts.nunitoRegular(),
            bold: await PdfGoogleFonts.nunitoBold(),
          ),
        ),
        build: (_) => [
          pw.Text(
            title,
            style: pw.TextStyle(
              fontSize: 24,
              fontWeight: pw.FontWeight.bold,
              color: PdfColor.fromHex('#112240'),
            ),
          ),
          pw.SizedBox(height: 10),
          pw.Text('Carnet pédagogique - Kemet Explorer'),
          pw.SizedBox(height: 16),
          ...sections.map(
            (s) => pw.Padding(
              padding: const pw.EdgeInsets.only(bottom: 10),
              child: pw.Container(
                padding: const pw.EdgeInsets.all(10),
                decoration: pw.BoxDecoration(
                  borderRadius: pw.BorderRadius.circular(8),
                  color: PdfColor.fromHex('#F3E9D2'),
                ),
                child: pw.Text(s),
              ),
            ),
          ),
        ],
      ),
    );

    await Printing.layoutPdf(onLayout: (_) async => doc.save());
  }
}

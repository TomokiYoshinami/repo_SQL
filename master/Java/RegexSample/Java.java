package pkg;
import com.microsoft.sqlserver.javalangextension.PrimitiveDataset;
import com.microsoft.sqlserver.javalangextension.AbstractSqlServerExtensionExecutor;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.ListIterator;
import java.util.regex.*;
public class RegexSample extends AbstractSqlServerExtension Executor {
private Pattern expr;
public RegexSample() {
// Setup the expected extension version, and class to use for input and output
dataset
executorExtensionVersion = SQLSERVER_JAVA_LANG_EXTENSION_V1;
executorInputDatase tClassName = PrimitiveDataset.class.getName();
executorOutputDatasetClassName = PrimitiveDataset.class.getName();
public PrimitiveDataset execute(PrimitiveDataset input, LinkedHashMap<String, Obje
ct> params) {
// Validate the input parameters and input column schema
validateInput(input, params);
int[] inIds = input.getIntColumn(0);
String[] inValues = input.getStringColumn(1);
int rowCount = inValues.length;
String regexExpr = (String)params.get("
expr = Pattern.compile(regexExpr);
System.out.println("regex expression: " + regexExpr);
// Lists to store the output data
LinkedList<Integer> outIds = new LinkedList<
LinkedList<String> outValues = new LinkedList<String>();
// Evaluate each row
for(int i = 0; i < rowCount; i++) {
if (check(inValues[i])) {
outIds.add(inIds[i]);
outValues.add(inValues[i]);
int outputRowCount = outValues.size();
int[] idOutputCol = new int[outputRowCount];
299
String[] valueOutputCol = new String[outputRowCount];String[] valueOutputCol = new String[outputRowCount];
// Convert the list of out// Convert the list of output columns to arraysput columns to arrays outValues.toArray(valueOutputCol);outValues.toArray(valueOutputCol);
ListIterator<Integer> it = outIds.listIterator(0);ListIterator<Integer> it = outIds.listIterator(0); int rowId = 0;int rowId = 0;
System.out.println("Output data:");System.out.println("Output data:"); while (it.hasNext()) {while (it.hasNext()) { idOutputCol[rowId] =idOutputCol[rowId] = it.next().intValue();it.next().intValue();
System.out.println("ID: " + idOutputCol[rowId] + " Value: " + valueOutputCSystem.out.println("ID: " + idOutputCol[rowId] + " Value: " + valueOutputCol[rowId]);ol[rowId]); rowId++;rowId++; }}
// Construct the output dataset// Construct the output dataset PrimitiveDataset output = new PrimitiveDataset output = new PrimitiveDataset();PrimitiveDataset();
output.addColumnMetadata(0, "ID", java.sql.Types.INTEGER, 0, 0);output.addColumnMetadata(0, "ID", java.sql.Types.INTEGER, 0, 0); output.addColumnMetadata(1, "Text", java.sql.Types.NVARCHAR, 0, 0);output.addColumnMetadata(1, "Text", java.sql.Types.NVARCHAR, 0, 0);
output.addIntColumn(0, idOutputCol, null);output.addIntColumn(0, idOutputCol, null); output.addStringColumn(1, output.addStringColumn(1, valueOutputCol);valueOutputCol);
return output;return output; }}
private void validateInput(PrimitiveDataset input, LinkedHashMap<String, Object> pprivate void validateInput(PrimitiveDataset input, LinkedHashMap<String, Object> params) {arams) { // Check for the regex expression input parameter// Check for the regex expression input parameter if (params.get("regexExpr") == null) {if (params.get("regexExpr") == null) { throw new IllegalArgumentException("Input parameter 'regexExpr' is not fouthrow new IllegalArgumentException("Input parameter 'regexExpr' is not found");nd"); }}
// The expected input schema should be at least 2 columns, (INTEGER, STRING)// The expected input schema should be at least 2 columns, (INTEGER, STRING) if (input.getColumnCount() < 2) {if (input.getColumnCount() < 2) { throw new Illethrow new IllegalArgumentException("Unexpected input schema, schema shouldgalArgumentException("Unexpected input schema, schema should be an (INTEGER, NVARCHAR or VARCHAR)");be an (INTEGER, NVARCHAR or VARCHAR)"); }}
// Check that the input column types are expected// Check that the input column types are expected if (input.getColumnType(0) != java.sql.Types.INTEGER &&if (input.getColumnType(0) != java.sql.Types.INTEGER && (input.getColumnType(1) != java.sql.Types.VARCHAR && input.getColumnTy(input.getColumnType(1) != java.sql.Types.VARCHAR && input.getColumnType(1) == java.sql.Types.NVARCHAR )) {pe(1) == java.sql.Types.NVARCHAR )) { throw new IllegalArgumentException("Unexpected input schema, schema shouldthrow new IllegalArgumentException("Unexpected input schema, schema should be an (INTEGER, NVARCHAR or VARCHAR)");be an (INTEGER, NVARCHAR or VARCHAR)"); }} }}
private boolean check(String text) {private boolean check(String text) { Matcher m = expr.matcher(text);Matcher m = expr.matcher(text);
return m.find();return m.find(); }} }}
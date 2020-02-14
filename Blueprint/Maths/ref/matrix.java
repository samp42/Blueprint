/***********************************************************************/
/**
 * Matrix functions
 * @author Samuel Proulx
 * @version 0.0
 */

//import java.util.math.*;//?

/***********************************************************************/
//List of methods
//mTranspose (int or double)
//mMultiply (int or double)
//mInverse (int or double)
//mDeterminant (int or double)
//mDisplay (int or double or String)

//private methods: determinant2x2 (int or double)
//methods for determinant in mDeterminant
/***********************************************************************/

//Transpose
public class math{

    /**
     * int matrix
     * @param matrix
     * @return transpose of matrix
     */
    public static int[][] mTranspose(int[][] matrix){
        /*
        From matrixIn:
            number of rows = 2 * number of teams (length)
            number of columns = number of matches ([0].length)
        */
        int[][] transpose = new int[matrix[0].length][matrix.length];

        for(int i=0; i<transpose.length ; i++){
            for(int j=0; j<transpose[0].length ; j++){
                transpose[i][j]=matrix[j][i];
            }
        }

        return transpose;
    }

    /**
     * double matrix
     * @param matrix
     * @return transpose of matrix
     */
    public static double[][] mTranspose(double[][] matrix){
        /*
        From matrixIn:
            number of rows = 2 * number of teams (length)
            number of columns = number of matches ([0].length)
        */
        double[][] transpose = new double[matrix[0].length][matrix.length];

        for(int i=0; i<transpose.length ; i++){
            for(int j=0; j<transpose[0].length ; j++){
                transpose[i][j]=matrix[j][i];
            }
        }

        return transpose;
    }

    /**
     * int matrix
     * @param matrix
     * @return mutliplication of matrices
     */
    public static int[][] mMultiply(int[][] matrixA, int[][] matrixB){

        int[][] product = new int[matrixA.length][matrixB[0].length];

        //check for matching number of columns (A) with number of rows (B)
        if(matrixA[0].length == matrixB.length){
            //rows of final matrix
            for(int i = 0; i < product.length; i++) {
                for (int j = 0; j < product[0].length; j++) {
                    for (int k = 0; k < matrixA[0].length; k++) {
                        product[i][j] += matrixA[i][k] * matrixB[k][j];
                    }
                }
            }
        } else {
            //throw error message if matrices cannot be multiplied together because of their size
            //throw("Error: Cannot multiply matrices of given size.");
        }

        return product;

    }

    /**
     * double matrix
     * @param matrix
     * @return mutliplication of matrices
     */
    public static double[][] mMultiply(double[][] matrixA, double[][] matrixB){

        double[][] product = new double[matrixA.length][matrixB[0].length];

        //check for matching number of columns (A) with number of rows (B)
        if(matrixA[0].length == matrixB.length){
            //rows of final matrix
            for(int i = 0; i < product.length; i++) {
                for (int j = 0; j < product[0].length; j++) {
                    for (int k = 0; k < matrixA[0].length; k++) {
                        product[i][j] += matrixA[i][k] * matrixB[k][j];
                    }
                }
            }
        } else {
            //throw error message if matrices cannot be multiplied together because of their size
            //throw("Error: Cannot multiply matrices of given size.");
        }

        return product;

    }
 

    public static int mDeterminant(int[][] matrixIn){

        //calculate determinant for any matrix
        int determinant;

        //create array that will contain all terms, each term (cell) will be multiplied or added to get final result
        int[] mDeterminant = new int[calcSize(matrixIn.length)];
        
        //placing the first term (term in first row)
        fillRow1(matrixIn, mDeterminant);

        //place middle terms
        fillMidRows(matrixIn, mDeterminant);

        //place 2x2 determinants
        //THIS IS WRONG*************************************************************  WRONG
        determinant=determinant2x2(matrix2x2);
        return determinant;
    }

    /**
     * Method to assign proper sign for determinant matrix
     * @param column
     * @param row
     * @return
     */
    private static int assignSign(int column, int row){
        Bool isPositive;
        if((column == 0 & row == 0)|| (column + row)%2 == 0){
            isPositive = true;
        } else {
            isPositive = false;
        }
        return isPositive ? 1 : -1;
    }

    /**
     * Method to assign proper sign for first row in determinant matrix
     * @param column
     * @return
     */
    private static int assignSign(int column){
        Bool isPositive;
        if(column == 0 || column%2 == 0){
            isPositive = true;
        } else {
            isPositive = false;
        }
        return isPositive ? 1 : -1;
    }

    //private methods for determinant
    /**
     * @param matrixDeterminant
     * @param calc
     * @return calc[] with first with data from first row of matrixDeterminant[][] placed
     */
    private static int[] fillRow1(int[][] matrixIn, int[] determinantMatrix){
        for(int i=0; i<determinantMatrix.length; i+=(determinantMatrix.length/matrixIn.length)){
            int n = 0;
            int num = matrixDeterminant[0][n];
            determinantMatrix[i]=assignSign(n) * num;
            n++;
        }
        return determinantMatrix;
    }

    /**
     * Fill all rows except first row and two last rows
     * @param matrixIn
     * @param determinantMatrix
     * @return
     */
    private static int[] fillMidRows(int[][] matrixIn, int[] determinantMatrix){
        final int startRow = 1;             //from row 1 
        int endRow = matrixIn.length-2;    //to row (last - 2)
        int columnNb = matrixIn[0].length; //number of columns
        int columnIndex = 1;
        int determinantIndex = 1;          //Start filling determinantMatrix at this index
        int detRowJump=determinantMatrix.length/matrixIn.length;
        
        //for loop for rows
        for(int i=startRow; i<endRow; i++){
            //for loop for columns
            for(int j=columnIndex; j<columnNb; j++){
                determinantMatrix[determinantIndex]=matrixIn[i][j];
                determinantIndex+=detRowJump; //increment position in determinantMatrix[]
                //NEED TO VERIFY FOR ROW NOT TO BE EQUAL TO SUPERIOR ROW
            }
            columnIndex = 0;
            //reset determinantIndex and increment by 1
            determinantIndex=i;
        }
        return determinantMatrix;
    }

    /**
     * @param matrix2x2
     * @return (int) determinant
     */
    private static int determinant2x2(int[][] matrix2x2){
        return (matrix2x2[0][0]*matrix2x2[1][1])-(matrix2x2[0][1]*matrix2x2[1][0]);
    }

    /**
     * @param matrix2x2
     * @return (double) determinant
     */
    private static double determinant2x2(double[][] matrix2x2){
        return (matrix2x2[0][0]*matrix2x2[1][1])-(matrix2x2[0][1]*matrix2x2[1][0]);
    }

    //determinant2x2 methods taking different parameters

    /**
     * Int
     * @param n00
     * @param n01
     * @param n10
     * @param n11
     * @return
     */
    private static int determinant2x2(int n00, int n01, int n10, int n11){
        return (n00*n11)-(n10*n01);
    }

    /**
     * Double
     * @param n00
     * @param n01
     * @param n10
     * @param n11
     * @return
     */
    private static double determinant2x2(double n00, double n01, double n10, double n11){
        return (n00*n11)-(n10*n01);
    }

    //public static double[][] mInverse(){}

    /*public static int[][] getPlayTable(int[] teams, int[][] matchSchedule){
        int[][] playtable = new int[(2*teams.length)][matchSchedule];


        return playTable;
    }*/

    /*public static double[] getPR(int[] teams, int[] score, int i){
        double prMatrix = new double[teams.length];
        
        
        return prMatrix;
    }*/

    public static int calcSize(int num){
        //either 3, greater than 3, or smaller than 3
        if(num==3){
            return 6;
        } else if(num >= 3){
            int result=6;
            int scale=4;
            for(int i=0; i<(num-2); i++){
                result *= scale;
                result += scale;
                scale++;
            }
            return result;
        } else {
            return 0;
        }
        
    }

    //Display matrices

    //display double array
    public static void mDisplay(double[][] matrix){
        for(int a=0; a<matrix[0].length; a++){
            System.out.println("Column " +  a + ": ");

            for(int b=0; b<matrix.length; b++){
                System.out.print("Row " +  b + ": ");
                System.out.println(matrix[b][a]);
            }

            System.out.println();
        }
    }
    
    //display int array
    public static void mDisplay(int[][] matrix){
        for(int a=0; a<matrix[0].length; a++){
            System.out.println("Column " +  a + ": ");
    
            for(int b=0; b<matrix.length; b++){
                System.out.print("Row " +  b + ": ");
                System.out.println(matrix[b][a]);
            }
    
            System.out.println();
        }
    }
    //display string array
    public static void mDisplay(String[][] matrix){
        for(int a=0; a<matrix[0].length; a++){
            System.out.println("Column " +  a + ": ");
    
            for(int b=0; b<matrix.length; b++){
                System.out.print("Row " +  b + ": ");
                System.out.println(matrix[b][a]);
            }

            System.out.println();
        }
    }
    
    public static void main(String[] args){

    }

}
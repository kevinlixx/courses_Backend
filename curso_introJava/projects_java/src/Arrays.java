public class Arrays {
    public static void main(String[] args) {
        String[] androidVersions = new String[17];
        String[] days = new String[7];
        String[][] cities = new String[4][2]; // 4 rows, 2 columns= 8 elements
        /*
         * +---------------------+
         * |Country   |   city   |
         * +---------------------+
         * |Kenya     |   Nairobi |
         * |Uganda    |   Kampala |
         * |Tanzania  |   Dodoma  |
         * |Rwanda    |   Kigali  |
         * +---------------------+
         */
        // cuando ya se necesita arreglos de 3 dimensiones es mejor guardar los datos en una base de datos
        String[][][] countries = new String[4][2][2]; // 4 rows, 2 columns, 2 depth= 16 elements
        
        androidVersions[0] = "Apple Pie";
        androidVersions[1] = "Banana Bread";
        androidVersions[2] = "Cupcake";
        androidVersions[3] = "Donut";
        //acceder a un elemento
        System.out.println(androidVersions[2]);

        cities[0][0] = "Colombia";
        cities[0][1] = "Bogota";
        cities[1][0] = "Mexico";
        cities[1][1] = "CDMX";
        cities[2][0] = "Argentina";
        cities[2][1] = "Buenos Aires";
        
        System.out.println(cities[1][1]);

        for (int i = 0; i < androidVersions.length; i++) {
            System.out.println(androidVersions[i]);
        }

        for (int i = 0; i < cities.length; i++) {
            for (int j = 0; j < cities[i].length; j++) {
                System.out.println(cities[i][j]);
            }
        }

        for (int i = 0; i < countries.length; i++) {
            for (int j = 0; j < countries[i].length; j++) {
                for (int k = 0; k < countries[i][j].length; k++) {
                    System.out.println(countries[i][j][k]);
                }
            }
        }
    }
    
}

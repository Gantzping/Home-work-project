{"cells":[{"source":"# Practical Exam Sample: Pet Supplies\n\nPetMind is a retailer of products for pets. They are based in the United States.\n\nPetMind sells products that are a mix of luxury items and everyday items. Luxury items include toys. Everyday items include food.\n\nThe company wants to increase sales by selling more products for some animals repeatedly. \n\nThey have been testing this approach for the last year. \n\nThey now want a report on how repeat purchases impact sales. \n\n## Data\n\nThe data is available in the table `pet_supplies`.\n\nThe dataset contains the sales records in the stores last year. \n\n| Column Name | Criteria                                                |\n|-------------|---------------------------------------------------------|\n|product_id | Nominal. The unique identifier of the product. </br>Missing values are not possible due to the database structure.|\n| category | Nominal. The category of the product, one of 6 values (Housing, Food, Toys, Equipment, Medicine, Accessory). </br>Missing values should be replaced with “Unknown”. |\n| animal | Nominal. The type of animal the product is for. One of Dog, Cat, Fish, Bird. </br>Missing values should be replaced with “Unknown”. |\n| size | Ordinal. The size of animal the product is for. Small, Medium, Large. </br>Missing values should be replaced with “Unknown”.|\n| price | Continuous. The price the product is sold at. Can be any positive value, round to 2 decimal places. </br>Missing values should be replaced with the overall median price. |\n| sales | Continuous. The value of all sales of the product in the last year. This can be any positive value, rounded to 2 decimal places. </br>Missing values should be replaced with the overall median sales. |\n| rating | Discrete. Customer rating of the product from 1 to 10. </br>Missing values should be replaced with 0. |\n| repeat_purchase | Nominal. Whether customers repeatedly buy the product (1) or not (0). </br>Missing values should be removed. |","metadata":{},"cell_type":"markdown","id":"1a05d744-840c-44c0-bfb6-8701f8d66586"},{"source":"# Task 1\n\nFrom taking a quick look at the data, you are pretty certain it isn't quite as it should be. You need to make sure all of the data is clean before you start your analysis. The table below shows what the data should look like. \n\nWrite a query to return a table that matches the description provided.\n\nDo not update the original table. \n\n| Column Name | Criteria                                                |\n|-------------|---------------------------------------------------------|\n|product_id | Nominal. The unique identifier of the product. </br>Missing values are not possible due to the database structure.|\n| category | Nominal. The category of the product, one of 6 values (Housing, Food, Toys, Equipment, Medicine, Accessory). </br>Missing values should be replaced with “Unknown”. |\n| animal | Nominal. The type of animal the product is for. One of Dog, Cat, Fish, Bird. </br>Missing values should be replaced with “Unknown”. |\n| size | Ordinal. The size of animal the product is for. Small, Medium, Large. </br>Missing values should be replaced with “Unknown”.|\n| price | Continuous. The price the product is sold at. Can be any positive value, round to 2 decimal places. </br>Missing values should be replaced with 0. |\n| sales | Continuous. The value of all sales of the product in the last year. This can be any positive value, rounded to 2 decimal places. </br>Missing values should be replaced with the overall median sales. |\n| rating | Discrete. Customer rating of the product from 1 to 10. </br>Missing values should be replaced with 0. |\n| repeat_purchase | Nominal. Whether customers repeatedly buy the product (1) or not (0). </br>Missing values should be removed. |","metadata":{},"cell_type":"markdown","id":"e1b45c62-5508-4811-ba25-e5c3634c4a75"},{"source":"","metadata":{"customType":"sql","dataFrameVariableName":"clean_data","sqlCellMode":"dataFrame","sqlSource":{"integrationId":"af2d5208-8759-4760-8fc5-287cfbb3507b","integrationType":"postgresql","type":"integration"}},"cell_type":"code","id":"df96e90c-7baf-41a2-a00d-83d07eac0b05","outputs":[],"execution_count":null},{"source":"# Task 2\n\nYou want to show whether sales are higher for repeat purchases for different animals. You also want to give a range for the sales.\n\nWrite a query to return the `animal`, `repeat_purchase` indicator and the `avg_sales`, along with the `min_sales` and `max_sales`. All values should be rounded to whole numbers. \n\nYou should use the original `pet_supplies` data for this task. ","metadata":{},"cell_type":"markdown","id":"3b8b6b20-471d-48be-991e-569e9bc0d2aa"},{"source":"","metadata":{"customType":"sql","dataFrameVariableName":"animal_sales","sqlCellMode":"dataFrame","sqlSource":{"integrationId":"af2d5208-8759-4760-8fc5-287cfbb3507b","integrationType":"postgresql","type":"integration"}},"cell_type":"code","id":"09d1e1f8-124f-4388-bc39-97f7ba2145eb","outputs":[],"execution_count":null},{"source":"# Task 3\n\nThe management team want to focus on efforts in the next year on the most popular pets - cats and dogs - for products that are bought repeatedly. \n\nWrite a query to return the `product_id`, `sales` and `rating` for the relevant products.\n\nYou should use the original `pet_supplies` data for this task.","metadata":{},"cell_type":"markdown","id":"7f1ce950-8eb9-4f9e-bdba-651d032f4463"},{"source":"","metadata":{"customType":"sql","dataFrameVariableName":"popular_pet_products","sqlCellMode":"dataFrame","sqlSource":{"integrationId":"af2d5208-8759-4760-8fc5-287cfbb3507b","integrationType":"postgresql","type":"integration"}},"cell_type":"code","id":"7efb1ac8-d280-48b3-a296-4e1eac1b1484","outputs":[],"execution_count":null}],"metadata":{"kernelspec":{"display_name":"Python 3 (ipykernel)","language":"python","name":"python3"},"language_info":{"name":"python","version":"3.8.10","mimetype":"text/x-python","codemirror_mode":{"name":"ipython","version":3},"pygments_lexer":"ipython3","nbconvert_exporter":"python","file_extension":".py"},"editor":"DataCamp Workspace"},"nbformat":4,"nbformat_minor":5}
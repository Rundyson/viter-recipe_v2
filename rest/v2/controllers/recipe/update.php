<?php
$conn = null;
$conn = checkDbConnection();
$recipe = new Recipe($conn);
// $error = [];
// $returnData = [];
if (array_key_exists("recipeid", $_GET)) {
    checkPayload($data);

    $recipe->recipe_aid = $_GET['recipeid'];
    $recipe->recipe_title = checkIndex($data, "recipe_title");
    $recipe->recipe_category = checkIndex($data, "recipe_category");
    $recipe->recipe_level = checkIndex($data, "recipe_level");
    $recipe->recipe_serving = checkIndex($data, "recipe_serving");
    $recipe->recipe_prep_time = checkIndex($data, "recipe_prep_time");
    $recipe->recipe_image = checkIndex($data, "recipe_image");
    $recipe->recipe_ingredients = json_encode($data["recipe_ingredients"]);
    $recipe->recipe_description = checkIndex($data, "recipe_description");
    $recipe->recipe_instruction = checkIndex($data, "recipe_instruction");

    $recipe->recipe_datetime = date("Y-m-d H:i:s");
    $recipe_title_old = strtolower($data["recipe_title_old"]);
    // checkId($recipe->recipe_aid);
    //checks current data to avoid same entries from being updated
// $food_name_old = checkIndex($data, 'food_name_old');
// compareName($food, $food_name_old, $food->food_name);
// checkId($food->food_aid);

    $query = checkUpdate($recipe);
    returnSuccess($recipe, "recipe", $query);
}

checkEndpoint();

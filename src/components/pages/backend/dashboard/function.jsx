export const getFoodByCategory = (categoryId, dataFood) => {
  let result = [];

  dataFood?.data.map((item) => {
    if (Number(categoryId) === Number(item.category_aid)) {
      result.push(item);
    }
  });
  return result;
};

export const getCategoryPrices = (dataCategory, dataFood) => {
  let result = [];
  let resultCategoryId = [];

  dataCategory?.data.map((categoryItem) => {
    let isResultCategoryExist = false;

    dataFood?.data.map((foodItem) => {
      //BOOLEAN CHECK IF CATEGORY EXIST IN RESULT CATEGORY ARRAY
      isResultCategoryExist = resultCategoryId.includes(
        Number(categoryItem.category_aid)
      );
      //GET INDEX OF EXISTING CATEGORY
      const getIndexCategoryItem = resultCategoryId.indexOf(
        foodItem.recipe_level
      );

      //  if category not exist add category with price
      if (
        Number(categoryItem.category_aid) === Number(foodItem.category_aid) &&
        !isResultCategoryExist
      ) {
        resultCategoryId.push(categoryItem.category_aid);
        result.push({
          ...categoryItem,
          Easy: Number(foodItem.level_aid === 5),
          Medium: Number(foodItem.level_aid === 6),
          Hard: Number(foodItem.level_aid === 7),
        });
      }

      // IF CATEGORY EXIST ADD MENU PRICE TO CATEGORY

      if (isResultCategoryExist == true && getIndexCategoryItem >= 0) {
        result[getIndexCategoryItem].Easy += Number(foodItem.level_aid);
      }
    });

    if (!isResultCategoryExist) {
      result.push({ ...categoryItem, Easy: 0});
      resultCategoryId.push(categoryItem.level_aid);
    }
  });
  return result;
};

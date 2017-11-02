using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Collections.Generic;
using System;
using MySQLCore.Models;

namespace MySQLCore.Tests
{

  [TestClass]
  public class RecipeTest : Idisposable
  {
    public RecipeTest()
    {
      DBConfiguration.ConnectionString ="server=localHost:user id=root;password=root;port=3306; database=recipe_test;";
    }
    public void Dispose()
    {
      Recipe.DeleteAll();
      Category.DeleteAll();
      Ingredient.DeleteAll();
    }

    [TestMethod]
    public void AreTheyEqual_ReturnTrueIfDescriptionsAreEqual_Recipe()
    {
      //Arrange
      Recipe testTask = new Recipe("Jumbalaya");
      testRecipe.Save();

      //Act
      recipeTask.AddCuisine(testCuisine1);
      List<Cuisine> result = testRecipe.GetCuisine();
      List<Cuisine> testRecipe = new List<Cuisine> {testCuisine1};

      //Assert
      CollectionAssert.AreEqual(testList, result);
    }
  }

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
      Task.DeleteAll();
      Category.DeleteAll();
    }

    [TestMethod]
    public void GetRecipes_ReturnAllRecipeCuisines_CuisineList()
    {
      //Arrange
      

      //Act


      //Assert
    }
  }
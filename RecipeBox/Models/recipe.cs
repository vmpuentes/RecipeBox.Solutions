using System.Collections.Generic;
using MySql.Data.MySqlClient;
using RecipeBox;
using System;

namespace RecipeBox.Models
{
  public class Recipe
  {
    private string _ingredient;
    private int _amount;
    private string _measurement;

    public Recipe(string Ingredient, int Amount = 0, string Measurement)
    {
      _ingredient = Ingredient;
      _amount = Amount;
      _measurement = Measurement;
    }

    //...GETTERS AND SETTERS WILL GO HERE...

    public static List<Recipe> GetAll()
    {
      List<Recipe> allRecipes = new List<Rec> {};
      MySqlConnection conn = DB.Connection();
      conn.Open();
      MySqlCommand cmd = conn.CreateCommand() as MySqlCommand;
      cmd.CommandText = @"SELECT * FROM ingredients;";
      MySqlDataReader rdr = cmd.ExecuteReader() as MySqlDataReader;
      while(rdr.Read())
      {
        int amountId = rdr.GetInt32(0);
        string recipeIngredient = rdr.GetString(1);
        Recipe newRecipe = new Recipe(recipeIngredient, recipeAmount, recipeMeasurement);
        allRecipes.Add(newRecipe);
      }
      conn.Close();
      if (conn != null)
      {
        conn.Dispose();
      }
      return allRecipes;
    }
  }
}

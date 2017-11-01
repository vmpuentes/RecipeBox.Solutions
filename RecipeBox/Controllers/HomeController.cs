using System.Collections.Generic;
using System;
using Microsoft.AspNetCore.Mvc;
using RecipeBox.Models;


namespace RecipeBox.Controllers
{
  public class HomeController : Controller
  {

    [HttpGet("/")]
    public ActionResult Index()
    {
      return View();
    }
  }
}

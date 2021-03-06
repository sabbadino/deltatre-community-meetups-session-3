﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using k8sdemo.config;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Options;

namespace k8sdemo.Controllers
{
    [Route("/")]
    public class HomeController : Controller
    {
        private readonly IWebHostEnvironment _hostingEnvironment;
        private readonly AppSettings _appSettings;

        public HomeController(IWebHostEnvironment hostingEnvironment, IOptions<AppSettings> appSettings)
        {
            _hostingEnvironment = hostingEnvironment;
            _appSettings = appSettings.Value;
        }
        [ApiExplorerSettings(IgnoreApi = true)]
        [HttpGet]
        public RedirectResult Index()
        {
            return new RedirectResult("~/swagger");
        }

        [HttpGet("info")]
        public string GetInfo()
        {
            return $"EnvironmentName: {_hostingEnvironment.EnvironmentName} _appSettings.MySetting: {_appSettings.MySetting}";
        }
    }
}

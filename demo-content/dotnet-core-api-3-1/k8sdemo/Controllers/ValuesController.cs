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
    [Route("api/[controller]")]
    public class ValuesController : Controller
    {
      


        // GET api/values
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/values/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        
        
    }


    //[Route("api/values")]
    //public class ValuesHelmController : Controller
    //{
    //    // GET api/values
    //    [HttpGet]
    //    public IEnumerable<string> Get()
    //    {
    //        return new string[] { "value1", "value2" };
    //    }

    //    // GET api/values/5
    //    [HttpGet("{id}")]
    //    public string Get(int id)
    //    {
    //        return "value";
    //    }

    //    // POST api/values
    //    [HttpPost]
    //    public void Post([FromBody]string value)
    //    {
    //    }

    //    // PUT api/values/5
    //    [HttpPut("{id}")]
    //    public void Put(int id, [FromBody]string value)
    //    {
    //    }

    //    // DELETE api/values/5
    //    [HttpDelete("{id}")]
    //    public void Delete(int id)
    //    {
    //    }
    //}
}
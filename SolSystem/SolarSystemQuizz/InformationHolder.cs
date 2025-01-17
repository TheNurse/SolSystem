﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SolarSystemQuizz
{
    /// <summary>
    /// holds a set of information of a object in the solarsystem
    /// </summary>
    public class InformationHolder
    {
        public string Name { get; set; }
        public int Id { get; set; }
        public Information[] Information { get; set; }
        // 0: Classtier
        // 1: Title
        // 2: Info
    }
}
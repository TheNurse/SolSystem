﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SolarSystemQuizz
{
    /// <summary>
    /// interface of a repository for solarsystem
    /// </summary>
    public interface ISolarSystemRepository
    {
        List<int> GetAllIDs();
        InformationHolder GetPlanetInfoById(int id);
        Star GetSolarSystem();
        Star GetStar();
        Planet GetPlanetById(int id);
        List<Planet> GetAllPlanets(bool getComicPictures = false);
        Moon GetMoonById(int ud);
        List<Moon> GetMoonsByParentId(int parentId, bool getComic = false);
    }
}

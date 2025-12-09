using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.AcrosticPuzzleGenerator
{
    /// <summary>
    /// Query options for the Acrostic Puzzle Generator API
    /// </summary>
    public class AcrosticPuzzleGeneratorQueryOptions
    {
        /// <summary>
        /// The keyword to spell out (3-15 letters)
        /// Example: HAPPY
        /// </summary>
        [JsonProperty("word")]
        public string Word { get; set; }

        /// <summary>
        /// Theme: random, positive, nature, adventure, friendship, learning
        /// Example: positive
        /// </summary>
        [JsonProperty("theme")]
        public string Theme { get; set; }
    }
}

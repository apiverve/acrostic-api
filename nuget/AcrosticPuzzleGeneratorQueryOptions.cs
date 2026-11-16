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
        /// The keyword to spell out, letters A-Z only (3-15 letters recommended, max 100)
        /// </summary>
        [JsonProperty("word")]
        public string Word { get; set; }

        /// <summary>
        /// Theme: random, positive, nature, adventure, friendship, learning (any other value is rejected)
        /// </summary>
        [JsonProperty("theme")]
        public string Theme { get; set; }

        /// <summary>
        /// Set to true to generate a downloadable puzzle image
        /// </summary>
        [JsonProperty("image")]
        public bool? Image { get; set; }
    }
}

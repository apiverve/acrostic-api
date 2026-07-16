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
        /// </summary>
        [JsonProperty("word")]
        public string Word { get; set; }

        /// <summary>
        /// Theme: random, positive, nature, adventure, friendship, learning
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

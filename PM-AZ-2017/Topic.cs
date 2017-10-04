using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PM_AZ_2017
{
    public class Topic
    {
        public int TopicID { get; set; }
        public string Title { get; set; }
        public string Category { get; set; }
        public string ControlName { get; set; }
        public string TextDisplay { get; set; }
        public string BaseFileName { get; set; }
    }
}
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PowershellInvokeWithConfig
{
    public class Demo
    {
        public static void Foo()
        {
            Console.Write($"Foo read {ConfigurationManager.AppSettings["Test"]} from config file.");
        }
    }
}

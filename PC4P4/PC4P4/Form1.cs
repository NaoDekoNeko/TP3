using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PC4P4
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string doubleSlash = @"\/{2}.*";
            string pybvComment = @"('.*)|(#.*)";
            string htmlComment = @"<!-{2,}.*-{2,}>";

            Regex rg = new Regex(doubleSlash);
            textBox2.Text =  rg.Replace(textBox1.Text, new MatchEvaluator(DSToJavaDoc));
            Regex rg1 = new Regex(pybvComment);
            textBox2.Text = rg1.Replace(textBox2.Text, new MatchEvaluator(PVToJavaDoc));
            Regex rg2 = new Regex(htmlComment);
            textBox2.Text = rg2.Replace(textBox2.Text, new MatchEvaluator(HToJavaDoc));
        }

        public static string DSToJavaDoc(Match match)
        {
            return "/*" + match.Value.Substring(2) + "*/\n";
        } 

        public static string PVToJavaDoc(Match match)
        {
            return "/*" + match.Value.Substring(1) + "*/\n";
        }

        public static string HToJavaDoc(Match match)
        {
            var aux = match.Value.Length - 3-4;
            return "/*" + match.Value.Substring(4, aux) + "*/\n";
        }
    }
}

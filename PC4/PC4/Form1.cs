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

namespace PC4
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Button1_Click(object sender, EventArgs e)
        {
            listBox1.Items.Clear();

            var nMathches = Regex.Matches(textBox1.Text, @"[A-Za-z]{3,}");
            foreach (Match match in nMathches)
            {
                listBox1.Items.Add(match.Value);
            }
            label1.Text = "Número de palabras: " + listBox1.Items.Count.ToString();
        }
    }
}

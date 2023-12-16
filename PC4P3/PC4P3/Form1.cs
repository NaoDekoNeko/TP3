using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PC4P3
{
    public partial class Form1 : Form
    {
        Viaje v;
        public Form1()
        {
            InitializeComponent();
        }

        private void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            v = new Normal();
        }

        private void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            v = new Silver();
        }

        private void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            v = new Gold();
        }

        private void RadioButton4_CheckedChanged(object sender, EventArgs e)
        {
            v = new Platinum();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            v = new ViajeConDescuento(v);
            double dscto = 0;
            dscto += (checkBox1.Checked ? v.DsctoPasaje() : 0.0) +
                (checkBox2.Checked ? v.DsctoAuto():0.0);
            label1.Text = "El descuento es: " + (dscto * 100).ToString() + "%";
        }
    }
}

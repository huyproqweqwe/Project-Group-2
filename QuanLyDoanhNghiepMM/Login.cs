using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyDoanhNghiepMM
{
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
       
        }

        private void lableDK_Click(object sender, EventArgs e)
        {
            Signup signup = new Signup();
            signup.Show();
            this.Hide();
          
        }

        private void label4_Click(object sender, EventArgs e)
        {
            Forget forget = new Forget();
            forget.Show();
            this.Hide();
        }

        private void cbShowpass_CheckedChanged(object sender, EventArgs e)
        {
            txtPass1.UseSystemPasswordChar = cbShowpass.Checked;
        }

       
    }
}

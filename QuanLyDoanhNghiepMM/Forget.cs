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
    public partial class Forget : Form
    {
        public Forget()
        {
            InitializeComponent();
        }

        private void lbDK_Click(object sender, EventArgs e)
        {
            Login login = new Login();
            login.Show();
            this.Hide();
        }

        private void btnConfirm_Click(object sender, EventArgs e)
        {
            ResetPass resetPass = new ResetPass();
            resetPass.Show();
            this.Hide();
        }
    }
}

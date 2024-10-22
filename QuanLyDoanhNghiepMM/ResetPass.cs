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
    public partial class ResetPass : Form
    {
        public ResetPass()
        {
            InitializeComponent();
        }

        private void cbShowpass_CheckedChanged(object sender, EventArgs e)
        {
            txtCF.UseSystemPasswordChar = cbShowpass.Checked;
            txtPass.UseSystemPasswordChar= cbShowpass.Checked;
        }
    }
}

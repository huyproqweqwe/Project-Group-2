namespace QuanLyDoanhNghiepMM
{
    partial class ResetPass
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.txtCF = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.cbShowpass = new System.Windows.Forms.CheckBox();
            this.txtPass = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.lbDK = new System.Windows.Forms.Label();
            this.btnChange = new QuanLyDoanhNghiepMM.RoundedButton();
            this.SuspendLayout();
            // 
            // txtCF
            // 
            this.txtCF.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtCF.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Bold);
            this.txtCF.Location = new System.Drawing.Point(104, 243);
            this.txtCF.Multiline = true;
            this.txtCF.Name = "txtCF";
            this.txtCF.PasswordChar = '*';
            this.txtCF.Size = new System.Drawing.Size(267, 37);
            this.txtCF.TabIndex = 20;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Century Gothic", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(77, 221);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(156, 19);
            this.label1.TabIndex = 19;
            this.label1.Text = "Confirm Password";
            // 
            // cbShowpass
            // 
            this.cbShowpass.AutoSize = true;
            this.cbShowpass.Font = new System.Drawing.Font("Century Gothic", 10.2F, System.Drawing.FontStyle.Bold);
            this.cbShowpass.Location = new System.Drawing.Point(271, 286);
            this.cbShowpass.Name = "cbShowpass";
            this.cbShowpass.Size = new System.Drawing.Size(158, 23);
            this.cbShowpass.TabIndex = 18;
            this.cbShowpass.Text = "Show Password";
            this.cbShowpass.UseVisualStyleBackColor = true;
            this.cbShowpass.CheckedChanged += new System.EventHandler(this.cbShowpass_CheckedChanged);
            // 
            // txtPass
            // 
            this.txtPass.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtPass.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Bold);
            this.txtPass.Location = new System.Drawing.Point(104, 167);
            this.txtPass.Multiline = true;
            this.txtPass.Name = "txtPass";
            this.txtPass.PasswordChar = '*';
            this.txtPass.Size = new System.Drawing.Size(267, 37);
            this.txtPass.TabIndex = 17;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Century Gothic", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(77, 145);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(130, 19);
            this.label3.TabIndex = 16;
            this.label3.Text = "New Password";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Century Gothic", 16.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.ForeColor = System.Drawing.Color.Red;
            this.label5.Location = new System.Drawing.Point(111, 46);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(258, 34);
            this.label5.TabIndex = 32;
            this.label5.Text = "Change Password";
            // 
            // lbDK
            // 
            this.lbDK.AutoSize = true;
            this.lbDK.Font = new System.Drawing.Font("Century Gothic", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbDK.ForeColor = System.Drawing.Color.Red;
            this.lbDK.Location = new System.Drawing.Point(152, 602);
            this.lbDK.Name = "lbDK";
            this.lbDK.Size = new System.Drawing.Size(141, 19);
            this.lbDK.TabIndex = 33;
            this.lbDK.Text = "Back To FORGET";
            // 
            // btnChange
            // 
            this.btnChange.BackColor = System.Drawing.Color.Black;
            this.btnChange.BackgroundColor = System.Drawing.Color.LightGray;
            this.btnChange.BorderColor = System.Drawing.Color.DarkGray;
            this.btnChange.BorderSize = 2;
            this.btnChange.cornerRadius = 20;
            this.btnChange.FlatAppearance.BorderSize = 0;
            this.btnChange.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnChange.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnChange.ForeColor = System.Drawing.Color.White;
            this.btnChange.HoverColor = System.Drawing.Color.Gray;
            this.btnChange.Location = new System.Drawing.Point(104, 324);
            this.btnChange.Name = "btnChange";
            this.btnChange.Size = new System.Drawing.Size(267, 36);
            this.btnChange.TabIndex = 30;
            this.btnChange.Text = "Change";
            this.btnChange.UseVisualStyleBackColor = false;
            // 
            // ResetPass
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(450, 630);
            this.Controls.Add(this.lbDK);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.btnChange);
            this.Controls.Add(this.txtCF);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.cbShowpass);
            this.Controls.Add(this.txtPass);
            this.Controls.Add(this.label3);
            this.Name = "ResetPass";
            this.Text = "ResetPass";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtCF;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.CheckBox cbShowpass;
        private System.Windows.Forms.TextBox txtPass;
        private System.Windows.Forms.Label label3;
        private RoundedButton btnChange;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label lbDK;
    }
}
using System;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Windows.Forms;

namespace QuanLyDoanhNghiepMM
{
    public class RoundedButton : Button
    {
        public Color BorderColor { get; set; } = Color.Black; 
        public Color BackgroundColor { get; set; } = Color.Black; 
        public Color HoverColor { get; set; } = Color.Black; 
        public int BorderSize { get; set; } = 4;
        public int cornerRadius { get; set; } = 20;// Độ dày viền

        public RoundedButton()
        {
            this.FlatStyle = FlatStyle.Flat; 
            this.BackColor = BackgroundColor; 
            this.FlatAppearance.BorderSize = 0; 
        }

        protected override void OnPaint(PaintEventArgs pevent)
        {
            base.OnPaint(pevent);

            
            using (GraphicsPath path = new GraphicsPath())
            {
                int cornerRadius = this.Height / 1; 

                path.AddArc(0, 0, cornerRadius, cornerRadius, 180, 90); 
                path.AddArc(this.Width - cornerRadius, 0, cornerRadius, cornerRadius, 270, 90); 
                path.AddArc(this.Width - cornerRadius, this.Height - cornerRadius, cornerRadius, cornerRadius, 0, 100); // Góc phải dưới
                path.AddArc(0, this.Height - cornerRadius, cornerRadius, cornerRadius, 90, 90); 
                path.CloseAllFigures();

                this.Region = new Region(path); 

                
                using (SolidBrush brush = new SolidBrush(this.BackColor))
                {
                    pevent.Graphics.FillPath(brush, path);
                }

             
                using (Pen pen = new Pen(BorderColor, BorderSize))
                {
                    pevent.Graphics.DrawPath(pen, path);
                }

               
                TextRenderer.DrawText(pevent.Graphics, this.Text, this.Font, this.ClientRectangle, this.ForeColor, TextFormatFlags.HorizontalCenter | TextFormatFlags.VerticalCenter);
            }
        }

        protected override void OnMouseEnter(EventArgs e)
        {
            base.OnMouseEnter(e);
            this.BackColor = HoverColor; 
        }

        protected override void OnMouseLeave(EventArgs e)
        {
            base.OnMouseLeave(e);
            this.BackColor = BackgroundColor; 
        }
    }
}

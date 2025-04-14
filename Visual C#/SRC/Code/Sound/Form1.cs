namespace Sound
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        System.Media.SoundPlayer chimes = new System.Media.SoundPlayer(Imported.chimes);

        private void button1_Click(object sender, EventArgs e)
        {
            chimes.Play();
            label1.Text = "Playing chimes...";
              
        }
    }
}
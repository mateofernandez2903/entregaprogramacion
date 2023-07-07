public partial class login : Form
{
public login()
{
InitializeComponent();
}
private void btnEntrar_Click(object sender, EventArgs e)
{
try
{
Program.cn.Open("prueba", txtUsuario.Text, txtContraseña.Text);
}
catch
{
MessageBox.Show("Usuario o contraseña erròneos");
return;
}
Program.cn.CursorLocation = ADODB.CursorLocationEnum.adUseClient;
Program.DoyPermisos(txtUsuario.Text);
this.Close();
}
private void btnSalir_Click(object sender, EventArgs e)
{
Menu frmMenu = new Menu();
this.Hide();
frmMenu.Show();
}
}

using System;
using System.Text;
using System.Data;
using System.Windows.Forms;
using System.Data.SqlClient;
using DevComponents.DotNetBar;
using QuanLyHoSoCongChuc.Utils;

namespace QuanLyHoSoCongChuc
{
    public partial class FrmKetNoiCSDL : Office2007Form 
    {
        private bool connSuccess = false;

        public FrmKetNoiCSDL()
        {
            InitializeComponent();
        }

        private void frmKetNoiCSDL_Load(object sender, EventArgs e)
        {
            cmb.SelectedIndex = 0;
        }
        private void btnCancel_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btnOK_Click(object sender, EventArgs e)
        {
            if (!connSuccess)
            {
                MessageBoxEx.Show("Kết nối thất bại, vui lòng xem lại thông tin kết nối!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
            if (cmbDatabase.SelectedIndex == -1)
            {
                MessageBoxEx.Show("Bạn chưa chọn database!", "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            MessageBoxEx.Show("Kết nối thành công, chương trình sẽ tự động thoát để xác lập thông tin cấu hình!", "SUCCESSED", MessageBoxButtons.OK, MessageBoxIcon.Information);
            SaveConnectionInfo();
            this.Close();
        }

        private void SaveConnectionInfo()
        {
            XMLProvider _provider = new XMLProvider();

            // Create config file
            if (cmb.SelectedIndex == 0)
            {
                _provider.XMLWriter(GlobalVars.g_strPathConfig, txtServer.Text, cmbDatabase.Text, "true");
            }
            else
            {
                _provider.XMLWriter(GlobalVars.g_strPathConfig, txtServer.Text, cmbDatabase.Text, txtUsername.Text, txtPassword.Text, "false");
            }

        }

        private void btnTestConnection_Click(object sender, EventArgs e)
        {
            //Quyền Windows
            if (cmb.SelectedIndex == 0)
            {
                cmbDatabase.Items.Clear();
                SqlConnection m_Conn = new SqlConnection("Data Source=" + txtServer.Text + ";Initial Catalog=master;Integrated Security=True;");
                SqlCommand m_Cmd = new SqlCommand("SP_DATABASES", m_Conn);
                SqlDataReader m_DReader;

                try
                {
                    m_Conn.Open();

                    // Show waiting form
                    GlobalVars.PreLoading();
                    //------- E ---------

                    m_DReader = m_Cmd.ExecuteReader();
                    while (m_DReader.Read())
                    {
                        cmbDatabase.Items.Add(m_DReader[0].ToString());
                    }
                    connSuccess = true;

                    // Hide waiting form
                    GlobalVars.PosLoading();
                    //------- E ---------

                    MessageBoxEx.Show("Kết nối thành công!", "SUCCESSED", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                catch (SqlException sqlEx)
                {
                    MessageBoxEx.Show(sqlEx.Message, "FAILED", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                }
                finally
                {
                    if (m_Conn.State == ConnectionState.Open)
                    {
                        m_Conn.Close();
                    }

                    m_Conn.Dispose();
                    m_Cmd.Dispose();
                }
                txtUsername.Enabled = false;
                txtPassword.Enabled = false;
            }

            //Quyền SQL Server
            if (cmb.SelectedIndex == 1)
            {
                cmbDatabase.Items.Clear();
                SqlConnection m_Conn = new SqlConnection("Data Source=" + txtServer.Text + ";Initial Catalog=master;User Id=" + txtUsername.Text + ";Password=" + txtPassword.Text + ";");
                SqlCommand m_Cmd = new SqlCommand("SP_DATABASES", m_Conn);
                SqlDataReader m_DReader;

                try
                {
                    m_Conn.Open();

                    // Show waiting form
                    GlobalVars.PreLoading();
                    //------- E ---------

                    m_DReader = m_Cmd.ExecuteReader();
                    while (m_DReader.Read())
                    {
                        cmbDatabase.Items.Add(m_DReader[0].ToString());
                    }
                    connSuccess = true;

                    // Hide waiting form
                    GlobalVars.PosLoading();
                    //------- E ---------

                    MessageBoxEx.Show("Kết nối thành công!", "SUCCESSED", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                catch (SqlException sqlEx)
                {
                    MessageBoxEx.Show(sqlEx.Message, "FAILED", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                }
                finally
                {
                    if (m_Conn.State == ConnectionState.Open)
                        m_Conn.Close();

                    m_Conn.Dispose();
                    m_Cmd.Dispose();
                }
            }
        }

        private void cmb_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cmb.SelectedIndex == 0)
            {
                txtUsername.Enabled = false;
                txtPassword.Enabled = false;
            }
            else
            {
                txtUsername.Enabled = true;
                txtPassword.Enabled = true;
            }
        }

        private void FrmKetNoiCSDL_FormClosed(object sender, FormClosedEventArgs e)
        {
            Application.Exit();
        }
    }
}
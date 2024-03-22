using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using EstateAgency.DataBase;
using System.Windows.Shapes;

namespace EstateAgency
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        VinidiktovDay1Entities DB = new VinidiktovDay1Entities();
        public MainWindow()
        {
            InitializeComponent();
            InfoAgents.ItemsSource = DB.Agents.ToList();
            InfoClients.ItemsSource = DB.Clients.ToList();
        }

        private void AddAgent_Click(object sender, RoutedEventArgs e)
        {
            AddOrUpdateRealtor add = new AddOrUpdateRealtor();
            add.Show();
            Close();
        }

        private void RedactAgent_Click(object sender, RoutedEventArgs e)
        {
            var select = (Agents)InfoAgents.SelectedItem;
            if (select == null)
            {
                MessageBox.Show("Необходимо выбрать строку", "Ошибка",
                        MessageBoxButton.OK, MessageBoxImage.Error);
            }
            else
            {
                AddOrUpdateRealtor add = new AddOrUpdateRealtor(select.ID_Agent);
                add.Show();
                Close();
            }
        }

        private void DeleteAgent_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var dialogwindow = MessageBox.Show("Вы уверены, что хотите удалить данные?",
                    "Подтверждение действия!",
                        MessageBoxButton.YesNo, MessageBoxImage.Question);
                if (dialogwindow == MessageBoxResult.Yes)
                {
                    var selectrow = (Agents)InfoAgents.SelectedItem;
                    if (selectrow != null)
                    {
                        var searchTable = DB.Agents.FirstOrDefault(x => x.ID_Agent == selectrow.ID_Agent);
                        DB.Agents.Remove(searchTable);
                        DB.SaveChanges();
                        DB = new VinidiktovDay1Entities();
                        InfoAgents.ItemsSource = DB.Agents.ToList();
                    }
                    else
                    {
                        MessageBox.Show("Необходимо выбрать строку", "Ошибка",
                        MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
            }
            catch { }
        }

        private void AddClient_Click(object sender, RoutedEventArgs e)
        {
            AddOrUpdateClient add = new AddOrUpdateClient();
            add.Show();
            Close();
        }

        private void RedactClient_Click(object sender, RoutedEventArgs e)
        {
            var select = (Clients)InfoClients.SelectedItem;
            if (select == null)
            {
                MessageBox.Show("Необходимо выбрать строку", "Ошибка",
                        MessageBoxButton.OK, MessageBoxImage.Error);
            }
            else
            {
                AddOrUpdateClient add = new AddOrUpdateClient(select.ID_Client);
                add.Show();
                Close();
            }
        }

        private void DeleteCLient_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                var dialogwindow = MessageBox.Show("Вы уверены, что хотите удалить данные?",
                    "Подтверждение действия!",
                        MessageBoxButton.YesNo, MessageBoxImage.Question);
                if (dialogwindow == MessageBoxResult.Yes)
                {
                    var selectrow = (Clients)InfoClients.SelectedItem;
                    if (selectrow != null)
                    {
                        var searchTable = DB.Clients.FirstOrDefault(x => x.ID_Client == selectrow.ID_Client);
                        DB.Clients.Remove(searchTable);
                        DB.SaveChanges();
                        DB = new VinidiktovDay1Entities();
                        InfoClients.ItemsSource = DB.Clients.ToList();
                    }
                    else
                    {
                        MessageBox.Show("Необходимо выбрать строку", "Ошибка",
                        MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
            }
            catch { }
        }

        private void SearchClientsTB_TextChanged(object sender, TextChangedEventArgs e)
        {
            try
            {
                InfoClients.ItemsSource = DB.Clients.ToList();
                if (SearchClientsTB.Text.Length == 0)
                {
                    InfoClients.ItemsSource = DB.Clients.ToList();
                }
                else
                {
                    string searchText = SearchClientsTB.Text;
                    var filteredRecords = DB.Clients.Where(r => r.FirstName.ToLower().StartsWith(searchText.ToLower()) |
                    r.MiddleName.ToLower().StartsWith(searchText.ToLower()) |
                    r.LastName.ToString().ToLower().StartsWith(searchText.ToLower()));
                    InfoClients.ItemsSource = filteredRecords.ToList();
                }
            }
            catch { MessageBox.Show("Проблемы поиска", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error); }
        }

        private void SearchAgentsTB_TextChanged(object sender, TextChangedEventArgs e)
        {
            try
            {
                InfoAgents.ItemsSource = DB.Agents.ToList();
                if (SearchAgentsTB.Text.Length == 0)
                {
                    InfoAgents.ItemsSource = DB.Agents.ToList();
                }
                else
                {
                    string searchText = SearchAgentsTB.Text;
                    var filteredRecords = DB.Agents.Where(r => r.FirstName.ToLower().StartsWith(searchText.ToLower()) |
                    r.MiddleName.ToLower().StartsWith(searchText.ToLower()) |
                    r.LastName.ToLower().StartsWith(searchText.ToLower()));
                    InfoAgents.ItemsSource = filteredRecords.ToList();
                }
            }
            catch
            {
                MessageBox.Show("Проблемы поиска", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}

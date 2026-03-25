Add-Type -AssemblyName PresentationFramework
Add-Type -AssemblyName PresentationCore
Add-Type -AssemblyName WindowsBase

[xml]$xaml = @"
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        Title="Ousama Web App"
        Width="1200"
        Height="720"
        WindowStartupLocation="CenterScreen"
        WindowStyle="None"
        ResizeMode="CanResize"
        AllowsTransparency="True"
        Background="Transparent"
        FontFamily="Segoe UI">

    <Window.Resources>
        <SolidColorBrush x:Key="BgMain" Color="#020617"/>
        <SolidColorBrush x:Key="BorderSoft" Color="#1E293B"/>
    </Window.Resources>

    <Border Margin="10"
            Background="{DynamicResource BgMain}"
            BorderBrush="{DynamicResource BorderSoft}"
            BorderThickness="1.2"
            CornerRadius="16">
        <Grid>
            <Grid.RowDefinitions>
                <RowDefinition Height="42"/>
                <RowDefinition Height="*"/>
            </Grid.RowDefinitions>

            <!-- Top bar -->
            <Border Grid.Row="0"
                    Background="#020817"
                    CornerRadius="16,16,0,0"
                    BorderBrush="{DynamicResource BorderSoft}"
                    BorderThickness="0,0,0,1">
                <Grid x:Name="DragBar" Margin="10,6,10,6">
                    <TextBlock Text="Ousama Web App"
                               HorizontalAlignment="Center"
                               VerticalAlignment="Center"
                               Foreground="White"
                               FontSize="14"
                               FontWeight="Bold"/>
                </Grid>
            </Border>

            <!-- Web site inside -->
            <WebBrowser x:Name="WebView"
                        Grid.Row="1"
                        Margin="6"
                        HorizontalAlignment="Stretch"
                        VerticalAlignment="Stretch"/>
        </Grid>
    </Border>
</Window>
"@

$reader  = New-Object System.Xml.XmlNodeReader $xaml
$window  = [Windows.Markup.XamlReader]::Load($reader)

$DragBar = $window.FindName("DragBar")
$WebView = $window.FindName("WebView")

# تحميل موقعك داخل التطبيق
$WebView.Navigate("https://ousama.site/")

# سحب النافذة
$DragBar.Add_MouseLeftButtonDown({
    $window.DragMove()
})

$window.ShowDialog() | Out-Null

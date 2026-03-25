Add-Type -AssemblyName PresentationFramework

[xml]$xaml = @"
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        Title="Ousama Web App"
        Width="1200"
        Height="720"
        WindowStartupLocation="CenterScreen"
        WindowStyle="None"
        AllowsTransparency="True"
        Background="Transparent">
    <Border Margin="10" Background="#020617" BorderBrush="#1E293B" BorderThickness="1.2" CornerRadius="16">
        <Grid>
            <Grid.RowDefinitions>
                <RowDefinition Height="42"/>
                <RowDefinition Height="*"/>
            </Grid.RowDefinitions>

            <Border Grid.Row="0" Background="#020817" CornerRadius="16,16,0,0" BorderBrush="#1E293B" BorderThickness="0,0,0,1">
                <Grid x:Name="DragBar" Margin="10,6,10,6">
                    <TextBlock Text="Ousama Web App"
                               HorizontalAlignment="Center"
                               VerticalAlignment="Center"
                               Foreground="White"
                               FontSize="14"/>
                </Grid>
            </Border>

            <WebView2 x:Name="WebView2" Grid.Row="1" Margin="6"/>
        </Grid>
    </Border>
</Window>
"@

$reader = New-Object System.Xml.XmlNodeReader $xaml
$window = [Windows.Markup.XamlReader]::Load($reader)

$DragBar = $window.FindName("DragBar")
$WebView2 = $window.FindName("WebView2")

# إضافة WebView2 Runtime
Add-Type -Path "C:\Program Files (x86)\Microsoft\EdgeWebView\Application\*.dll" -ErrorAction SilentlyContinue

$WebView2.Source = "https://ousama.site/"

$DragBar.Add_MouseLeftButtonDown({ $window.DragMove() })

$window.ShowDialog() | Out-Null

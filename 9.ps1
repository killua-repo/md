Add-Type -AssemblyName PresentationFramework

[xml]$xaml = @"
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        Title="Ousama Studio"
        Width="1100"
        Height="640"
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
                    <Grid.ColumnDefinitions>
                        <ColumnDefinition Width="*"/>
                        <ColumnDefinition Width="Auto"/>
                    </Grid.ColumnDefinitions>

                    <TextBlock Grid.Column="0"
                               Text="Ousama Studio"
                               HorizontalAlignment="Center"
                               VerticalAlignment="Center"
                               Foreground="White"
                               FontSize="14"/>

                    <Button Grid.Column="1"
                            Width="110"
                            Height="28"
                            Background="#2563EB"
                            BorderThickness="0"
                            Foreground="White"
                            Content="Open Site"
                            Cursor="Hand"/>
                </Grid>
            </Border>

            <Border Grid.Row="1" Background="#020617" BorderBrush="#1E293B" BorderThickness="1" CornerRadius="0,0,16,16" Padding="16">
                <StackPanel VerticalAlignment="Center" HorizontalAlignment="Center">
                    <TextBlock Text="Max"
                               FontSize="36"
                               FontWeight="Bold"
                               HorizontalAlignment="Center"
                               Margin="0,0,0,12"/>
                    <TextBlock Text="Click 'Open Site' above to launch ousama.site in browser"
                               Foreground="#94A3B8"
                               HorizontalAlignment="Center"
                               TextWrapping="Wrap"/>
                </StackPanel>
            </Border>
        </Grid>
    </Border>
</Window>
"@

$reader = New-Object System.Xml.XmlNodeReader $xaml
$window = [Windows.Markup.XamlReader]::Load($reader)

$DragBar = $window.FindName("DragBar")
$BtnSite = $window.FindName("BtnSite")

$BtnSite.Add_Click({
    Start-Process "https://ousama.site/"
})

$DragBar.Add_MouseLeftButtonDown({
    $window.DragMove()
})

$window.ShowDialog() | Out-Null

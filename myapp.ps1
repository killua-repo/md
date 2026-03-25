Add-Type -AssemblyName PresentationFramework
Add-Type -AssemblyName PresentationCore
Add-Type -AssemblyName WindowsBase

[xml]$xaml = @"
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        Title="Ousama Studio"
        Width="1100"
        Height="640"
        MinWidth="920"
        MinHeight="520"
        WindowStartupLocation="CenterScreen"
        WindowStyle="None"
        ResizeMode="CanResize"
        AllowsTransparency="True"
        Background="Transparent"
        FontFamily="Segoe UI">

    <Window.Resources>
        <SolidColorBrush x:Key="BgMain" Color="#020617"/>
        <SolidColorBrush x:Key="BgTop" Color="#020817"/>
        <SolidColorBrush x:Key="BgCard" Color="#020617"/>
        <SolidColorBrush x:Key="BorderSoft" Color="#1E293B"/>
        <SolidColorBrush x:Key="Accent" Color="#2563EB"/>
        <SolidColorBrush x:Key="AccentSoft" Color="#1D4ED8"/>
        <SolidColorBrush x:Key="TextMain" Color="#E5E7EB"/>
        <SolidColorBrush x:Key="TextMuted" Color="#94A3B8"/>

        <Style x:Key="TopButton" TargetType="Button">
            <Setter Property="Foreground" Value="{DynamicResource TextMain}"/>
            <Setter Property="Background" Value="#020617"/>
            <Setter Property="BorderBrush" Value="{DynamicResource BorderSoft}"/>
            <Setter Property="BorderThickness" Value="1"/>
            <Setter Property="Padding" Value="14,7"/>
            <Setter Property="Margin" Value="0,0,8,0"/>
            <Setter Property="Cursor" Value="Hand"/>
            <Setter Property="FontSize" Value="13"/>
            <Setter Property="FontWeight" Value="SemiBold"/>
            <Setter Property="MinWidth" Value="110"/>
        </Style>

        <Style x:Key="PrimaryButton" TargetType="Button">
            <Setter Property="Foreground" Value="White"/>
            <Setter Property="Background" Value="{DynamicResource Accent}"/>
            <Setter Property="BorderBrush" Value="{DynamicResource AccentSoft}"/>
            <Setter Property="BorderThickness" Value="1"/>
            <Setter Property="Padding" Value="10,7"/>
            <Setter Property="Margin" Value="0,0,8,0"/>
            <Setter Property="Cursor" Value="Hand"/>
            <Setter Property="FontSize" Value="13"/>
            <Setter Property="FontWeight" Value="SemiBold"/>
            <Setter Property="MinWidth" Value="140"/>
        </Style>

        <Style x:Key="WinBtn" TargetType="Button">
            <Setter Property="Width" Value="38"/>
            <Setter Property="Height" Value="26"/>
            <Setter Property="Margin" Value="0,0,6,0"/>
            <Setter Property="Background" Value="#020617"/>
            <Setter Property="BorderBrush" Value="#1E293B"/>
            <Setter Property="BorderThickness" Value="1"/>
            <Setter Property="Foreground" Value="{DynamicResource TextMain}"/>
            <Setter Property="Cursor" Value="Hand"/>
            <Setter Property="FontWeight" Value="Bold"/>
        </Style>

        <Style TargetType="{x:Type RepeatButton}">
            <Setter Property="Template">
                <Setter.Value>
                    <ControlTemplate TargetType="{x:Type RepeatButton}">
                        <Border Background="Transparent"/>
                    </ControlTemplate>
                </Setter.Value>
            </Setter>
        </Style>

        <Style TargetType="{x:Type Thumb}">
            <Setter Property="Template">
                <Setter.Value>
                    <ControlTemplate TargetType="{x:Type Thumb}">
                        <Border Width="6" Background="#4B5563" CornerRadius="4"/>
                    </ControlTemplate>
                </Setter.Value>
            </Setter>
        </Style>

        <Style TargetType="{x:Type ScrollBar}">
            <Setter Property="Width" Value="8"/>
            <Setter Property="Background" Value="Transparent"/>
            <Setter Property="Template">
                <Setter.Value>
                    <ControlTemplate TargetType="{x:Type ScrollBar}">
                        <Grid Width="8" Background="Transparent">
                            <Track x:Name="PART_Track" IsDirectionReversed="true">
                                <Track.DecreaseRepeatButton>
                                    <RepeatButton Command="ScrollBar.PageUpCommand"/>
                                </Track.DecreaseRepeatButton>
                                <Track.Thumb>
                                    <Thumb/>
                                </Track.Thumb>
                                <Track.IncreaseRepeatButton>
                                    <RepeatButton Command="ScrollBar.PageDownCommand"/>
                                </Track.IncreaseRepeatButton>
                            </Track>
                        </Grid>
                    </ControlTemplate>
                </Setter.Value>
            </Setter>
        </Style>
    </Window.Resources>

    <Border Margin="10"
            Background="{DynamicResource BgMain}"
            BorderBrush="{DynamicResource BorderSoft}"
            BorderThickness="1.2"
            CornerRadius="16">
        <Grid>
            <Grid.RowDefinitions>
                <RowDefinition Height="52"/>
                <RowDefinition Height="48"/>
                <RowDefinition Height="*"/>
                <RowDefinition Height="130"/>
            </Grid.RowDefinitions>

            <!-- Top bar -->
            <Border Grid.Row="0"
                    Background="{DynamicResource BgTop}"
                    CornerRadius="16,16,0,0"
                    BorderBrush="{DynamicResource BorderSoft}"
                    BorderThickness="0,0,0,1">
                <Grid x:Name="DragBar" Margin="12,8,12,8">
                    <Grid.ColumnDefinitions>
                        <ColumnDefinition Width="*"/>
                        <ColumnDefinition Width="Auto"/>
                    </Grid.ColumnDefinitions>

                    <StackPanel Orientation="Horizontal" VerticalAlignment="Center">
                        <Border Width="30" Height="30"
                                Background="{DynamicResource Accent}"
                                CornerRadius="10"
                                Margin="0,0,10,0">
                            <TextBlock Text="O"
                                       HorizontalAlignment="Center"
                                       VerticalAlignment="Center"
                                       Foreground="White"
                                       FontWeight="Bold"/>
                        </Border>
                        <StackPanel>
                            <TextBlock x:Name="TxtAppTitle"
                                       Text="Ousama Studio"
                                       FontSize="14"
                                       FontWeight="Bold"/>
                            <TextBlock Text="Atelier ECG Arrhythmia Studio"
                                       FontSize="11"
                                       Foreground="{DynamicResource TextMuted}"/>
                        </StackPanel>
                    </StackPanel>

                    <StackPanel Grid.Column="1"
                                Orientation="Horizontal"
                                HorizontalAlignment="Right"
                                VerticalAlignment="Center">
                        <Button x:Name="BtnOpenSite"
                                Style="{StaticResource PrimaryButton}"
                                Content="Open ousama.site"/>
                        <Button x:Name="BtnMin" Style="{StaticResource WinBtn}" Content="—"/>
                        <Button x:Name="BtnMax" Style="{StaticResource WinBtn}" Content="□"/>
                        <Button x:Name="BtnClose" Style="{StaticResource WinBtn}" Content="✕" Background="#3A1010" BorderBrush="#6B1D1D"/>
                    </StackPanel>
                </Grid>
            </Border>

            <!-- Secondary bar -->
            <Border Grid.Row="1"
                    Background="#020617"
                    BorderBrush="{DynamicResource BorderSoft}"
                    BorderThickness="0,0,0,1">
                <Grid Margin="14,6,14,6">
                    <Grid.ColumnDefinitions>
                        <ColumnDefinition Width="*"/>
                        <ColumnDefinition Width="260"/>
                    </Grid.ColumnDefinitions>

                    <StackPanel Orientation="Horizontal">
                        <Button Style="{StaticResource TopButton}" Content="Dashboard"/>
                        <Button Style="{StaticResource TopButton}" Content="ECG Data"/>
                        <Button Style="{StaticResource TopButton}" Content="Models"/>
                    </StackPanel>

                    <TextBox Grid.Column="1"
                             Height="32"
                             Background="#020617"
                             BorderBrush="{DynamicResource BorderSoft}"
                             BorderThickness="1"
                             Foreground="{DynamicResource TextMain}"
                             Padding="10,4"
                             Text="Search..."
                             FontSize="12"/>
                </Grid>
            </Border>

            <!-- Main content -->
            <Grid Grid.Row="2" Margin="14,14,14,8">
                <Grid.ColumnDefinitions>
                    <ColumnDefinition Width="*"/>
                    <ColumnDefinition Width="*"/>
                </Grid.ColumnDefinitions>

                <Border Grid.Column="0" Background="{DynamicResource BgCard}"
                        BorderBrush="{DynamicResource BorderSoft}"
                        BorderThickness="1"
                        CornerRadius="14"
                        Padding="16"
                        Margin="0,0,8,0">
                    <Grid>
                        <TextBlock Text="Max"
                                   HorizontalAlignment="Center"
                                   VerticalAlignment="Center"
                                   FontSize="32"
                                   FontWeight="Bold"
                                   Foreground="{DynamicResource TextMain}"/>
                    </Grid>
                </Border>

                <Border Grid.Column="1" Background="{DynamicResource BgCard}"
                        BorderBrush="{DynamicResource BorderSoft}"
                        BorderThickness="1"
                        CornerRadius="14"
                        Padding="16"
                        Margin="8,0,0,0">
                    <StackPanel>
                        <TextBlock Text="Welcome"
                                   FontSize="20"
                                   FontWeight="Bold"
                                   Margin="0,0,0,6"/>
                        <TextBlock Text="This desktop shell can open your online atelier site in the browser."
                                   Foreground="{DynamicResource TextMuted}"
                                   TextWrapping="Wrap"/>
                        <TextBlock Text="Click the 'Open ousama.site' button in the top bar to launch the website."
                                   Foreground="{DynamicResource TextMuted}"
                                   Margin="0,10,0,0"
                                   TextWrapping="Wrap"/>
                    </StackPanel>
                </Border>
            </Grid>

            <!-- Log -->
            <Border Grid.Row="3"
                    Margin="14,0,14,14"
                    Background="{DynamicResource BgCard}"
                    BorderBrush="{DynamicResource BorderSoft}"
                    BorderThickness="1"
                    CornerRadius="14"
                    Padding="10">
                <Grid>
                    <Grid.RowDefinitions>
                        <RowDefinition Height="Auto"/>
                        <RowDefinition Height="*"/>
                    </Grid.RowDefinitions>

                    <Grid Margin="0,0,0,8">
                        <Grid.ColumnDefinitions>
                            <ColumnDefinition Width="*"/>
                            <ColumnDefinition Width="Auto"/>
                        </Grid.ColumnDefinitions>
                        <TextBlock Text="Activity"
                                   FontSize="14"
                                   FontWeight="Bold"/>
                        <Button x:Name="BtnClearLog"
                                Grid.Column="1"
                                Width="80"
                                Height="26"
                                Background="#020617"
                                BorderBrush="{DynamicResource BorderSoft}"
                                BorderThickness="1"
                                Foreground="{DynamicResource TextMain}"
                                Content="Clear"/>
                    </Grid>

                    <TextBox x:Name="LogBox"
                             Grid.Row="1"
                             Background="#020617"
                             Foreground="#BBF7D0"
                             BorderBrush="{DynamicResource BorderSoft}"
                             BorderThickness="1"
                             FontFamily="Consolas"
                             FontSize="12"
                             Padding="8"
                             AcceptsReturn="True"
                             IsReadOnly="True"
                             VerticalScrollBarVisibility="Auto"
                             TextWrapping="Wrap"/>
                </Grid>
            </Border>
        </Grid>
    </Border>
</Window>
"@

$reader  = New-Object System.Xml.XmlNodeReader $xaml
$window  = [Windows.Markup.XamlReader]::Load($reader)

$DragBar   = $window.FindName("DragBar")
$BtnOpenSite = $window.FindName("BtnOpenSite")
$BtnMin    = $window.FindName("BtnMin")
$BtnMax    = $window.FindName("BtnMax")
$BtnClose  = $window.FindName("BtnClose")
$BtnClearLog = $window.FindName("BtnClearLog")
$LogBox    = $window.FindName("LogBox")

$script:IsMax = $false

function Write-Log {
    param([string]$Message)
    $t = Get-Date -Format "HH:mm:ss"
    $script:LogBox.AppendText("[$t] $Message`r`n")
    $script:LogBox.ScrollToEnd()
}

$DragBar.Add_MouseLeftButtonDown({
    if ($_.ClickCount -eq 2) {
        if ($script:IsMax) {
            $window.WindowState = "Normal"
            $script:IsMax = $false
        } else {
            $window.WindowState = "Maximized"
            $script:IsMax = $true
        }
    } else {
        $window.DragMove()
    }
})

$BtnClose.Add_Click({ $window.Close() })
$BtnMin.Add_Click({ $window.WindowState = "Minimized" })
$BtnMax.Add_Click({
    if ($script:IsMax) {
        $window.WindowState = "Normal"
        $script:IsMax = $false
    } else {
        $window.WindowState = "Maximized"
        $script:IsMax = $true
    }
})

$BtnOpenSite.Add_Click({
    Start-Process "https://ousama.site/"
    Write-Log "Opened https://ousama.site/ in browser."
})

$BtnClearLog.Add_Click({
    $LogBox.Clear()
})

Write-Log "Ousama Studio started."

$window.ShowDialog() | Out-Null

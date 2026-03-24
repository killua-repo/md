# Atelier ECG - Compiled Application
# Generated: 2026-03-24 23:42:52

$ErrorActionPreference = "Stop"

Add-Type -AssemblyName PresentationFramework
Add-Type -AssemblyName PresentationCore
Add-Type -AssemblyName WindowsBase

$WindowXaml = @'
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:shell="clr-namespace:System.Windows.Shell;assembly=PresentationFramework"
        Title="Atelier ECG"
        Width="1180"
        Height="760"
        MinWidth="900"
        MinHeight="560"
        WindowStartupLocation="CenterScreen"
        WindowStyle="None"
        ResizeMode="CanResize"
        AllowsTransparency="False"
        Background="#060A12"
        Foreground="#F4F7FB"
        FontFamily="Segoe UI"
        UseLayoutRounding="True"
        SnapsToDevicePixels="True">

    <shell:WindowChrome.WindowChrome>
        <shell:WindowChrome CaptionHeight="0"
                            CornerRadius="0"
                            GlassFrameThickness="0"
                            ResizeBorderThickness="6"
                            UseAeroCaptionButtons="False"/>
    </shell:WindowChrome.WindowChrome>

    <Window.Resources>
        <ResourceDictionary/>
    </Window.Resources>

    <Grid Background="{DynamicResource WindowBackdropBrush}">
        <Border x:Name="RootShellBorder"
                Margin="0"
                Style="{DynamicResource ShellBorderStyle}"
                ClipToBounds="True">
            <Grid>
                <Grid.RowDefinitions>
                    <RowDefinition Height="44"/>
                    <RowDefinition Height="*"/>
                </Grid.RowDefinitions>

                <Border Grid.Row="0"
                        Background="{DynamicResource TitleBarBackgroundBrush}"
                        BorderBrush="{DynamicResource TitleBarBottomBorderBrush}"
                        BorderThickness="0,0,0,1">
                    <Grid>
                        <Grid.ColumnDefinitions>
                            <ColumnDefinition Width="*"/>
                            <ColumnDefinition Width="Auto"/>
                        </Grid.ColumnDefinitions>

                        <Grid x:Name="DragBar"
                              Grid.Column="0"
                              Margin="14,0,8,0"
                              Background="Transparent">
                            <TextBlock x:Name="TxtTitle"
                                       Text="Atelier ECG"
                                       VerticalAlignment="Center"
                                       Foreground="{DynamicResource TextPrimaryBrush}"
                                       FontWeight="SemiBold"
                                       FontSize="13"/>
                        </Grid>

                        <StackPanel Grid.Column="1"
                                    Orientation="Horizontal"
                                    VerticalAlignment="Center"
                                    Margin="0,0,6,0">
                            <Button x:Name="BtnMin"
                                    Style="{DynamicResource TitleBarButtonStyle}"
                                    Content="&#x2013;"
                                    ToolTip="Minimize"/>
                            <Button x:Name="BtnMax"
                                    Style="{DynamicResource TitleBarButtonStyle}"
                                    Content="&#x25A1;"
                                    ToolTip="Maximize"/>
                            <Button x:Name="BtnClose"
                                    Style="{DynamicResource CloseTitleBarButtonStyle}"
                                    Content="&#x2715;"
                                    ToolTip="Close"/>
                        </StackPanel>
                    </Grid>
                </Border>

                <Grid Grid.Row="1" Background="{DynamicResource WindowSurfaceBrush}">
                    <Border Style="{DynamicResource AppCardStyle}"
                            Margin="24"
                            Background="{DynamicResource CardBrush}">
                        <Grid>
                            <Grid.RowDefinitions>
                                <RowDefinition Height="Auto"/>
                                <RowDefinition Height="*"/>
                            </Grid.RowDefinitions>

                            <StackPanel Grid.Row="0" Margin="0,0,0,14">
                                <TextBlock Text="Master Prompt"
                                           Foreground="{DynamicResource TextPrimaryBrush}"
                                           FontSize="22"
                                           FontWeight="Bold"/>
                                <TextBlock Text="Copied content for your new agent workflow"
                                           Foreground="{DynamicResource TextMutedBrush}"
                                           FontSize="13"
                                           Margin="0,4,0,0"/>
                            </StackPanel>

                            <ScrollViewer x:Name="MasterPromptScroll"
                                          Grid.Row="1"
                                          VerticalScrollBarVisibility="Auto"
                                          HorizontalScrollBarVisibility="Disabled"
                                          CanContentScroll="False"
                                          Focusable="False">
                                <TextBlock x:Name="TxtMasterPrompt"
                                           TextWrapping="Wrap"
                                           FontFamily="Consolas"
                                           FontSize="12"
                                           Foreground="{DynamicResource TextSecondaryBrush}"/>
                            </ScrollViewer>
                        </Grid>
                    </Border>
                </Grid>
            </Grid>
        </Border>
    </Grid>
</Window>

'@

$StylesXaml = @'
<ResourceDictionary xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
                    xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml">

    <SolidColorBrush x:Key="WindowBackdropBrush" Color="#060A12"/>
    <SolidColorBrush x:Key="WindowSurfaceBrush" Color="#0E1420"/>
    <SolidColorBrush x:Key="WindowBorderBrush" Color="#243042"/>
    <SolidColorBrush x:Key="WindowInnerGlowBrush" Color="#182439"/>
    <SolidColorBrush x:Key="TitleBarBackgroundBrush" Color="#0B101A"/>
    <SolidColorBrush x:Key="TitleBarBottomBorderBrush" Color="#1F2A3A"/>
    <SolidColorBrush x:Key="CardBrush" Color="#121B2A"/>
    <SolidColorBrush x:Key="CardBorderBrush" Color="#2A394F"/>
    <SolidColorBrush x:Key="AccentBrush" Color="#25A7C2"/>
    <SolidColorBrush x:Key="AccentBorderBrush" Color="#1B7E95"/>
    <SolidColorBrush x:Key="TextPrimaryBrush" Color="#F4F7FB"/>
    <SolidColorBrush x:Key="TextSecondaryBrush" Color="#9FB0C7"/>
    <SolidColorBrush x:Key="TextMutedBrush" Color="#73839A"/>
    <SolidColorBrush x:Key="ButtonBackgroundBrush" Color="#1A2739"/>
    <SolidColorBrush x:Key="ButtonHoverBrush" Color="#22354D"/>
    <SolidColorBrush x:Key="ButtonPressedBrush" Color="#172436"/>
    <SolidColorBrush x:Key="ButtonBorderBrush" Color="#33465F"/>
    <SolidColorBrush x:Key="CloseButtonHoverBrush" Color="#C44949"/>
    <SolidColorBrush x:Key="CloseButtonPressedBrush" Color="#A23333"/>
    <SolidColorBrush x:Key="InputBackgroundBrush" Color="#131D2D"/>
    <SolidColorBrush x:Key="InputBorderBrush" Color="#344760"/>
    <SolidColorBrush x:Key="InputFocusBorderBrush" Color="#25A7C2"/>
    <SolidColorBrush x:Key="ScrollThumbBrush" Color="#2DB5D1"/>
    <SolidColorBrush x:Key="ScrollThumbHoverBrush" Color="#53D2EA"/>
    <SolidColorBrush x:Key="ScrollThumbPressedBrush" Color="#1A839A"/>

    <Style x:Key="ShellBorderStyle" TargetType="{x:Type Border}">
        <Setter Property="Background" Value="{DynamicResource WindowSurfaceBrush}"/>
        <Setter Property="BorderBrush" Value="{DynamicResource WindowBorderBrush}"/>
        <Setter Property="BorderThickness" Value="1"/>
        <Setter Property="CornerRadius" Value="16"/>
        <Setter Property="SnapsToDevicePixels" Value="True"/>
    </Style>

    <Style x:Key="AppBorderStyle" TargetType="{x:Type Border}">
        <Setter Property="Background" Value="{DynamicResource CardBrush}"/>
        <Setter Property="BorderBrush" Value="{DynamicResource CardBorderBrush}"/>
        <Setter Property="BorderThickness" Value="1"/>
        <Setter Property="CornerRadius" Value="12"/>
    </Style>

    <Style x:Key="AppCardStyle" TargetType="{x:Type Border}" BasedOn="{StaticResource AppBorderStyle}">
        <Setter Property="Padding" Value="28"/>
    </Style>

    <Style x:Key="AppButtonStyle" TargetType="{x:Type Button}">
        <Setter Property="Foreground" Value="{DynamicResource TextPrimaryBrush}"/>
        <Setter Property="Background" Value="{DynamicResource ButtonBackgroundBrush}"/>
        <Setter Property="BorderBrush" Value="{DynamicResource ButtonBorderBrush}"/>
        <Setter Property="BorderThickness" Value="1"/>
        <Setter Property="Padding" Value="14,8"/>
        <Setter Property="FontSize" Value="13"/>
        <Setter Property="FontWeight" Value="SemiBold"/>
        <Setter Property="Cursor" Value="Hand"/>
        <Setter Property="Template">
            <Setter.Value>
                <ControlTemplate TargetType="{x:Type Button}">
                    <Border x:Name="ButtonChrome"
                            Background="{TemplateBinding Background}"
                            BorderBrush="{TemplateBinding BorderBrush}"
                            BorderThickness="{TemplateBinding BorderThickness}"
                            CornerRadius="9">
                        <ContentPresenter HorizontalAlignment="Center"
                                          VerticalAlignment="Center"
                                          Margin="{TemplateBinding Padding}"
                                          RecognizesAccessKey="True"/>
                    </Border>
                    <ControlTemplate.Triggers>
                        <Trigger Property="IsMouseOver" Value="True">
                            <Setter TargetName="ButtonChrome" Property="Background" Value="{DynamicResource ButtonHoverBrush}"/>
                        </Trigger>
                        <Trigger Property="IsPressed" Value="True">
                            <Setter TargetName="ButtonChrome" Property="Background" Value="{DynamicResource ButtonPressedBrush}"/>
                        </Trigger>
                        <Trigger Property="IsEnabled" Value="False">
                            <Setter TargetName="ButtonChrome" Property="Opacity" Value="0.45"/>
                        </Trigger>
                    </ControlTemplate.Triggers>
                </ControlTemplate>
            </Setter.Value>
        </Setter>
    </Style>

    <Style TargetType="{x:Type Button}" BasedOn="{StaticResource AppButtonStyle}"/>

    <Style x:Key="TitleBarButtonStyle" TargetType="{x:Type Button}">
        <Setter Property="Width" Value="42"/>
        <Setter Property="Height" Value="32"/>
        <Setter Property="Margin" Value="0,0,4,0"/>
        <Setter Property="Foreground" Value="{DynamicResource TextPrimaryBrush}"/>
        <Setter Property="Background" Value="Transparent"/>
        <Setter Property="BorderBrush" Value="Transparent"/>
        <Setter Property="BorderThickness" Value="1"/>
        <Setter Property="FontFamily" Value="Segoe UI Symbol"/>
        <Setter Property="FontSize" Value="12"/>
        <Setter Property="FontWeight" Value="Normal"/>
        <Setter Property="Cursor" Value="Hand"/>
        <Setter Property="Template">
            <Setter.Value>
                <ControlTemplate TargetType="{x:Type Button}">
                    <Border x:Name="TitleButtonChrome"
                            Background="{TemplateBinding Background}"
                            BorderBrush="{TemplateBinding BorderBrush}"
                            BorderThickness="{TemplateBinding BorderThickness}"
                            CornerRadius="8">
                        <ContentPresenter HorizontalAlignment="Center"
                                          VerticalAlignment="Center"
                                          RecognizesAccessKey="True"/>
                    </Border>
                    <ControlTemplate.Triggers>
                        <Trigger Property="IsMouseOver" Value="True">
                            <Setter TargetName="TitleButtonChrome" Property="Background" Value="{DynamicResource ButtonHoverBrush}"/>
                        </Trigger>
                        <Trigger Property="IsPressed" Value="True">
                            <Setter TargetName="TitleButtonChrome" Property="Background" Value="{DynamicResource ButtonPressedBrush}"/>
                        </Trigger>
                    </ControlTemplate.Triggers>
                </ControlTemplate>
            </Setter.Value>
        </Setter>
    </Style>

    <Style x:Key="CloseTitleBarButtonStyle" TargetType="{x:Type Button}">
        <Setter Property="Width" Value="42"/>
        <Setter Property="Height" Value="32"/>
        <Setter Property="Margin" Value="0,0,4,0"/>
        <Setter Property="Foreground" Value="{DynamicResource TextPrimaryBrush}"/>
        <Setter Property="Background" Value="Transparent"/>
        <Setter Property="BorderBrush" Value="Transparent"/>
        <Setter Property="BorderThickness" Value="1"/>
        <Setter Property="FontFamily" Value="Segoe UI Symbol"/>
        <Setter Property="FontSize" Value="12"/>
        <Setter Property="FontWeight" Value="Normal"/>
        <Setter Property="Cursor" Value="Hand"/>
        <Setter Property="Template">
            <Setter.Value>
                <ControlTemplate TargetType="{x:Type Button}">
                    <Border x:Name="CloseButtonChrome"
                            Background="{TemplateBinding Background}"
                            BorderBrush="{TemplateBinding BorderBrush}"
                            BorderThickness="{TemplateBinding BorderThickness}"
                            CornerRadius="8">
                        <ContentPresenter HorizontalAlignment="Center"
                                          VerticalAlignment="Center"
                                          RecognizesAccessKey="True"/>
                    </Border>
                    <ControlTemplate.Triggers>
                        <Trigger Property="IsMouseOver" Value="True">
                            <Setter TargetName="CloseButtonChrome" Property="Background" Value="{DynamicResource CloseButtonHoverBrush}"/>
                        </Trigger>
                        <Trigger Property="IsPressed" Value="True">
                            <Setter TargetName="CloseButtonChrome" Property="Background" Value="{DynamicResource CloseButtonPressedBrush}"/>
                        </Trigger>
                    </ControlTemplate.Triggers>
                </ControlTemplate>
            </Setter.Value>
        </Setter>
    </Style>

    <Style x:Key="ScrollBarRepeatButtonStyle" TargetType="{x:Type RepeatButton}">
        <Setter Property="Template">
            <Setter.Value>
                <ControlTemplate TargetType="{x:Type RepeatButton}">
                    <Border Background="Transparent"/>
                </ControlTemplate>
            </Setter.Value>
        </Setter>
    </Style>

    <Style x:Key="ScrollBarThumbStyle" TargetType="{x:Type Thumb}">
        <Setter Property="MinHeight" Value="26"/>
        <Setter Property="MinWidth" Value="26"/>
        <Setter Property="Template">
            <Setter.Value>
                <ControlTemplate TargetType="{x:Type Thumb}">
                    <Border x:Name="ThumbChrome"
                            Background="{DynamicResource ScrollThumbBrush}"
                            CornerRadius="6"
                            Opacity="0.82"
                            Margin="1"/>
                    <ControlTemplate.Triggers>
                        <Trigger Property="IsMouseOver" Value="True">
                            <Setter TargetName="ThumbChrome" Property="Background" Value="{DynamicResource ScrollThumbHoverBrush}"/>
                            <Setter TargetName="ThumbChrome" Property="Opacity" Value="1"/>
                        </Trigger>
                        <Trigger Property="IsDragging" Value="True">
                            <Setter TargetName="ThumbChrome" Property="Background" Value="{DynamicResource ScrollThumbPressedBrush}"/>
                            <Setter TargetName="ThumbChrome" Property="Opacity" Value="1"/>
                        </Trigger>
                    </ControlTemplate.Triggers>
                </ControlTemplate>
            </Setter.Value>
        </Setter>
    </Style>

    <Style x:Key="GlobalScrollBarStyle" TargetType="{x:Type ScrollBar}">
        <Setter Property="Width" Value="7"/>
        <Setter Property="Background" Value="Transparent"/>
        <Setter Property="Template">
            <Setter.Value>
                <ControlTemplate TargetType="{x:Type ScrollBar}">
                    <Grid Background="Transparent">
                        <Track x:Name="PART_Track"
                               Focusable="False"
                               IsDirectionReversed="True">
                            <Track.DecreaseRepeatButton>
                                <RepeatButton Style="{StaticResource ScrollBarRepeatButtonStyle}"
                                              Command="ScrollBar.PageUpCommand"/>
                            </Track.DecreaseRepeatButton>
                            <Track.Thumb>
                                <Thumb Style="{StaticResource ScrollBarThumbStyle}"/>
                            </Track.Thumb>
                            <Track.IncreaseRepeatButton>
                                <RepeatButton Style="{StaticResource ScrollBarRepeatButtonStyle}"
                                              Command="ScrollBar.PageDownCommand"/>
                            </Track.IncreaseRepeatButton>
                        </Track>
                    </Grid>
                    <ControlTemplate.Triggers>
                        <Trigger Property="Orientation" Value="Horizontal">
                            <Setter Property="Height" Value="7"/>
                            <Setter Property="Width" Value="Auto"/>
                        </Trigger>
                        <Trigger Property="Orientation" Value="Vertical">
                            <Setter Property="Width" Value="7"/>
                            <Setter Property="Height" Value="Auto"/>
                        </Trigger>
                    </ControlTemplate.Triggers>
                </ControlTemplate>
            </Setter.Value>
        </Setter>
    </Style>

    <Style TargetType="{x:Type ScrollBar}" BasedOn="{StaticResource GlobalScrollBarStyle}"/>
</ResourceDictionary>

'@

$MasterPromptText = @'
You are a senior Windows desktop application architect and PowerShell/WPF engineer.

I want you to build an original Windows desktop app project for my academic atelier project, using a modular architecture inspired by Winutil's development style, but not copying Winutil code or branding.

Project name:
Atelier ECG Arrhythmia Studio

Main concept:
A Windows desktop app for "Detection d'arythmie cardiaque a partir d'ECG".
The app is for exploring ECG heartbeat data, preprocessing signals, training models, evaluating results, and presenting a clean professional interface for an academic atelier/PFE-style project.

Dataset context:
Use the ECG Heartbeat Categorization Dataset as the main reference dataset.
The ML context includes heartbeat classification with CNN 1D and LSTM models.
The UI should contain areas for training, evaluation, inference, and visual analytics.

Main development goal:
Convert a simple/single-file PowerShell GUI idea into a real multi-file project with:
- PowerShell logic
- WPF/XAML UI
- reusable styles
- config files
- docs
- compile/build script
- final single-file compiled release output

Important product goals:
- GUI-first project
- modern premium Windows app look
- dark theme by default
- future-ready light theme support
- clean and compact top bar
- rounded outer border like modern Windows apps
- professional taskbar/title icon support
- custom modern scrollbars
- global reusable button styles
- modular structure for future growth
- easy GitHub upload and one-link use for friends

Important deployment goal:
I want to upload this project to GitHub and later use a direct link/domain so my friends can launch or use the app easily.
So the project must support:
- modular source code for development
- final compiled single-file output for distribution
- clear release strategy
- clean README and run instructions

My current visual problems to solve:
- top border/title area looks bad
- bottom border is better than top
- default title bar is not professional
- icon behavior is messy
- default WPF scrollbar looks ugly
- button styles are inconsistent
- I want a polished app shell first

Visual design direction:
Build a custom app shell with:
- one rounded outer window container
- custom slim top bar inside the same rounded shell
- app icon on the left
- app name visible
- optional subtitle/status
- my name in the center for now
- minimize / maximize / close buttons on the right
- safe drag region only
- no thick ugly top strip
- no broken top corners
- visually consistent border all around
- premium dark UI
- spacing and alignment similar to professional Windows apps

My name to show now in the center:
Max

App name:
Atelier ECG Arrhythmia Studio

Technical stack:
- PowerShell
- WPF
- XAML
- JSON config files
- Markdown docs

Architecture requirements:
Create a modular source structure inspired by a Winutil-like workflow where source files are separated and a compile script generates one final runnable script.

Required folder structure:
AtelierECGApp/
|- Compile.ps1
|- README.md
|- CHANGELOG.md
|- LICENSE
|- .gitignore
|- docs/
|  |- architecture.md
|  |- ui-guidelines.md
|  |- developer-notes.md
|  |- deployment.md
|  |- data-flow.md
|- assets/
|  |- icons/
|  |  |- app.ico
|  |- logos/
|  |- illustrations/
|  |- screenshots/
|- config/
|  |- app.json
|  |- dataset.json
|  |- models.json
|  |- preprocessing.json
|  |- theme.json
|  |- views.json
|- scripts/
|  |- main.ps1
|  |- start.ps1
|  |- event-routing.ps1
|  |- ui-state.ps1
|- functions/
|  |- public/
|  |  |- Initialize-WPFUI.ps1
|  |  |- Invoke-AppNavigation.ps1
|  |  |- Invoke-LoadDataset.ps1
|  |  |- Invoke-PreprocessECG.ps1
|  |  |- Invoke-TrainModel.ps1
|  |  |- Invoke-EvaluateModel.ps1
|  |  |- Invoke-RunInference.ps1
|  |  |- Invoke-ExportReport.ps1
|  |  |- Invoke-ToggleTheme.ps1
|  |  |- Invoke-OpenSettings.ps1
|  |- private/
|     |- Get-AppVariables.ps1
|     |- Get-ControlMap.ps1
|     |- Set-ThemeResources.ps1
|     |- Set-WindowShell.ps1
|     |- Set-WindowIcon.ps1
|     |- Set-CustomScrollBars.ps1
|     |- Set-GlobalButtonStyles.ps1
|     |- Update-StatusLog.ps1
|     |- Test-ConfigValidity.ps1
|     |- Convert-ProjectToSingleScript.ps1
|- xaml/
|  |- inputXML.xaml
|  |- styles.xaml
|  |- shell.xaml
|  |- titlebar.xaml
|  |- pages/
|  |  |- dashboard.xaml
|  |  |- dataset.xaml
|  |  |- preprocessing.xaml
|  |  |- training.xaml
|  |  |- evaluation.xaml
|  |  |- inference.xaml
|  |  |- about.xaml
|  |- controls/
|     |- custom-scrollbar.xaml
|     |- app-buttons.xaml
|     |- app-cards.xaml
|     |- log-panel.xaml
|     |- metric-card.xaml
|- sample_data/
|  |- README.md
|- output/
   |- .gitkeep

Application pages:
1. Dashboard
- app overview
- dataset status
- model status
- quick metric cards
- project summary

2. Dataset
- choose ECG dataset file(s)
- preview rows
- show classes and counts
- validate path and format

3. Preprocessing
- filtering options
- normalization
- split train/validation/test
- save preprocessing config

4. Training
- choose CNN1D / LSTM / Hybrid
- epochs
- batch size
- learning rate
- start training
- progress state
- training logs
- placeholder for training curves image/chart

5. Evaluation
- accuracy
- precision
- recall
- f1 score
- confusion matrix section
- classification report viewer

6. Inference
- load single ECG sample
- predict class
- show confidence
- show signal preview placeholder

7. About
- explain the atelier project
- arrhythmia detection context
- dataset reference
- model reference
- credits and notes

UI/UX requirements:
- create a premium Windows 11-like app shell
- use a compact custom title bar, not a tall bar
- top bar must visually belong to the same rounded outer shell
- add app.ico support correctly
- show taskbar/title icon correctly as much as PowerShell/WPF allows
- center the text "Max" in the current main content for now
- include global reusable styles for buttons, textboxes, cards, borders, scrollbars
- the scrollbar must be custom, slim, dark, and modern
- avoid default ugly WPF scrollbars
- the button style should be reusable globally like CSS design tokens, but in WPF/XAML resources
- colors should be refined and consistent
- no random bulky layout
- good spacing and alignment everywhere

Top bar requirements:
- app icon on left
- app name next to icon
- optional small subtitle/status
- centered area can show "Max" for now
- right side window controls
- drag support from safe area only
- correct top rounded corners
- visually aligned with outer border
- support future search bar if needed

Window shell requirements:
- use a single rounded outer Border/container
- use WindowStyle=None
- use a custom title bar inside the rounded shell
- correct border on all sides
- fix the current issue where top looks wrong but bottom looks good
- improve shadow/elevation where possible
- make it feel like a real app

Icon requirements:
- use assets/icons/app.ico
- wire the icon correctly in the window
- explain exact icon path strategy
- explain limitations of running as raw PowerShell vs packaged executable
- keep the structure ready for future packaging

GitHub/distribution requirements:
- this project will be uploaded to GitHub
- provide a clean source structure for editing
- also provide final compile logic that generates:
  AtelierECGApp.ps1
- explain how to publish:
  - GitHub repo source
  - GitHub release artifact
  - optional raw URL
  - optional custom domain landing page
- add safe notes about one-click launching
- make it easy for friends to use the app later

Documentation requirements:
Create:
1. README.md
2. docs/architecture.md
3. docs/ui-guidelines.md
4. docs/developer-notes.md
5. docs/data-flow.md
6. docs/deployment.md

README must include:
- project overview
- screenshots placeholders
- quick start
- folder structure
- build instructions
- run instructions
- icon instructions
- GitHub publish instructions

Build requirements:
- Compile.ps1 must combine the modular source into one final runnable script
- output file name: AtelierECGApp.ps1
- source stays modular
- output stays simple for distribution

Important coding rules:
- keep source files small and focused
- avoid giant unmaintainable source files
- use reusable XAML resources
- use clean PowerShell function names
- keep XAML valid and consistent
- keep event wiring organized
- do not break compilation
- do not leave fake placeholders that make the project fail
- add comments only where useful

Output format:
Work in phases and stop after each phase.

Phase 0:
- full final folder structure
- file-by-file explanation
- Windows CMD commands to create all folders/files
- naming conventions
- why this architecture is better than one single file
- why the title bar must be inside the rounded outer shell

Phase 1:
- shell.xaml
- styles.xaml
- titlebar.xaml
- inputXML.xaml
- a working polished window that shows only:
  - app icon
  - app name
  - centered "Max"
  - professional title bar
  - rounded border
  - custom global scrollbar style
  - global button style
  - dark theme
- exact app.ico placement instructions
- exact run instructions

Phase 2:
- page XAML files
- dashboard/dataset/preprocessing/training/evaluation/inference/about

Phase 3:
- PowerShell startup scripts
- event routing
- theme logic
- icon logic
- log logic

Phase 4:
- JSON config files
- README and docs

Phase 5:
- Compile.ps1
- output build flow
- single-file release generation

Phase 6:
- polish, cleanup, consistency review, and final test instructions

Important:
Start with Phase 0 only.
Do not continue until I confirm.

'@

$ScriptFile = if ($PSCommandPath) { $PSCommandPath } elseif ($MyInvocation.MyCommand.Path) { $MyInvocation.MyCommand.Path } else { $null }
$ScriptRoot = if ($ScriptFile) { Split-Path -Parent $ScriptFile } else { (Get-Location).Path }
$ParentRoot = Split-Path -Parent $ScriptRoot

function Load-XamlFromString {
    param([Parameter(Mandatory = $true)][string]$Xaml)
    [xml]$xml = $Xaml
    $reader = New-Object System.Xml.XmlNodeReader $xml
    return [Windows.Markup.XamlReader]::Load($reader)
}

function Resolve-IconPath {
    $candidates = @(
        (Join-Path $ScriptRoot "assets\icons\app.ico"),
        (Join-Path $ParentRoot "assets\icons\app.ico")
    )
    foreach ($candidate in $candidates) {
        if (Test-Path $candidate) { return $candidate }
    }
    return $null
}

$window = Load-XamlFromString -Xaml $WindowXaml
$styles = Load-XamlFromString -Xaml $StylesXaml
$window.Resources.MergedDictionaries.Add($styles)

$controls = @{}
foreach ($name in @("RootShellBorder", "DragBar", "BtnMin", "BtnMax", "BtnClose", "TxtMasterPrompt", "MasterPromptScroll")) {
    $controls[$name] = $window.FindName($name)
}

$iconPath = Resolve-IconPath
if ($iconPath) { $window.Icon = $iconPath }

if ($controls.TxtMasterPrompt) {
    $controls.TxtMasterPrompt.Text = $MasterPromptText
    if ($controls.MasterPromptScroll) { $controls.MasterPromptScroll.ScrollToHome() }
}

function Toggle-WindowState {
    if ($window.WindowState -eq [System.Windows.WindowState]::Maximized) {
        $window.WindowState = [System.Windows.WindowState]::Normal
    } else {
        $window.WindowState = [System.Windows.WindowState]::Maximized
    }
}

function Update-MaxButtonGlyph {
    if (-not $controls.BtnMax) { return }
    if ($window.WindowState -eq [System.Windows.WindowState]::Maximized) {
        $controls.BtnMax.Content = [char]0x2750
        $controls.BtnMax.ToolTip = "Restore"
    } else {
        $controls.BtnMax.Content = [char]0x25A1
        $controls.BtnMax.ToolTip = "Maximize"
    }
}

function Update-ShellForWindowState {
    if (-not $controls.RootShellBorder) { return }
    if ($window.WindowState -eq [System.Windows.WindowState]::Maximized) {
        $controls.RootShellBorder.Margin = [System.Windows.Thickness]::new(0)
        $controls.RootShellBorder.CornerRadius = [System.Windows.CornerRadius]::new(0)
    } else {
        $controls.RootShellBorder.Margin = [System.Windows.Thickness]::new(0)
        $controls.RootShellBorder.CornerRadius = [System.Windows.CornerRadius]::new(16)
    }
}

if ($controls.DragBar) {
    $controls.DragBar.Add_MouseLeftButtonDown({
        param($sender, $eventArgs)
        if ($eventArgs.ChangedButton -ne [System.Windows.Input.MouseButton]::Left) { return }
        if ($eventArgs.ClickCount -eq 2) { Toggle-WindowState; return }
        $window.DragMove()
    })
}

if ($controls.BtnMin) { $controls.BtnMin.Add_Click({ $window.WindowState = [System.Windows.WindowState]::Minimized }) }
if ($controls.BtnMax) { $controls.BtnMax.Add_Click({ Toggle-WindowState }) }
if ($controls.BtnClose) { $controls.BtnClose.Add_Click({ $window.Close() }) }
$window.Add_StateChanged({ Update-MaxButtonGlyph; Update-ShellForWindowState })
Update-MaxButtonGlyph
Update-ShellForWindowState

Write-Host "Starting Atelier ECG (compiled)..." -ForegroundColor Cyan
[void]$window.ShowDialog()
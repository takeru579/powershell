Add-Type -AssemblyName System.Windows.Forms

# Load Form
$form = New-Object System.Windows.Forms.Form
$form.Size = "400,350"
#$form.startposition = "centerscreen"
$form.text = "Tool Kit"
$form.MaximizeBox = $false
$form.MinimizeBox = $false

# Label1 
$Label1 = New-Object System.Windows.Forms.Label
$Label1.Location = "10,60"
$Label1.Text = "MailAddress or Name"
$Label1.AutoSize = $True
$form.Controls.Add($Label1)

$textBox1 = New-Object System.Windows.Forms.TextBox
$textBox1.Location = New-Object System.Drawing.Point(140,60)
$textBox1.Size = New-Object System.Drawing.Size(225,50)
$form.Controls.Add($textBox1)

$Label2 = New-Object System.Windows.Forms.Label
$Label2.Location = "10,90"
$Label2.Text = "Hostname"
$Label2.AutoSize = $True
$form.Controls.Add($Label2)

$textBox2 = New-Object System.Windows.Forms.TextBox
$textBox2.Location = New-Object System.Drawing.Point(140,90)
$textBox2.Size = New-Object System.Drawing.Size(225,50)
$form.Controls.Add($textBox2)

# Output info
$OutputBox = New-Object System.Windows.Forms.TextBox
$OutputBox.Location = New-Object System.Drawing.Size(10,120)
$OutputBox.Size = New-Object System.Drawing.Size(225,100)
$OutputBox.MultiLine = $True
$OutputBox.ReadOnly = $True
$form.Controls.Add($outputBox)

# Button
$ButtonA = New-Object System.Windows.Forms.Button
$ButtonA.Location = "10,10"
$ButtonA.size = "80,30"
$ButtonA.text  =　"OK"
$ButtonA.Add_Click({GetData})
$form.Controls.Add($ButtonA)

function GetData{
    $output = (Get-Host).Version.ToString()
    #$output = Get-Host | Select-Object Version | Out-String
    $outputBox.Text = $output

}

# show form
$form.Add_Shown({$form.Activate()})
[void]$form.ShowDialog()
# イベントの記述方法

# アセンブリのロード
Add-Type -AssemblyName System.Windows.Forms

# フォーム
$form = New-Object System.Windows.Forms.Form
$form.Size = "250,200"
$form.startposition = "centerscreen"
$form.text = "イベント"
$form.MaximizeBox = $false
$form.MinimizeBox = $false

# ボタンA
$ButtonA = New-Object System.Windows.Forms.Button
$ButtonA.Location = "50,20"
$ButtonA.size = "80,30"
$ButtonA.text  =　"ボタンA"
$ButtonA.FlatStyle = "popup"
$form.Controls.Add($ButtonA)

# ボタンAのクリックイベント
$ButtonA.Add_Click({[System.Windows.Forms.MessageBox]::Show("ボタンAが押されました", "結果")})

# ラベル
$Label = New-Object System.Windows.Forms.Label
$Label.Location = "20,80"
$Label.Text = "この文字列をダブルクリック"
$Label.BackColor = "lightgreen"
$Label.AutoSize = $True
$form.Controls.Add($Label)

# ラベルのダブルクリックイベント
$Label.Add_DoubleClick({[System.Windows.Forms.MessageBox]::Show("ダブルクリックされました", "結果")})

# フォームの表示
$form.Showdialog()
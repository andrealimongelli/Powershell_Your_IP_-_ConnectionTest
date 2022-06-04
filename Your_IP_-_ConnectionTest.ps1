Add-Type -AssemblyName System.Windows.Forms
$Form = New-Object System.Windows.Forms.Form
$Form.Size = New-Object Drawing.Size @(500, 100)
$Form.StartPosition = "CenterScreen"
$Form.Text = "https://github.com/andrealimongelli"
$Button = New-Object System.Windows.Forms.Button
$Button.Size = New-Object System.Drawing.Size(480,25)
$Button.Cursor = [System.Windows.Forms.Cursors]::Hand
$Button.BackColor = '#FFFF00'
$Button.Font = New-Object System.Drawing.Font("Verdana",10,[System.Drawing.FontStyle]::Bold)
$Button.add_click({ Get-Date | Out-Host })
$Button.add_click({ Get-NetIPAddress | ft -AutoSize | Out-Host })
$Button.add_click({ Get-NetIPConfiguration | Out-Host })
$Button.add_click({ Test-Connection 8.8.8.8 | Out-Host })
$Button.add_click({ Test-Connection 1.1.1.1 | Out-Host })
$Button.Text = "IP  Connection Test - Click Here"
$Form.Controls.Add($Button)
$Dialog = $Form.ShowDialog()

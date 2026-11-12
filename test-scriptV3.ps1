$name = Read-Host "Enter your name" 
Write-Host "Why hello little one, so your name is $name!" -ForegroundColor Cyan
Write-Host "This is the tiniest DnD campaign"

$monsters = @("a feral toaster", "an aggressive Roomba", "a mildly irritated goose", "a sentient traffic cone")
$monster = $monsters | Get-Random
Write-Host "Oh no $monster appeared"

Write-Host "Rolling the die..." -ForegroundColor DarkGray
Start-Sleep -Seconds 5

$num = 1..20 | Get-Random
Write-Host "You rolled a $num"
if ($num -eq 20){
    Write-Host "Natural 20 ! You got rid of it in one punch and got a giant treasure !" -ForegroundColor Green
}elseif ($num -eq 1){
    Write-Host "Disaster a critical fail, the monster got rid of you in a single punch you died." -ForegroundColor Red
}elseif($num -ge 10){
    Write-Host "Great you finished the fight as the winner you found a good treasure" -ForegroundColor Blue
}else {
    Write-Host "Oh no you finshed the fight as the loser you couldn't find a healer and died misarably" -ForegroundColor DarkYellow
}
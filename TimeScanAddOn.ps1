$name = Read-Host "Enter your name" 
Write-Host "Why hello little one, so your name is $name!" -ForegroundColor Cyan
Write-Host "This is the tiniest DnD campaign"

$hour = (Get-Date).Hour
switch ($hour) {
    { $_ -in 7..9 }   { Write-Host "Oh my, up so early before your morning coffee? Brave little thing, aren't we?" -ForegroundColor Yellow; break }
    { $_ -in 10..13 } { Write-Host "My, my, adventuring right before lunch? Careful your tummy doesn't give you away!" -ForegroundColor Cyan; break }
    { $_ -in 14..17 } { Write-Host "Ah, a lovely afternoon for a tiny stroll into mortal peril, don't you think?" -ForegroundColor Blue; break }
    { $_ -in 18..20 } { Write-Host "Now let's make this quick, little one, supper won't eat itself!" -ForegroundColor Magenta; break }
    Default           { Write-Host "Goodness, what are you doing up at this hour? Go to sleep, little one!" -ForegroundColor DarkBlue}
}

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

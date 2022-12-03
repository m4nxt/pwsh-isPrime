function isPrime ($n) {
    if ( $n -eq 1 ) { return $False }
    if ( $n -lt 4 ) { return $True }
    if ( $n % 2 -eq 0 ) { return $False }
    $m = 1 + [math]::Round([math]::Sqrt($n))
    for ( $i = 3; $i -lt $m; $i += 1 ) {
        if ( $n % $i -eq 0 ) { return $False }
    }
    return $True
}

[int]$userIn = Read-Host
isPrime $userIn


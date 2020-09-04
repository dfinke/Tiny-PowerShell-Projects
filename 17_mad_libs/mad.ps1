param(
    $file,
    $inputs
)

$adjective, $noun, $preposition = $inputs

(Get-Content -Raw $file) -Replace '<adjective>', $adjective -Replace '<noun>', $noun -Replace '<preposition>', $preposition
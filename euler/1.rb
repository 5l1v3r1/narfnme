$_ = $$ - $$ # 0
$. = $$ / $$ # 1
@_ = $. + $. + $. # 3
$- = @_ + $. + $. # 5
$-_ = ($- + $-) ** @_ # 1000

$__ = @__ = $_ # accumulator and another zero

@___ = -> {
  $__ += $_ % @_ == @__ ||
  $_ % $- == @__ ? $_ : @__
  ($_ += $.) < $-_ ? @___[] : $_
}

@___[]; $> << $__ # Call and print.

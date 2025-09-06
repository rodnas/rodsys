<?php
function execute(array $ops)
{
    $stack = new \SplStack();

    foreach ($ops as $op) {
        if (is_numeric($op)) {
            $stack->push((int) $op);
            continue;
        }

        switch ($op) {
            case '+':
                $stack->push($stack->pop() + $stack->pop());
                break;
            case '-':
                $n = $stack->pop();
                $stack->push($stack->pop() - $n);
                break;
            case '*':
                $stack->push($stack->pop() * $stack->pop());
                break;
            case '/':
                $n = $stack->pop();
                $stack->push($stack->pop() / $n);
                break;
            case '%':
                $n = $stack->pop();
                $stack->push($stack->pop() % $n);
                break;
            default:
                throw new \InvalidArgumentException(sprintf('Invalid operation: %s', $op));
                break;
        }
    }

    return $stack->top();
}

$rpn = '2 3 5 * 1 +';
$ops = explode(' ', $rpn);
echo execute($ops);

# spacelift-demo

## Domy policy
```plaintext
package spacelift

deny["Policy was denied"]{
    true
}
```

## Plan policy to restrict creation of instance larger than t2.micro
```plaintext
package spacelift

deny["Policy was denied"] {
    instance := input.terraform.resource_changes[_].change.after.instance_type
    instance != "t2.micro"
}

sample { true }
```
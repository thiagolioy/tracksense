tracksense
==========

Dummy project to show how to make sense of all different tracking frameworks that a mobile app could have , and how to work with them on an organized way.


Before:

```objective-c
-(void) executeLogin{
    NSString *password  =_loginPasswordTextField.text;
    NSString *username = _loginTextField.text;
    
    [[AccountAPIClient shareClient] loginWithUsername:username andPassword:password success:^(Customer *customer) {
        [_loginButton reset];
        [self successOnLogin:customer];
        
        [_adxTracker login:customer];
        [_gtmTracker login:customer];
        [_ad4PTracker login:customer];
        [_adjustTracker login:customer];
    } failure:^(NSString *errorMsg) {
    }];
}

```

After:

```objective-c
-(void) executeLogin{
    NSString *password  =_loginPasswordTextField.text;
    NSString *username = _loginTextField.text;
    
    [[AccountAPIClient shareClient] loginWithUsername:username andPassword:password success:^(Customer *customer) {
        [_loginButton reset];
        [self successOnLogin:customer];
        [[Trigger sharedInstance] login:customer];
    } failure:^(NSString *errorMsg) {
    }];
}

```

/*
Revtwo.h
Revtwo iOS API version 0.4

Copyright (c) 2015 Revtwo.com.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

#import <Foundation/Foundation.h>

void R2Initialize(NSString *productKey, NSString *version, BOOL alwaysOn);

void R2Log(NSString *format, ...);
void R2Error(NSString *format, ...);
void R2Warn(NSString *format, ...);
void R2Debug(NSString *format, ...);
void R2Trace(NSString *format, ...);

bool R2IsTicketOpen();
void R2OpenTicket(NSString *text, NSString *name, NSString *email, NSString *phone);

@interface Revtwo : NSObject

@end

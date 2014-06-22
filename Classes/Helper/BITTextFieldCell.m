/*
 * Author: Andreas Linde <mail@andreaslinde.de>
 *
 * Copyright (c) 2014 HockeyApp, Bit Stadium GmbH.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person
 * obtaining a copy of this software and associated documentation
 * files (the "Software"), to deal in the Software without
 * restriction, including without limitation the rights to use,
 * copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following
 * conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 * OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 * HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 * OTHER DEALINGS IN THE SOFTWARE.
 */

#import "BITTextFieldCell.h"

@implementation BITTextFieldCell

- (NSRect)drawingRectForBounds:(NSRect)theRect {
	// Get the parent's idea of where we should draw
	NSRect newRect = [super drawingRectForBounds:theRect];
  NSSize textSize = [self cellSizeForBounds:theRect];
  
  float heightDelta = newRect.size.height - textSize.height;
  if (heightDelta > 0) {
    newRect.size.height -= heightDelta;
    newRect.origin.y += heightDelta / 2;
    if (self.horizontalInset) {
      newRect.origin.x += [self.horizontalInset floatValue];
      newRect.size.width -= ([self.horizontalInset floatValue] * 2);
    }
  }
	
	return newRect;
}

@end

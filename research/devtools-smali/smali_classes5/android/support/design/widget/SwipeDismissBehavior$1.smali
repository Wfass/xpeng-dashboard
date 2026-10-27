.class Landroid/support/design/widget/SwipeDismissBehavior$1;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "SwipeDismissBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final INVALID_POINTER_ID:I = -0x1


# instance fields
.field private activePointerId:I

.field private originalCapturedViewLeft:I

.field final synthetic this$0:Landroid/support/design/widget/SwipeDismissBehavior;


# direct methods
.method constructor <init>(Landroid/support/design/widget/SwipeDismissBehavior;)V
    .locals 0

    .line 207
    iput-object p1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    .line 211
    const/4 p1, -0x1

    iput p1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->activePointerId:I

    return-void
.end method

.method private shouldDismiss(Landroid/view/View;F)Z
    .locals 6

    .line 267
    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_8

    .line 268
    nop

    .line 269
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p1

    if-ne p1, v3, :cond_0

    .line 271
    move p1, v3

    goto :goto_0

    .line 269
    :cond_0
    nop

    .line 271
    move p1, v2

    :goto_0
    iget-object v4, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v4, v4, Landroid/support/design/widget/SwipeDismissBehavior;->swipeDirection:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 273
    return v3

    .line 274
    :cond_1
    iget-object v4, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v4, v4, Landroid/support/design/widget/SwipeDismissBehavior;->swipeDirection:I

    if-nez v4, :cond_4

    .line 277
    if-eqz p1, :cond_3

    cmpg-float p1, p2, v0

    if-gez p1, :cond_2

    :goto_1
    move v2, v3

    goto :goto_2

    :cond_2
    goto :goto_2

    :cond_3
    if-lez v1, :cond_2

    goto :goto_1

    :goto_2
    return v2

    .line 278
    :cond_4
    iget-object v4, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v4, v4, Landroid/support/design/widget/SwipeDismissBehavior;->swipeDirection:I

    if-ne v4, v3, :cond_7

    .line 281
    if-eqz p1, :cond_6

    if-lez v1, :cond_5

    :goto_3
    move v2, v3

    goto :goto_4

    :cond_5
    goto :goto_4

    :cond_6
    cmpg-float p1, p2, v0

    if-gez p1, :cond_5

    goto :goto_3

    :goto_4
    return v2

    .line 283
    :cond_7
    nop

    .line 289
    return v2

    .line 284
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    sub-int/2addr p2, v0

    .line 285
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v0, v0, Landroid/support/design/widget/SwipeDismissBehavior;->dragDismissThreshold:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 286
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lt p2, p1, :cond_9

    move v2, v3

    nop

    :cond_9
    return v2
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 2

    .line 299
    nop

    .line 300
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 304
    move p3, v0

    goto :goto_0

    .line 300
    :cond_0
    const/4 p3, 0x0

    .line 304
    :goto_0
    iget-object v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v1, v1, Landroid/support/design/widget/SwipeDismissBehavior;->swipeDirection:I

    if-nez v1, :cond_2

    .line 305
    if-eqz p3, :cond_1

    .line 306
    iget p3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr p3, p1

    .line 307
    iget p1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    goto :goto_1

    .line 309
    :cond_1
    iget p3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 310
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v0

    goto :goto_1

    .line 312
    :cond_2
    iget-object v1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v1, v1, Landroid/support/design/widget/SwipeDismissBehavior;->swipeDirection:I

    if-ne v1, v0, :cond_4

    .line 313
    if-eqz p3, :cond_3

    .line 314
    iget p3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 315
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v0

    goto :goto_1

    .line 317
    :cond_3
    iget p3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr p3, p1

    .line 318
    iget p1, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    goto :goto_1

    .line 321
    :cond_4
    iget p3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p3, v0

    .line 322
    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v0

    .line 325
    :goto_1
    invoke-static {p3, p2, p1}, Landroid/support/design/widget/SwipeDismissBehavior;->clamp(III)I

    move-result p1

    return p1
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 0

    .line 330
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    return p1
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 0

    .line 294
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    return p1
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 0

    .line 221
    iput p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->activePointerId:I

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 227
    if-eqz p1, :cond_0

    .line 228
    const/4 p2, 0x1

    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 230
    :cond_0
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 1

    .line 234
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Landroid/support/design/widget/SwipeDismissBehavior;->listener:Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Landroid/support/design/widget/SwipeDismissBehavior;->listener:Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;->onDragStateChanged(I)V

    .line 237
    :cond_0
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 2

    .line 335
    iget p3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    int-to-float p3, p3

    .line 336
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p4

    int-to-float p4, p4

    iget-object p5, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget p5, p5, Landroid/support/design/widget/SwipeDismissBehavior;->alphaStartSwipeDistance:F

    mul-float/2addr p4, p5

    add-float/2addr p3, p4

    .line 337
    iget p4, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    int-to-float p4, p4

    .line 338
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p5

    int-to-float p5, p5

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget v0, v0, Landroid/support/design/widget/SwipeDismissBehavior;->alphaEndSwipeDistance:F

    mul-float/2addr p5, v0

    add-float/2addr p4, p5

    .line 340
    int-to-float p2, p2

    cmpg-float p5, p2, p3

    const/high16 v0, 0x3f800000    # 1.0f

    if-gtz p5, :cond_0

    .line 341
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 342
    :cond_0
    cmpl-float p5, p2, p4

    const/4 v1, 0x0

    if-ltz p5, :cond_1

    .line 343
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 346
    :cond_1
    invoke-static {p3, p4, p2}, Landroid/support/design/widget/SwipeDismissBehavior;->fraction(FFF)F

    move-result p2

    .line 347
    sub-float p2, v0, p2

    invoke-static {v1, p2, v0}, Landroid/support/design/widget/SwipeDismissBehavior;->clamp(FFF)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 349
    :goto_0
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 2

    .line 242
    const/4 p3, -0x1

    iput p3, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->activePointerId:I

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    .line 246
    nop

    .line 248
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/SwipeDismissBehavior$1;->shouldDismiss(Landroid/view/View;F)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 249
    nop

    .line 250
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    if-ge p2, v0, :cond_0

    iget p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    sub-int/2addr p2, p3

    goto :goto_0

    :cond_0
    iget p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    add-int/2addr p2, p3

    .line 253
    :goto_0
    const/4 p3, 0x1

    goto :goto_1

    .line 256
    :cond_1
    iget p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->originalCapturedViewLeft:I

    .line 259
    const/4 p3, 0x0

    :goto_1
    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object v0, v0, Landroid/support/design/widget/SwipeDismissBehavior;->viewDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/support/v4/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 260
    new-instance p2, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;

    iget-object v0, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-direct {p2, v0, p1, p3}, Landroid/support/design/widget/SwipeDismissBehavior$SettleRunnable;-><init>(Landroid/support/design/widget/SwipeDismissBehavior;Landroid/view/View;Z)V

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 261
    :cond_2
    if-eqz p3, :cond_3

    iget-object p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object p2, p2, Landroid/support/design/widget/SwipeDismissBehavior;->listener:Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    if-eqz p2, :cond_3

    .line 262
    iget-object p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    iget-object p2, p2, Landroid/support/design/widget/SwipeDismissBehavior;->listener:Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;

    invoke-interface {p2, p1}, Landroid/support/design/widget/SwipeDismissBehavior$OnDismissListener;->onDismiss(Landroid/view/View;)V

    .line 264
    :cond_3
    :goto_2
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 1

    .line 216
    iget p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->activePointerId:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Landroid/support/design/widget/SwipeDismissBehavior$1;->this$0:Landroid/support/design/widget/SwipeDismissBehavior;

    invoke-virtual {p2, p1}, Landroid/support/design/widget/SwipeDismissBehavior;->canSwipeDismissView(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

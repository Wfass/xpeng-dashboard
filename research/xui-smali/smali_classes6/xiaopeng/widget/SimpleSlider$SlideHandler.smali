.class public Lxiaopeng/widget/SimpleSlider$SlideHandler;
.super Lxiaopeng/widget/SimpleSlider$SimpleTouchEventHandler;
.source "SimpleSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxiaopeng/widget/SimpleSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SlideHandler"
.end annotation


# instance fields
.field private mIsDragging:Z

.field private mTouchDownProgress:I

.field private mTouchDownX:F

.field private mTouchDownY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1303
    invoke-direct {p0}, Lxiaopeng/widget/SimpleSlider$SimpleTouchEventHandler;-><init>()V

    return-void
.end method

.method private handleSlide(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1326
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1327
    .local v0, "action":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1349
    :pswitch_0
    iget-boolean v2, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mIsDragging:Z

    if-eqz v2, :cond_3

    .line 1350
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v2}, Lxiaopeng/widget/SimpleSlider;->onStopTrackingTouch()V

    .line 1351
    iput-boolean v1, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mIsDragging:Z

    goto :goto_1

    .line 1336
    :pswitch_1
    iget-boolean v1, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mIsDragging:Z

    if-eqz v1, :cond_0

    .line 1337
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider$SlideHandler;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1339
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 1340
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1341
    .local v2, "y":F
    iget-object v3, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v3}, Lxiaopeng/widget/SimpleSlider;->isVertical()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mTouchDownY:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    goto :goto_0

    .line 1342
    :cond_1
    iget v3, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mTouchDownX:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1343
    .local v3, "delta":F
    :goto_0
    iget-object v4, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v4}, Lxiaopeng/widget/SimpleSlider;->getScaledTouchSlop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    .line 1344
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider$SlideHandler;->startDrag(Landroid/view/MotionEvent;)V

    .line 1347
    .end local v1    # "x":F
    .end local v2    # "y":F
    .end local v3    # "delta":F
    :cond_2
    goto :goto_1

    .line 1355
    :pswitch_2
    iget-boolean v2, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mIsDragging:Z

    if-eqz v2, :cond_3

    .line 1356
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider$SlideHandler;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1357
    iput-boolean v1, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mIsDragging:Z

    goto :goto_1

    .line 1329
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mTouchDownX:F

    .line 1330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mTouchDownY:F

    .line 1331
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider$SlideHandler;->startDragDirectly()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1332
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider$SlideHandler;->startDrag(Landroid/view/MotionEvent;)V

    .line 1362
    :cond_3
    :goto_1
    const/4 v1, 0x1

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startDrag(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1318
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-static {v0}, Lxiaopeng/widget/SimpleSlider;->access$600(Lxiaopeng/widget/SimpleSlider;)V

    .line 1319
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->getProgress()I

    move-result v0

    iput v0, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mTouchDownProgress:I

    .line 1320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mIsDragging:Z

    .line 1321
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->onStartTrackingTouch()V

    .line 1322
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider$SlideHandler;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1323
    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1367
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->isVertical()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1368
    iget v0, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mTouchDownY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .local v0, "delta":I
    :goto_0
    goto :goto_1

    .line 1369
    .end local v0    # "delta":I
    :cond_0
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1370
    iget v0, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mTouchDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 1372
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mTouchDownX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1374
    .restart local v0    # "delta":I
    :goto_1
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v2}, Lxiaopeng/widget/SimpleSlider;->getSliderWidth()I

    move-result v2

    .line 1375
    .local v2, "width":I
    iget-object v3, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v3}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingStart()I

    move-result v3

    sub-int v3, v2, v3

    iget-object v4, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v4}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingEnd()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1377
    .local v3, "availableWidth":I
    int-to-float v4, v0

    int-to-float v5, v3

    div-float/2addr v4, v5

    .line 1378
    .local v4, "scale":F
    iget-object v5, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v5}, Lxiaopeng/widget/SimpleSlider;->getSlideScale()F

    move-result v5

    mul-float/2addr v4, v5

    .line 1379
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    .line 1380
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    nop

    .line 1381
    .local v1, "touchEnd":Z
    :cond_3
    :goto_2
    iget v5, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mTouchDownProgress:I

    invoke-virtual {p0, v4, v5, v1}, Lxiaopeng/widget/SimpleSlider$SlideHandler;->setProgress(FIZ)V

    .line 1382
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1313
    invoke-super {p0, p1}, Lxiaopeng/widget/SimpleSlider$SimpleTouchEventHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1314
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider$SlideHandler;->handleSlide(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

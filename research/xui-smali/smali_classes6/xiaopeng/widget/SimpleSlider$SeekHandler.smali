.class public Lxiaopeng/widget/SimpleSlider$SeekHandler;
.super Lxiaopeng/widget/SimpleSlider$SimpleTouchEventHandler;
.source "SimpleSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxiaopeng/widget/SimpleSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SeekHandler"
.end annotation


# instance fields
.field private mIsDragging:Z

.field private mTouchDownX:F

.field private mTouchDownY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1385
    invoke-direct {p0}, Lxiaopeng/widget/SimpleSlider$SimpleTouchEventHandler;-><init>()V

    return-void
.end method

.method private handleSeekTouch(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1398
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 1440
    :pswitch_0
    iget-boolean v0, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mIsDragging:Z

    if-eqz v0, :cond_5

    .line 1441
    iput-boolean v1, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mIsDragging:Z

    .line 1442
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->onStopTrackingTouch()V

    goto/16 :goto_1

    .line 1411
    :pswitch_1
    iget-boolean v0, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 1412
    invoke-virtual {p0, p1}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1414
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1415
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1416
    .local v1, "y":F
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v2}, Lxiaopeng/widget/SimpleSlider;->isVertical()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mTouchDownY:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    goto :goto_0

    .line 1417
    :cond_1
    iget v2, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mTouchDownX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1418
    .local v2, "delta":F
    :goto_0
    iget-object v3, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v3}, Lxiaopeng/widget/SimpleSlider;->getScaledTouchSlop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    .line 1419
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->onStartTrackingTouch()V

    .line 1420
    invoke-virtual {p0, p1}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1421
    iget-object v3, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-static {v3}, Lxiaopeng/widget/SimpleSlider;->access$600(Lxiaopeng/widget/SimpleSlider;)V

    .line 1424
    .end local v0    # "x":F
    .end local v1    # "y":F
    .end local v2    # "delta":F
    :cond_2
    goto :goto_1

    .line 1427
    :pswitch_2
    iget-boolean v0, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mIsDragging:Z

    if-eqz v0, :cond_3

    .line 1428
    invoke-virtual {p0, p1}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1429
    iput-boolean v1, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mIsDragging:Z

    goto :goto_1

    .line 1433
    :cond_3
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->onStartTrackingTouch()V

    .line 1434
    invoke-virtual {p0, p1}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1435
    iput-boolean v1, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mIsDragging:Z

    .line 1437
    goto :goto_1

    .line 1400
    :pswitch_3
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->startDragDirectly()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1401
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mTouchDownX:F

    .line 1402
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mTouchDownY:F

    goto :goto_1

    .line 1404
    :cond_4
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->onStartTrackingTouch()V

    .line 1405
    invoke-virtual {p0, p1}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1406
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-static {v0}, Lxiaopeng/widget/SimpleSlider;->access$600(Lxiaopeng/widget/SimpleSlider;)V

    .line 1408
    nop

    .line 1446
    :cond_5
    :goto_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onStartTrackingTouch()V
    .locals 1

    .line 1450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mIsDragging:Z

    .line 1451
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->onStartTrackingTouch()V

    .line 1452
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1394
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->handleSeekTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1455
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->getSliderWidth()I

    move-result v0

    .line 1456
    .local v0, "width":I
    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v1}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingStart()I

    move-result v1

    sub-int v1, v0, v1

    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v2}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingEnd()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1458
    .local v1, "availableWidth":I
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v2}, Lxiaopeng/widget/SimpleSlider;->isVertical()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 1459
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v2}, Lxiaopeng/widget/SimpleSlider;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v2, v4

    iget-object v4, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v4}, Lxiaopeng/widget/SimpleSlider;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .local v2, "currentPos":F
    :goto_0
    goto :goto_1

    .line 1460
    .end local v2    # "currentPos":F
    :cond_0
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v2}, Lxiaopeng/widget/SimpleSlider;->getLayoutDirection()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 1461
    int-to-float v2, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v2, v4

    iget-object v4, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v4}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingStart()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v2, v4

    goto :goto_0

    .line 1463
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v4, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v4}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingStart()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    .line 1466
    .restart local v2    # "currentPos":F
    :goto_1
    int-to-float v4, v1

    div-float v4, v2, v4

    .line 1468
    .local v4, "scale":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-eq v5, v6, :cond_3

    .line 1469
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v7

    nop

    .line 1470
    .local v3, "touchEnd":Z
    :cond_3
    :goto_2
    invoke-virtual {p0, v4, v7, v3}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->setProgress(FIZ)V

    .line 1471
    return-void
.end method

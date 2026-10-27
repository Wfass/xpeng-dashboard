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

    .line 1398
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    .line 1440
    :cond_0
    iget-boolean p1, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mIsDragging:Z

    if-eqz p1, :cond_8

    .line 1441
    iput-boolean v2, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mIsDragging:Z

    .line 1442
    iget-object p1, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {p1}, Lxiaopeng/widget/SimpleSlider;->onStopTrackingTouch()V

    goto/16 :goto_1

    .line 1411
    :cond_1
    iget-boolean v0, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mIsDragging:Z

    if-eqz v0, :cond_2

    .line 1412
    invoke-virtual {p0, p1}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1414
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1415
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 1416
    iget-object v3, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v3}, Lxiaopeng/widget/SimpleSlider;->isVertical()Z

    move-result v3

    if-eqz v3, :cond_3

    iget v0, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mTouchDownY:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0

    .line 1417
    :cond_3
    iget v2, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mTouchDownX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1418
    :goto_0
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v2}, Lxiaopeng/widget/SimpleSlider;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_8

    .line 1419
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->onStartTrackingTouch()V

    .line 1420
    invoke-virtual {p0, p1}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1421
    iget-object p1, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-static {p1}, Lxiaopeng/widget/SimpleSlider;->access$600(Lxiaopeng/widget/SimpleSlider;)V

    goto :goto_1

    .line 1427
    :cond_4
    iget-boolean v0, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mIsDragging:Z

    if-eqz v0, :cond_5

    .line 1428
    invoke-virtual {p0, p1}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1429
    iput-boolean v2, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mIsDragging:Z

    goto :goto_1

    .line 1433
    :cond_5
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->onStartTrackingTouch()V

    .line 1434
    invoke-virtual {p0, p1}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1435
    iput-boolean v2, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mIsDragging:Z

    goto :goto_1

    .line 1400
    :cond_6
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->startDragDirectly()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1401
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mTouchDownX:F

    .line 1402
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mTouchDownY:F

    goto :goto_1

    .line 1404
    :cond_7
    invoke-virtual {p0}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->onStartTrackingTouch()V

    .line 1405
    invoke-virtual {p0, p1}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 1406
    iget-object p1, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-static {p1}, Lxiaopeng/widget/SimpleSlider;->access$600(Lxiaopeng/widget/SimpleSlider;)V

    :cond_8
    :goto_1
    return v1
.end method


# virtual methods
.method protected onStartTrackingTouch()V
    .locals 1

    const/4 v0, 0x1

    .line 1450
    iput-boolean v0, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mIsDragging:Z

    .line 1451
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->onStartTrackingTouch()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1394
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->handleSeekTouch(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5

    .line 1455
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->getSliderWidth()I

    move-result v0

    .line 1456
    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v1}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v1}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1458
    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v1}, Lxiaopeng/widget/SimpleSlider;->isVertical()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1459
    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v1}, Lxiaopeng/widget/SimpleSlider;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v3}, Lxiaopeng/widget/SimpleSlider;->getPaddingTop()I

    move-result v3

    :goto_0
    int-to-float v3, v3

    sub-float/2addr v1, v3

    goto :goto_1

    .line 1460
    :cond_0
    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v1}, Lxiaopeng/widget/SimpleSlider;->getLayoutDirection()I

    move-result v1

    if-ne v1, v2, :cond_1

    int-to-float v1, v0

    .line 1461
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v3}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingStart()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    goto :goto_1

    .line 1463
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v3, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v3}, Lxiaopeng/widget/SimpleSlider;->getSliderPaddingStart()I

    move-result v3

    goto :goto_0

    :goto_1
    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 1468
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq v0, v3, :cond_3

    .line 1469
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v2, :cond_2

    goto :goto_2

    :cond_2
    move v2, v4

    .line 1470
    :cond_3
    :goto_2
    invoke-virtual {p0, v1, v4, v2}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->setProgress(FIZ)V

    return-void
.end method

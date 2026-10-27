.class public Lxiaopeng/widget/SimpleSlider$SlideHandler;
.super Ljava/lang/Object;
.source "SimpleSlider.java"

# interfaces
.implements Lxiaopeng/widget/SimpleSlider$TouchEventHandler;


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

.field private mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

.field private mTouchDownProgress:I

.field private mTouchDownX:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleSlide(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 519
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 520
    .local v0, "action":I
    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 525
    :pswitch_0
    iget-boolean v2, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mIsDragging:Z

    if-eqz v2, :cond_0

    .line 526
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider$SlideHandler;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 528
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 529
    .local v2, "x":F
    iget v3, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mTouchDownX:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v4}, Lxiaopeng/widget/SimpleSlider;->getScaledTouchSlop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 530
    iget-object v3, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v3}, Lxiaopeng/widget/SimpleSlider;->getProgress()I

    move-result v3

    iput v3, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mTouchDownProgress:I

    .line 531
    iput-boolean v1, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mIsDragging:Z

    .line 532
    iget-object v3, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v3}, Lxiaopeng/widget/SimpleSlider;->onStartTrackingTouch()V

    .line 533
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider$SlideHandler;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 534
    iget-object v3, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-static {v3}, Lxiaopeng/widget/SimpleSlider;->access$000(Lxiaopeng/widget/SimpleSlider;)V

    .line 537
    .end local v2    # "x":F
    :cond_1
    goto :goto_0

    .line 540
    :pswitch_1
    iget-boolean v2, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mIsDragging:Z

    if-eqz v2, :cond_2

    .line 541
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v2}, Lxiaopeng/widget/SimpleSlider;->onStopTrackingTouch()V

    .line 542
    const/4 v2, 0x0

    iput-boolean v2, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mIsDragging:Z

    goto :goto_0

    .line 522
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mTouchDownX:F

    .line 523
    nop

    .line 547
    :cond_2
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 551
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mTouchDownX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 552
    .local v0, "deltaX":I
    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v1}, Lxiaopeng/widget/SimpleSlider;->getWidth()I

    move-result v1

    .line 553
    .local v1, "width":I
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v2}, Lxiaopeng/widget/SimpleSlider;->getPaddingLeft()I

    move-result v2

    sub-int v2, v1, v2

    iget-object v3, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v3}, Lxiaopeng/widget/SimpleSlider;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 556
    .local v2, "availableWidth":I
    iget v3, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mTouchDownProgress:I

    int-to-float v3, v3

    .line 558
    .local v3, "progress":F
    int-to-float v4, v0

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 559
    .local v4, "scale":F
    iget-object v5, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v5}, Lxiaopeng/widget/SimpleSlider;->getSlideScale()F

    move-result v5

    mul-float/2addr v4, v5

    .line 561
    iget-object v5, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v5}, Lxiaopeng/widget/SimpleSlider;->getMax()I

    move-result v5

    iget-object v6, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v6}, Lxiaopeng/widget/SimpleSlider;->getMin()I

    move-result v6

    sub-int/2addr v5, v6

    .line 562
    .local v5, "range":I
    int-to-float v6, v5

    mul-float/2addr v6, v4

    iget-object v7, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v7}, Lxiaopeng/widget/SimpleSlider;->getMin()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    add-float/2addr v3, v6

    .line 564
    iget-object v6, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lxiaopeng/widget/SimpleSlider;->access$100(Lxiaopeng/widget/SimpleSlider;IZ)V

    .line 565
    return-void
.end method


# virtual methods
.method public onTouchEvent(Lxiaopeng/widget/SimpleSlider;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "simpleSlider"    # Lxiaopeng/widget/SimpleSlider;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 514
    iput-object p1, p0, Lxiaopeng/widget/SimpleSlider$SlideHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    .line 515
    invoke-direct {p0, p2}, Lxiaopeng/widget/SimpleSlider$SlideHandler;->handleSlide(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

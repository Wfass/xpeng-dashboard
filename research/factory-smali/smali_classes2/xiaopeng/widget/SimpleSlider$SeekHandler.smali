.class public Lxiaopeng/widget/SimpleSlider$SeekHandler;
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
    name = "SeekHandler"
.end annotation


# instance fields
.field private mIsDragging:Z

.field private mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

.field private mTouchDownX:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleSeekTouch(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 582
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 620
    :pswitch_0
    iget-boolean v0, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mIsDragging:Z

    if-eqz v0, :cond_4

    .line 621
    invoke-direct {p0}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->onStopTrackingTouch()V

    goto :goto_0

    .line 594
    :pswitch_1
    iget-boolean v0, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 595
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 597
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 598
    .local v0, "x":F
    iget v1, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mTouchDownX:F

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v2}, Lxiaopeng/widget/SimpleSlider;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 599
    invoke-direct {p0}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->onStartTrackingTouch()V

    .line 600
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 601
    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-static {v1}, Lxiaopeng/widget/SimpleSlider;->access$000(Lxiaopeng/widget/SimpleSlider;)V

    .line 604
    .end local v0    # "x":F
    :cond_1
    goto :goto_0

    .line 607
    :pswitch_2
    iget-boolean v0, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mIsDragging:Z

    if-eqz v0, :cond_2

    .line 608
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 609
    invoke-direct {p0}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->onStopTrackingTouch()V

    goto :goto_0

    .line 613
    :cond_2
    invoke-direct {p0}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->onStartTrackingTouch()V

    .line 614
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 615
    invoke-direct {p0}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->onStopTrackingTouch()V

    .line 617
    goto :goto_0

    .line 584
    :pswitch_3
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->isInScrollingContainer()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 585
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mTouchDownX:F

    goto :goto_0

    .line 587
    :cond_3
    invoke-direct {p0}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->onStartTrackingTouch()V

    .line 588
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 589
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-static {v0}, Lxiaopeng/widget/SimpleSlider;->access$000(Lxiaopeng/widget/SimpleSlider;)V

    .line 591
    nop

    .line 625
    :cond_4
    :goto_0
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

.method private onStartTrackingTouch()V
    .locals 1

    .line 629
    const/4 v0, 0x1

    iput-boolean v0, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mIsDragging:Z

    .line 630
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->onStartTrackingTouch()V

    .line 631
    return-void
.end method

.method private onStopTrackingTouch()V
    .locals 1

    .line 634
    const/4 v0, 0x0

    iput-boolean v0, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mIsDragging:Z

    .line 635
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->onStopTrackingTouch()V

    .line 636
    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 639
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 640
    .local v0, "x":I
    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v1}, Lxiaopeng/widget/SimpleSlider;->getWidth()I

    move-result v1

    .line 641
    .local v1, "width":I
    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v2}, Lxiaopeng/widget/SimpleSlider;->getPaddingLeft()I

    move-result v2

    sub-int v2, v1, v2

    iget-object v3, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v3}, Lxiaopeng/widget/SimpleSlider;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 644
    .local v2, "availableWidth":I
    const/4 v3, 0x0

    .line 646
    .local v3, "progress":F
    int-to-float v4, v0

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 648
    .local v4, "scale":F
    iget-object v5, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v5}, Lxiaopeng/widget/SimpleSlider;->getMax()I

    move-result v5

    iget-object v6, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v6}, Lxiaopeng/widget/SimpleSlider;->getMin()I

    move-result v6

    sub-int/2addr v5, v6

    .line 649
    .local v5, "range":I
    int-to-float v6, v5

    mul-float/2addr v6, v4

    iget-object v7, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v7}, Lxiaopeng/widget/SimpleSlider;->getMin()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    add-float/2addr v3, v6

    .line 651
    iget-object v6, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lxiaopeng/widget/SimpleSlider;->access$100(Lxiaopeng/widget/SimpleSlider;IZ)V

    .line 652
    return-void
.end method


# virtual methods
.method public onTouchEvent(Lxiaopeng/widget/SimpleSlider;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "simpleSlider"    # Lxiaopeng/widget/SimpleSlider;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 577
    iput-object p1, p0, Lxiaopeng/widget/SimpleSlider$SeekHandler;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    .line 578
    invoke-direct {p0, p2}, Lxiaopeng/widget/SimpleSlider$SeekHandler;->handleSeekTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

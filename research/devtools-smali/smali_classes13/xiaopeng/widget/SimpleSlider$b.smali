.class public Lxiaopeng/widget/SimpleSlider$b;
.super Ljava/lang/Object;
.source "SimpleSlider.java"

# interfaces
.implements Lxiaopeng/widget/SimpleSlider$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxiaopeng/widget/SimpleSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private akM:F

.field private akN:Z

.field private atC:Lxiaopeng/widget/SimpleSlider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private e(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 582
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 620
    :pswitch_0
    iget-boolean p1, p0, Lxiaopeng/widget/SimpleSlider$b;->akN:Z

    if-eqz p1, :cond_4

    .line 621
    invoke-direct {p0}, Lxiaopeng/widget/SimpleSlider$b;->onStopTrackingTouch()V

    goto :goto_0

    .line 594
    :pswitch_1
    iget-boolean v0, p0, Lxiaopeng/widget/SimpleSlider$b;->akN:Z

    if-eqz v0, :cond_0

    .line 595
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider$b;->f(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 597
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 598
    iget v1, p0, Lxiaopeng/widget/SimpleSlider$b;->akM:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider$b;->atC:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v1}, Lxiaopeng/widget/SimpleSlider;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 599
    invoke-direct {p0}, Lxiaopeng/widget/SimpleSlider$b;->onStartTrackingTouch()V

    .line 600
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider$b;->f(Landroid/view/MotionEvent;)V

    .line 601
    iget-object p1, p0, Lxiaopeng/widget/SimpleSlider$b;->atC:Lxiaopeng/widget/SimpleSlider;

    invoke-static {p1}, Lxiaopeng/widget/SimpleSlider;->a(Lxiaopeng/widget/SimpleSlider;)V

    .line 604
    :cond_1
    goto :goto_0

    .line 607
    :pswitch_2
    iget-boolean v0, p0, Lxiaopeng/widget/SimpleSlider$b;->akN:Z

    if-eqz v0, :cond_2

    .line 608
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider$b;->f(Landroid/view/MotionEvent;)V

    .line 609
    invoke-direct {p0}, Lxiaopeng/widget/SimpleSlider$b;->onStopTrackingTouch()V

    goto :goto_0

    .line 613
    :cond_2
    invoke-direct {p0}, Lxiaopeng/widget/SimpleSlider$b;->onStartTrackingTouch()V

    .line 614
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider$b;->f(Landroid/view/MotionEvent;)V

    .line 615
    invoke-direct {p0}, Lxiaopeng/widget/SimpleSlider$b;->onStopTrackingTouch()V

    .line 617
    goto :goto_0

    .line 584
    :pswitch_3
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$b;->atC:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->isInScrollingContainer()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 585
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lxiaopeng/widget/SimpleSlider$b;->akM:F

    goto :goto_0

    .line 587
    :cond_3
    invoke-direct {p0}, Lxiaopeng/widget/SimpleSlider$b;->onStartTrackingTouch()V

    .line 588
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider$b;->f(Landroid/view/MotionEvent;)V

    .line 589
    iget-object p1, p0, Lxiaopeng/widget/SimpleSlider$b;->atC:Lxiaopeng/widget/SimpleSlider;

    invoke-static {p1}, Lxiaopeng/widget/SimpleSlider;->a(Lxiaopeng/widget/SimpleSlider;)V

    .line 591
    nop

    .line 625
    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private f(Landroid/view/MotionEvent;)V
    .locals 2

    .line 639
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 640
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$b;->atC:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->getWidth()I

    move-result v0

    .line 641
    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider$b;->atC:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v1}, Lxiaopeng/widget/SimpleSlider;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider$b;->atC:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v1}, Lxiaopeng/widget/SimpleSlider;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 644
    nop

    .line 646
    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 648
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$b;->atC:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->getMax()I

    move-result v0

    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider$b;->atC:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v1}, Lxiaopeng/widget/SimpleSlider;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    .line 649
    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$b;->atC:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->getMin()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    const/4 v0, 0x0

    add-float/2addr v0, p1

    .line 651
    iget-object p1, p0, Lxiaopeng/widget/SimpleSlider$b;->atC:Lxiaopeng/widget/SimpleSlider;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lxiaopeng/widget/SimpleSlider;->a(Lxiaopeng/widget/SimpleSlider;IZ)V

    .line 652
    return-void
.end method

.method private onStartTrackingTouch()V
    .locals 1

    .line 629
    const/4 v0, 0x1

    iput-boolean v0, p0, Lxiaopeng/widget/SimpleSlider$b;->akN:Z

    .line 630
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$b;->atC:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->onStartTrackingTouch()V

    .line 631
    return-void
.end method

.method private onStopTrackingTouch()V
    .locals 1

    .line 634
    const/4 v0, 0x0

    iput-boolean v0, p0, Lxiaopeng/widget/SimpleSlider$b;->akN:Z

    .line 635
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$b;->atC:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->onStopTrackingTouch()V

    .line 636
    return-void
.end method


# virtual methods
.method public a(Lxiaopeng/widget/SimpleSlider;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 577
    iput-object p1, p0, Lxiaopeng/widget/SimpleSlider$b;->atC:Lxiaopeng/widget/SimpleSlider;

    .line 578
    invoke-direct {p0, p2}, Lxiaopeng/widget/SimpleSlider$b;->e(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

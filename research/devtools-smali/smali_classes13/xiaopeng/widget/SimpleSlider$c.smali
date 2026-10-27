.class public Lxiaopeng/widget/SimpleSlider$c;
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
    name = "c"
.end annotation


# instance fields
.field private akM:F

.field private akN:Z

.field private atC:Lxiaopeng/widget/SimpleSlider;

.field private atD:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private f(Landroid/view/MotionEvent;)V
    .locals 3

    .line 551
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v0, p0, Lxiaopeng/widget/SimpleSlider$c;->akM:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 552
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$c;->atC:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->getWidth()I

    move-result v0

    .line 553
    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider$c;->atC:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v1}, Lxiaopeng/widget/SimpleSlider;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lxiaopeng/widget/SimpleSlider$c;->atC:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v1}, Lxiaopeng/widget/SimpleSlider;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 556
    iget v1, p0, Lxiaopeng/widget/SimpleSlider$c;->atD:I

    int-to-float v1, v1

    .line 558
    int-to-float p1, p1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 559
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$c;->atC:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->getSlideScale()F

    move-result v0

    mul-float/2addr p1, v0

    .line 561
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$c;->atC:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->getMax()I

    move-result v0

    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider$c;->atC:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v2}, Lxiaopeng/widget/SimpleSlider;->getMin()I

    move-result v2

    sub-int/2addr v0, v2

    .line 562
    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$c;->atC:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->getMin()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p1, v0

    add-float/2addr v1, p1

    .line 564
    iget-object p1, p0, Lxiaopeng/widget/SimpleSlider$c;->atC:Lxiaopeng/widget/SimpleSlider;

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lxiaopeng/widget/SimpleSlider;->a(Lxiaopeng/widget/SimpleSlider;IZ)V

    .line 565
    return-void
.end method

.method private g(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 519
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 520
    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 525
    :pswitch_0
    iget-boolean v0, p0, Lxiaopeng/widget/SimpleSlider$c;->akN:Z

    if-eqz v0, :cond_0

    .line 526
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider$c;->f(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 528
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 529
    iget v2, p0, Lxiaopeng/widget/SimpleSlider$c;->akM:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p0, Lxiaopeng/widget/SimpleSlider$c;->atC:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v2}, Lxiaopeng/widget/SimpleSlider;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 530
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$c;->atC:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->getProgress()I

    move-result v0

    iput v0, p0, Lxiaopeng/widget/SimpleSlider$c;->atD:I

    .line 531
    iput-boolean v1, p0, Lxiaopeng/widget/SimpleSlider$c;->akN:Z

    .line 532
    iget-object v0, p0, Lxiaopeng/widget/SimpleSlider$c;->atC:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->onStartTrackingTouch()V

    .line 533
    invoke-direct {p0, p1}, Lxiaopeng/widget/SimpleSlider$c;->f(Landroid/view/MotionEvent;)V

    .line 534
    iget-object p1, p0, Lxiaopeng/widget/SimpleSlider$c;->atC:Lxiaopeng/widget/SimpleSlider;

    invoke-static {p1}, Lxiaopeng/widget/SimpleSlider;->a(Lxiaopeng/widget/SimpleSlider;)V

    .line 537
    :cond_1
    goto :goto_0

    .line 540
    :pswitch_1
    iget-boolean p1, p0, Lxiaopeng/widget/SimpleSlider$c;->akN:Z

    if-eqz p1, :cond_2

    .line 541
    iget-object p1, p0, Lxiaopeng/widget/SimpleSlider$c;->atC:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {p1}, Lxiaopeng/widget/SimpleSlider;->onStopTrackingTouch()V

    .line 542
    const/4 p1, 0x0

    iput-boolean p1, p0, Lxiaopeng/widget/SimpleSlider$c;->akN:Z

    goto :goto_0

    .line 522
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lxiaopeng/widget/SimpleSlider$c;->akM:F

    .line 523
    nop

    .line 547
    :cond_2
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(Lxiaopeng/widget/SimpleSlider;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 514
    iput-object p1, p0, Lxiaopeng/widget/SimpleSlider$c;->atC:Lxiaopeng/widget/SimpleSlider;

    .line 515
    invoke-direct {p0, p2}, Lxiaopeng/widget/SimpleSlider$c;->g(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

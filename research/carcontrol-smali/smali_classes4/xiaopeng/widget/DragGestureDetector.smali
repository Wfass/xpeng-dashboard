.class public Lxiaopeng/widget/DragGestureDetector;
.super Ljava/lang/Object;
.source "DragGestureDetector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DragGestureDetector"


# instance fields
.field private mAlwaysInTapRegion:Z

.field private mDownX:F

.field private mDownY:F

.field private mHandleClick:Z

.field private mIsDragging:Z

.field private final mSeekHandler:Lxiaopeng/widget/SimpleSlider$SeekHandler;

.field private mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

.field private final mSlideHandler:Lxiaopeng/widget/SimpleSlider$SlideHandler;

.field private final mTouchSlopSquare:F

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lxiaopeng/widget/SimpleSlider$SlideHandler;

    invoke-direct {v0}, Lxiaopeng/widget/SimpleSlider$SlideHandler;-><init>()V

    iput-object v0, p0, Lxiaopeng/widget/DragGestureDetector;->mSlideHandler:Lxiaopeng/widget/SimpleSlider$SlideHandler;

    .line 21
    new-instance v0, Lxiaopeng/widget/SimpleSlider$SeekHandler;

    invoke-direct {v0}, Lxiaopeng/widget/SimpleSlider$SeekHandler;-><init>()V

    iput-object v0, p0, Lxiaopeng/widget/DragGestureDetector;->mSeekHandler:Lxiaopeng/widget/SimpleSlider$SeekHandler;

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lxiaopeng/widget/DragGestureDetector;->mDownX:F

    iput v0, p0, Lxiaopeng/widget/DragGestureDetector;->mDownY:F

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lxiaopeng/widget/DragGestureDetector;->mAlwaysInTapRegion:Z

    .line 27
    iput-boolean v0, p0, Lxiaopeng/widget/DragGestureDetector;->mHandleClick:Z

    .line 31
    iput-object p1, p0, Lxiaopeng/widget/DragGestureDetector;->mView:Landroid/view/View;

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v0

    .line 33
    iput v0, p0, Lxiaopeng/widget/DragGestureDetector;->mTouchSlopSquare:F

    .line 34
    new-instance v0, Lxiaopeng/widget/-$$Lambda$DragGestureDetector$zI8nOhtLPCLRyy9_RRUH0KuK050;

    invoke-direct {v0, p0}, Lxiaopeng/widget/-$$Lambda$DragGestureDetector$zI8nOhtLPCLRyy9_RRUH0KuK050;-><init>(Lxiaopeng/widget/DragGestureDetector;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private onTouchEnd(Landroid/view/MotionEvent;)V
    .locals 1

    .line 111
    iget-object p1, p0, Lxiaopeng/widget/DragGestureDetector;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    if-eqz p1, :cond_0

    .line 112
    iget-object v0, p0, Lxiaopeng/widget/DragGestureDetector;->mSeekHandler:Lxiaopeng/widget/SimpleSlider$SeekHandler;

    invoke-virtual {p1, v0}, Lxiaopeng/widget/SimpleSlider;->setTouchEventHandler(Lxiaopeng/widget/SimpleSlider$TouchEventHandler;)V

    :cond_0
    return-void
.end method

.method private onTouchStart(Landroid/view/MotionEvent;)V
    .locals 1

    .line 104
    iget-object p1, p0, Lxiaopeng/widget/DragGestureDetector;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    if-eqz p1, :cond_0

    .line 105
    iget-object v0, p0, Lxiaopeng/widget/DragGestureDetector;->mSlideHandler:Lxiaopeng/widget/SimpleSlider$SlideHandler;

    invoke-virtual {p1, v0}, Lxiaopeng/widget/SimpleSlider;->setTouchEventHandler(Lxiaopeng/widget/SimpleSlider$TouchEventHandler;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$DragGestureDetector(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 34
    invoke-virtual {p0, p2}, Lxiaopeng/widget/DragGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onDrag(Landroid/view/MotionEvent;)V
    .locals 2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDrag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DragGestureDetector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lxiaopeng/widget/DragGestureDetector;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    if-eqz v0, :cond_0

    .line 119
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 121
    iget-object v0, p0, Lxiaopeng/widget/DragGestureDetector;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->getTouchEventHandler()Lxiaopeng/widget/SimpleSlider$TouchEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lxiaopeng/widget/SimpleSlider$TouchEventHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method

.method protected onDragging(Landroid/view/MotionEvent;)V
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDragging: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DragGestureDetector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lxiaopeng/widget/DragGestureDetector;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->getTouchEventHandler()Lxiaopeng/widget/SimpleSlider$TouchEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lxiaopeng/widget/SimpleSlider$TouchEventHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method

.method protected onDrop(Landroid/view/MotionEvent;)V
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDrop: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DragGestureDetector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lxiaopeng/widget/DragGestureDetector;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->getTouchEventHandler()Lxiaopeng/widget/SimpleSlider$TouchEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lxiaopeng/widget/SimpleSlider$TouchEventHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    .line 92
    :cond_0
    iget-boolean v0, p0, Lxiaopeng/widget/DragGestureDetector;->mIsDragging:Z

    if-eqz v0, :cond_1

    .line 93
    iput-boolean v1, p0, Lxiaopeng/widget/DragGestureDetector;->mIsDragging:Z

    .line 94
    invoke-virtual {p0, p1}, Lxiaopeng/widget/DragGestureDetector;->onDrop(Landroid/view/MotionEvent;)V

    .line 96
    :cond_1
    invoke-direct {p0, p1}, Lxiaopeng/widget/DragGestureDetector;->onTouchEnd(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 56
    :cond_2
    iget-boolean v0, p0, Lxiaopeng/widget/DragGestureDetector;->mIsDragging:Z

    if-eqz v0, :cond_3

    .line 57
    invoke-virtual {p0, p1}, Lxiaopeng/widget/DragGestureDetector;->onDragging(Landroid/view/MotionEvent;)V

    :goto_0
    move v1, v2

    goto :goto_1

    .line 60
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 62
    iget v4, p0, Lxiaopeng/widget/DragGestureDetector;->mDownX:F

    sub-float/2addr v0, v4

    float-to-int v0, v0

    .line 63
    iget v4, p0, Lxiaopeng/widget/DragGestureDetector;->mDownY:F

    sub-float/2addr v3, v4

    float-to-int v3, v3

    mul-int/2addr v0, v0

    mul-int/2addr v3, v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    .line 65
    iget v3, p0, Lxiaopeng/widget/DragGestureDetector;->mTouchSlopSquare:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_a

    .line 66
    iget-boolean v0, p0, Lxiaopeng/widget/DragGestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v0, :cond_4

    .line 67
    iput-boolean v1, p0, Lxiaopeng/widget/DragGestureDetector;->mAlwaysInTapRegion:Z

    .line 69
    :cond_4
    iput-boolean v2, p0, Lxiaopeng/widget/DragGestureDetector;->mIsDragging:Z

    .line 70
    invoke-virtual {p0, p1}, Lxiaopeng/widget/DragGestureDetector;->onDrag(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 76
    :cond_5
    iget-boolean v0, p0, Lxiaopeng/widget/DragGestureDetector;->mIsDragging:Z

    if-eqz v0, :cond_6

    .line 77
    iput-boolean v1, p0, Lxiaopeng/widget/DragGestureDetector;->mIsDragging:Z

    .line 78
    invoke-virtual {p0, p1}, Lxiaopeng/widget/DragGestureDetector;->onDrop(Landroid/view/MotionEvent;)V

    move v1, v2

    .line 81
    :cond_6
    iget-boolean v0, p0, Lxiaopeng/widget/DragGestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v0, :cond_8

    .line 82
    iget-boolean v0, p0, Lxiaopeng/widget/DragGestureDetector;->mHandleClick:Z

    if-eqz v0, :cond_8

    .line 83
    iget-object v0, p0, Lxiaopeng/widget/DragGestureDetector;->mView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 84
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    :cond_7
    move v1, v2

    .line 89
    :cond_8
    invoke-direct {p0, p1}, Lxiaopeng/widget/DragGestureDetector;->onTouchEnd(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 50
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lxiaopeng/widget/DragGestureDetector;->mDownX:F

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lxiaopeng/widget/DragGestureDetector;->mDownY:F

    .line 52
    iput-boolean v2, p0, Lxiaopeng/widget/DragGestureDetector;->mAlwaysInTapRegion:Z

    .line 53
    invoke-direct {p0, p1}, Lxiaopeng/widget/DragGestureDetector;->onTouchStart(Landroid/view/MotionEvent;)V

    :cond_a
    :goto_1
    return v1
.end method

.method public setHandleClick(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lxiaopeng/widget/DragGestureDetector;->mHandleClick:Z

    return-void
.end method

.method public setupSimpleSlider(Lxiaopeng/widget/SimpleSlider;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lxiaopeng/widget/DragGestureDetector;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    return-void
.end method

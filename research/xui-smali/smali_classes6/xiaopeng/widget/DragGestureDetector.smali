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
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

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

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lxiaopeng/widget/DragGestureDetector;->mDownX:F

    iput v0, p0, Lxiaopeng/widget/DragGestureDetector;->mDownY:F

    .line 25
    const/4 v0, 0x0

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

    .line 33
    .local v0, "slop":F
    mul-float v1, v0, v0

    iput v1, p0, Lxiaopeng/widget/DragGestureDetector;->mTouchSlopSquare:F

    .line 34
    new-instance v1, Lxiaopeng/widget/-$$Lambda$DragGestureDetector$f_dhS1KTf_EwuVRC1APUuYK8H_U;

    invoke-direct {v1, p0}, Lxiaopeng/widget/-$$Lambda$DragGestureDetector$f_dhS1KTf_EwuVRC1APUuYK8H_U;-><init>(Lxiaopeng/widget/DragGestureDetector;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 35
    return-void
.end method

.method public static synthetic lambda$new$0(Lxiaopeng/widget/DragGestureDetector;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 34
    invoke-virtual {p0, p2}, Lxiaopeng/widget/DragGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private onTouchEnd(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 111
    iget-object v0, p0, Lxiaopeng/widget/DragGestureDetector;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lxiaopeng/widget/DragGestureDetector;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    iget-object v1, p0, Lxiaopeng/widget/DragGestureDetector;->mSeekHandler:Lxiaopeng/widget/SimpleSlider$SeekHandler;

    invoke-virtual {v0, v1}, Lxiaopeng/widget/SimpleSlider;->setTouchEventHandler(Lxiaopeng/widget/SimpleSlider$TouchEventHandler;)V

    .line 114
    :cond_0
    return-void
.end method

.method private onTouchStart(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 104
    iget-object v0, p0, Lxiaopeng/widget/DragGestureDetector;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lxiaopeng/widget/DragGestureDetector;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    iget-object v1, p0, Lxiaopeng/widget/DragGestureDetector;->mSlideHandler:Lxiaopeng/widget/SimpleSlider$SlideHandler;

    invoke-virtual {v0, v1}, Lxiaopeng/widget/SimpleSlider;->setTouchEventHandler(Lxiaopeng/widget/SimpleSlider$TouchEventHandler;)V

    .line 107
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDrag(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 117
    const-string v0, "DragGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lxiaopeng/widget/DragGestureDetector;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    if-eqz v0, :cond_0

    .line 119
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 120
    .local v0, "newEvent":Landroid/view/MotionEvent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 121
    iget-object v1, p0, Lxiaopeng/widget/DragGestureDetector;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v1}, Lxiaopeng/widget/SimpleSlider;->getTouchEventHandler()Lxiaopeng/widget/SimpleSlider$TouchEventHandler;

    move-result-object v1

    invoke-interface {v1, v0}, Lxiaopeng/widget/SimpleSlider$TouchEventHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 123
    .end local v0    # "newEvent":Landroid/view/MotionEvent;
    :cond_0
    return-void
.end method

.method protected onDragging(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 126
    const-string v0, "DragGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragging: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lxiaopeng/widget/DragGestureDetector;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lxiaopeng/widget/DragGestureDetector;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->getTouchEventHandler()Lxiaopeng/widget/SimpleSlider$TouchEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lxiaopeng/widget/SimpleSlider$TouchEventHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 130
    :cond_0
    return-void
.end method

.method protected onDrop(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 133
    const-string v0, "DragGestureDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lxiaopeng/widget/DragGestureDetector;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lxiaopeng/widget/DragGestureDetector;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    invoke-virtual {v0}, Lxiaopeng/widget/SimpleSlider;->getTouchEventHandler()Lxiaopeng/widget/SimpleSlider$TouchEventHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lxiaopeng/widget/SimpleSlider$TouchEventHandler;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 137
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 48
    .local v1, "action":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 92
    :pswitch_0
    iget-boolean v2, p0, Lxiaopeng/widget/DragGestureDetector;->mIsDragging:Z

    if-eqz v2, :cond_0

    .line 93
    iput-boolean v3, p0, Lxiaopeng/widget/DragGestureDetector;->mIsDragging:Z

    .line 94
    invoke-virtual {p0, p1}, Lxiaopeng/widget/DragGestureDetector;->onDrop(Landroid/view/MotionEvent;)V

    .line 96
    :cond_0
    invoke-direct {p0, p1}, Lxiaopeng/widget/DragGestureDetector;->onTouchEnd(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 56
    :pswitch_1
    iget-boolean v4, p0, Lxiaopeng/widget/DragGestureDetector;->mIsDragging:Z

    if-eqz v4, :cond_1

    .line 57
    invoke-virtual {p0, p1}, Lxiaopeng/widget/DragGestureDetector;->onDragging(Landroid/view/MotionEvent;)V

    .line 58
    const/4 v0, 0x1

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 61
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 62
    .local v5, "y":F
    iget v6, p0, Lxiaopeng/widget/DragGestureDetector;->mDownX:F

    sub-float v6, v4, v6

    float-to-int v6, v6

    .line 63
    .local v6, "deltaX":I
    iget v7, p0, Lxiaopeng/widget/DragGestureDetector;->mDownY:F

    sub-float v7, v5, v7

    float-to-int v7, v7

    .line 64
    .local v7, "deltaY":I
    mul-int v8, v6, v6

    mul-int v9, v7, v7

    add-int/2addr v8, v9

    .line 65
    .local v8, "distance":I
    int-to-float v9, v8

    iget v10, p0, Lxiaopeng/widget/DragGestureDetector;->mTouchSlopSquare:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    .line 66
    iget-boolean v9, p0, Lxiaopeng/widget/DragGestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v9, :cond_2

    .line 67
    iput-boolean v3, p0, Lxiaopeng/widget/DragGestureDetector;->mAlwaysInTapRegion:Z

    .line 69
    :cond_2
    iput-boolean v2, p0, Lxiaopeng/widget/DragGestureDetector;->mIsDragging:Z

    .line 70
    invoke-virtual {p0, p1}, Lxiaopeng/widget/DragGestureDetector;->onDrag(Landroid/view/MotionEvent;)V

    .line 71
    const/4 v0, 0x1

    .line 74
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "deltaX":I
    .end local v7    # "deltaY":I
    .end local v8    # "distance":I
    :cond_3
    goto :goto_0

    .line 76
    :pswitch_2
    iget-boolean v2, p0, Lxiaopeng/widget/DragGestureDetector;->mIsDragging:Z

    if-eqz v2, :cond_4

    .line 77
    iput-boolean v3, p0, Lxiaopeng/widget/DragGestureDetector;->mIsDragging:Z

    .line 78
    invoke-virtual {p0, p1}, Lxiaopeng/widget/DragGestureDetector;->onDrop(Landroid/view/MotionEvent;)V

    .line 79
    const/4 v0, 0x1

    .line 81
    :cond_4
    iget-boolean v2, p0, Lxiaopeng/widget/DragGestureDetector;->mAlwaysInTapRegion:Z

    if-eqz v2, :cond_6

    .line 82
    iget-boolean v2, p0, Lxiaopeng/widget/DragGestureDetector;->mHandleClick:Z

    if-eqz v2, :cond_6

    .line 83
    iget-object v2, p0, Lxiaopeng/widget/DragGestureDetector;->mView:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 84
    iget-object v2, p0, Lxiaopeng/widget/DragGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->performClick()Z

    .line 86
    :cond_5
    const/4 v0, 0x1

    .line 89
    :cond_6
    invoke-direct {p0, p1}, Lxiaopeng/widget/DragGestureDetector;->onTouchEnd(Landroid/view/MotionEvent;)V

    .line 90
    goto :goto_0

    .line 50
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lxiaopeng/widget/DragGestureDetector;->mDownX:F

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lxiaopeng/widget/DragGestureDetector;->mDownY:F

    .line 52
    iput-boolean v2, p0, Lxiaopeng/widget/DragGestureDetector;->mAlwaysInTapRegion:Z

    .line 53
    invoke-direct {p0, p1}, Lxiaopeng/widget/DragGestureDetector;->onTouchStart(Landroid/view/MotionEvent;)V

    .line 54
    nop

    .line 99
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setHandleClick(Z)V
    .locals 0
    .param p1, "handleClick"    # Z

    .line 42
    iput-boolean p1, p0, Lxiaopeng/widget/DragGestureDetector;->mHandleClick:Z

    .line 43
    return-void
.end method

.method public setupSimpleSlider(Lxiaopeng/widget/SimpleSlider;)V
    .locals 0
    .param p1, "simpleSlider"    # Lxiaopeng/widget/SimpleSlider;

    .line 38
    iput-object p1, p0, Lxiaopeng/widget/DragGestureDetector;->mSimpleSlider:Lxiaopeng/widget/SimpleSlider;

    .line 39
    return-void
.end method

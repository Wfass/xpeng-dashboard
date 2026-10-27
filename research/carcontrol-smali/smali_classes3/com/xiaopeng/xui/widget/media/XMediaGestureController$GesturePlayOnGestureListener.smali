.class public Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "XMediaGestureController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/media/XMediaGestureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GesturePlayOnGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextClick(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 126
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onContextClick(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->access$200(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;)Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->access$200(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;)Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;->onDoubleTapGesture(Landroid/view/MotionEvent;)V

    .line 134
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 139
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->access$102(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;I)I

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->access$200(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;)Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->access$200(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;)Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;->onDown(Landroid/view/MotionEvent;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 154
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 149
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->access$100(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->access$200(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;)Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->access$200(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;)Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;->onVideoSeekToGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->access$200(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;)Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->access$200(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;)Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;->onBrightnessGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    goto :goto_0

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->access$200(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;)Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->access$200(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;)Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;->onVolumeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    goto :goto_0

    .line 95
    :cond_3
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p3

    sub-float/2addr p2, p3

    int-to-float p3, v3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_4

    .line 96
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    invoke-static {p1, v1}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->access$102(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;I)I

    goto :goto_0

    .line 98
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object p2, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->getWidth()I

    move-result p2

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    cmpg-float p1, p1, p2

    if-gez p1, :cond_5

    .line 99
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    invoke-static {p1, v2}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->access$102(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;I)I

    goto :goto_0

    .line 101
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    invoke-static {p1, v3}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->access$102(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;I)I

    :cond_6
    :goto_0
    return v3
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 159
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->access$200(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;)Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->access$200(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;)Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;->onSingleTapGesture(Landroid/view/MotionEvent;)V

    .line 168
    :cond_0
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 144
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

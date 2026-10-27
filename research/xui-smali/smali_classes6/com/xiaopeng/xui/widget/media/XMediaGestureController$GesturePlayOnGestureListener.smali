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
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    .line 77
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextClick(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 126
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onContextClick(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

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

    move-result v0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 139
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

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

    .line 85
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .line 154
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 149
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 150
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 91
    const/4 v0, 0x1

    .line 92
    .local v0, "offsetX":I
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    invoke-static {v1}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->access$100(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;)I

    move-result v1

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 116
    :pswitch_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    invoke-static {v1}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->access$200(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;)Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 117
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    invoke-static {v1}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->access$200(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;)Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;->onVideoSeekToGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    invoke-static {v1}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->access$200(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;)Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 112
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    invoke-static {v1}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->access$200(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;)Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;->onBrightnessGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    goto :goto_0

    .line 106
    :pswitch_2
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    invoke-static {v1}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->access$200(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;)Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    invoke-static {v1}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->access$200(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;)Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/media/GesturePlayerListener;->onVolumeGesture(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    goto :goto_0

    .line 95
    :pswitch_3
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float/2addr v1, v3

    int-to-float v3, v0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->access$102(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;I)I

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->access$102(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;I)I

    goto :goto_0

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/media/XMediaGestureController$GesturePlayOnGestureListener;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaGestureController;

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/widget/media/XMediaGestureController;->access$102(Lcom/xiaopeng/xui/widget/media/XMediaGestureController;I)I

    .line 104
    nop

    .line 121
    :cond_2
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 159
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    .line 160
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

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

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 144
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

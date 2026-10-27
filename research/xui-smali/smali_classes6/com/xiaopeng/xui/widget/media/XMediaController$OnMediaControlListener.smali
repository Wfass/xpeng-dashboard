.class public interface abstract Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;
.super Ljava/lang/Object;
.source "XMediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/media/XMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMediaControlListener"
.end annotation


# virtual methods
.method public onDragging(Z)V
    .locals 0
    .param p1, "isDragging"    # Z

    .line 299
    return-void
.end method

.method public onPlayStateChanged(I)V
    .locals 0
    .param p1, "playState"    # I

    .line 293
    return-void
.end method

.method public onProgressChanged(I)V
    .locals 0
    .param p1, "progress"    # I

    .line 296
    return-void
.end method

.method public onSeekTo(I)V
    .locals 0
    .param p1, "progress"    # I

    .line 302
    return-void
.end method

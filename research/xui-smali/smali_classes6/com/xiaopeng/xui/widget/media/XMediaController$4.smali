.class Lcom/xiaopeng/xui/widget/media/XMediaController$4;
.super Ljava/lang/Object;
.source "XMediaController.java"

# interfaces
.implements Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/media/XMediaController;->setVideoView(Lcom/xiaopeng/xui/widget/media/IVideoView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/media/XMediaController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/media/XMediaController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/media/XMediaController;

    .line 220
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/media/XMediaController$4;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayStateChanged(I)V
    .locals 1
    .param p1, "playState"    # I

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController$4;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaController;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XMediaController;->onMediaControlListener:Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/media/XMediaController$4;->this$0:Lcom/xiaopeng/xui/widget/media/XMediaController;

    iget-object v0, v0, Lcom/xiaopeng/xui/widget/media/XMediaController;->onMediaControlListener:Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/widget/media/XMediaController$OnMediaControlListener;->onPlayStateChanged(I)V

    .line 226
    :cond_0
    return-void
.end method

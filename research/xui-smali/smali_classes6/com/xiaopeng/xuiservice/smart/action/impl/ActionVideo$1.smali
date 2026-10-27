.class Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo$1;
.super Landroid/view/SurfaceView;
.source "ActionVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;->showVideoViewAndPlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;
    .param p2, "x0"    # Landroid/content/Context;

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo$1;->this$0:Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;

    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    .line 51
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surface view detached, stop player, action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo$1;->this$0:Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo$1;->this$0:Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;->stopAndReleaseMediaPlayer()V

    .line 54
    return-void
.end method

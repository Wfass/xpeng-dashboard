.class Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo$2;
.super Ljava/lang/Object;
.source "ActionVideo.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo$2;->this$0:Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .line 65
    const-string v0, "surfaceChanged"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 59
    const-string v0, "surfaceCreated"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo$2;->this$0:Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionVideo;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 61
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 70
    const-string v0, "surfaceDestroyed"

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/action/Actions;->INFO(Ljava/lang/String;)V

    .line 71
    return-void
.end method

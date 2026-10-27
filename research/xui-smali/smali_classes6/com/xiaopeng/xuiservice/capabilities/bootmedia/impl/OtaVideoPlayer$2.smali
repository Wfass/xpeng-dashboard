.class Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$2;
.super Ljava/lang/Object;
.source "OtaVideoPlayer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->prepareMediaPlay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;

    .line 233
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$surfaceCreated$0(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$2;Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 237
    const-string v0, "OtaVideoPlayer"

    const-string v1, "surfaceCreated, set display"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->access$000(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->access$000(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    const-string v1, "/data/xuiservice/ota/media/upgraded.mp4"

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->access$000(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->access$000(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OtaVideoPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preapre media play failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->access$000(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 248
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->access$200(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->access$100(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 249
    const-string v1, "persist.sys.xiaopeng.ota_play_media"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->access$300(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;->access$300(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer;)Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;

    move-result-object v1

    invoke-interface {v1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/PostProcessor;->afterProcess()V

    .line 254
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 259
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 236
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$2$iZIx_0TcwJVguiqMTp1ptQz3qeo;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/-$$Lambda$OtaVideoPlayer$2$iZIx_0TcwJVguiqMTp1ptQz3qeo;-><init>(Lcom/xiaopeng/xuiservice/capabilities/bootmedia/impl/OtaVideoPlayer$2;Landroid/view/SurfaceHolder;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 255
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 264
    return-void
.end method

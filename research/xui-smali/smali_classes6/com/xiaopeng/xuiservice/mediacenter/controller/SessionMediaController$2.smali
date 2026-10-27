.class Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$2;
.super Ljava/lang/Object;
.source "SessionMediaController.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/mediacenter/controller/info/IconLoader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->notifyMediaMetaData(Landroid/media/MediaMetadata;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

.field final synthetic val$mediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    .line 704
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$2;->val$mediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapLoaded(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 707
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$2$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$2$1;-><init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$2;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 715
    return-void
.end method

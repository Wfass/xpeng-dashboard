.class Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$2$1;
.super Ljava/lang/Object;
.source "SessionMediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$2;->onBitmapLoaded(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$2;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$2;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$2;

    .line 707
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$2$1;->this$1:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$2;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 710
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$2$1;->this$1:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$2;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$2;->val$mediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->setAlbumBitmap(Landroid/graphics/Bitmap;)V

    .line 711
    const-string v0, "MCService-SessionMediaController"

    const-string v1, "onBitmapLoaded and notify listener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$2$1;->this$1:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$2;

    iget-object v0, v0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$2;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$2$1;->this$1:Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$2;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController$2;->val$mediaInfo:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;->access$700(Lcom/xiaopeng/xuiservice/mediacenter/controller/SessionMediaController;Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    .line 713
    return-void
.end method

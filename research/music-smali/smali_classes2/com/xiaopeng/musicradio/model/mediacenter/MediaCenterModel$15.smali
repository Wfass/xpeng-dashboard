.class Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$15;
.super Ljava/lang/Object;
.source "MediaCenterModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->setA2dpVolume(F)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

.field final synthetic val$volume:F


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;F)V
    .locals 0

    .line 1330
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$15;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    iput p2, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$15;->val$volume:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1333
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$15;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$200(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    move-result-object v0

    const-string v1, "MediaCenterModel"

    if-eqz v0, :cond_0

    .line 1335
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$15;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$200(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$15;->val$volume:F

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->setBtVolume(F)V
    :try_end_0
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1337
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;->printStackTrace()V

    const-string v2, "setA2dpVolume fail"

    .line 1338
    invoke-static {v1, v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string v0, "setA2dpVolume fail, mediacentermanager is null"

    .line 1341
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

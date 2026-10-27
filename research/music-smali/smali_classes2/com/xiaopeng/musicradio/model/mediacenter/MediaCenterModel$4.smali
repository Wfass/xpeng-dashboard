.class Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$4;
.super Ljava/lang/Object;
.source "MediaCenterModel.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->initMediaCenterManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$4;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "MediaCenterModel"

    const-string p2, "xuiservice onServiceConnected"

    .line 253
    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$4;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    iget-object p2, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$4;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-static {p2}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$300(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)Lcom/xiaopeng/xuimanager/XUIManager;

    move-result-object p2

    const-string v0, "mediacenter"

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xuimanager/XUIManager;->getXUIServiceManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$202(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;)Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    .line 256
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$4;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p2

    invoke-virtual {p2}, Laqr;->b()I

    move-result p2

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$400(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;I)V

    .line 257
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$q;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$q;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 259
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;->printStackTrace()V

    .line 263
    :catch_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$4;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$500(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "MediaCenterModel"

    const-string v0, "xuiservice onServiceDisconnected"

    .line 268
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

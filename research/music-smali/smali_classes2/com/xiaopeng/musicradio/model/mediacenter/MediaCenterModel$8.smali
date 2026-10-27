.class Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$8;
.super Ljava/lang/Object;
.source "MediaCenterModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->vendorNotifyLyricUpdated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

.field final synthetic val$baseInfo:Lcom/xiaopeng/musicradio/bean/BaseInfo;

.field final synthetic val$info:Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;Lcom/xiaopeng/musicradio/bean/BaseInfo;Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    .locals 0

    .line 656
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$8;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$8;->val$baseInfo:Lcom/xiaopeng/musicradio/bean/BaseInfo;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$8;->val$info:Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 660
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$8;->val$baseInfo:Lcom/xiaopeng/musicradio/bean/BaseInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$8;->val$info:Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$8;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$200(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;)Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$8;->val$info:Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaCenterManager;->vendorNotifyLyricUpdated(Lcom/xiaopeng/xuimanager/mediacenter/lyric/LyricInfo;)V
    :try_end_0
    .catch Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 664
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

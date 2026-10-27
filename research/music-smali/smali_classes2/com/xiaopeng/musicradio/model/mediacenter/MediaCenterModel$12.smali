.class Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$12;
.super Ljava/lang/Object;
.source "MediaCenterModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->dealPlayState(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;I)V
    .locals 0

    .line 833
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$12;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    iput p2, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$12;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 837
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$12;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    iget v1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$12;->val$state:I

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$1300(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 839
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

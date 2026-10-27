.class Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6$1;
.super Ljava/lang/Object;
.source "MediaCenterModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;

.field final synthetic val$lyricStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;Ljava/lang/String;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6$1;->this$1:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6$1;->val$lyricStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 509
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6$1;->this$1:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;

    iget-object v1, v0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6$1;->this$1:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;

    iget-object v2, v0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->val$info:Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6$1;->this$1:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;

    iget-wide v3, v0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->val$duration:J

    iget-object v5, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6$1;->val$lyricStr:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6$1;->this$1:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;

    iget-object v6, v0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->val$preInfo:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6$1;->this$1:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;

    iget-object v7, v0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$6;->val$nextInfo:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;

    invoke-static/range {v1 .. v7}, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;->access$1000(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;JLjava/lang/String;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;)V

    return-void
.end method

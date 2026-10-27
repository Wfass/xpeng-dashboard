.class Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;
.super Ljava/lang/Object;
.source "MediaCenterModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreviewMediaInfo"
.end annotation


# instance fields
.field albumUri:Ljava/lang/String;

.field artist:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1793
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;->this$0:Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1794
    iput-object p2, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;->title:Ljava/lang/String;

    .line 1795
    iput-object p3, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;->artist:Ljava/lang/String;

    .line 1796
    iput-object p4, p0, Lcom/xiaopeng/musicradio/model/mediacenter/MediaCenterModel$PreviewMediaInfo;->albumUri:Ljava/lang/String;

    return-void
.end method

.class Lbmm$2$1$1;
.super Ljava/lang/Object;
.source "ProgramDataModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmm$2$1;->a(Lcom/xiaopeng/musicradio/bean/xpbean/ReadingTrackListBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/xpbean/ReadingTrackListBean;

.field final synthetic b:Lbmm$2$1;


# direct methods
.method constructor <init>(Lbmm$2$1;Lcom/xiaopeng/musicradio/bean/xpbean/ReadingTrackListBean;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lbmm$2$1$1;->b:Lbmm$2$1;

    iput-object p2, p0, Lbmm$2$1$1;->a:Lcom/xiaopeng/musicradio/bean/xpbean/ReadingTrackListBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 233
    iget-object v0, p0, Lbmm$2$1$1;->a:Lcom/xiaopeng/musicradio/bean/xpbean/ReadingTrackListBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingTrackListBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/ReadingTrackListBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingTrackListBean$DataBean;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingTrackListBean$DataBean$ListBean;

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update history record albumId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingTrackListBean$DataBean$ListBean;->getAlbumId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " to authoroized:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingTrackListBean$DataBean$ListBean;->isAuthorized()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProgramDataModel"

    invoke-static {v3, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lbmo;->a()Lbmo;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingTrackListBean$DataBean$ListBean;->getAlbumId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lbmo;->a(J)Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    move-result-object v2

    .line 236
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/ReadingTrackListBean$DataBean$ListBean;->isAuthorized()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->setTrackAuthorized(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

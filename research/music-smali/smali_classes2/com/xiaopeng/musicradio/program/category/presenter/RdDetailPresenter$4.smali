.class Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4;
.super Ljava/lang/Object;
.source "RdDetailPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

.field final synthetic b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4;->a:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 265
    invoke-static {}, Lbmq;->a()Lbmq;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4;->a:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbmq;->a(J)Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;

    move-result-object v0

    .line 266
    invoke-static {}, Lbmo;->a()Lbmo;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4;->a:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lbmo;->a(J)Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 268
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-static {v2, v1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    :cond_0
    if-eqz v0, :cond_1

    .line 271
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;->getSort()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    :cond_1
    new-instance v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4$1;-><init>(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    .line 287
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    const-string v2, "show"

    .line 288
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4;->a:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "album"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4;->a:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "albumclass"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    invoke-static {v0}, Lbrw;->h(Ljava/util/Map;)V

    return-void
.end method

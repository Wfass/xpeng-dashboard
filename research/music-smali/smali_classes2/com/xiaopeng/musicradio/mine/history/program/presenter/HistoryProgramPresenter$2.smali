.class Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter$2;
.super Lcom/xiaopeng/musicradio/datalist/d$a;
.source "HistoryProgramPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/datalist/d$a<",
        "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter$2;->b:Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter;

    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/datalist/d$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 145
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v1

    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter$2;->a:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 141
    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/history/program/presenter/HistoryProgramPresenter$2;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Z

    move-result p1

    return p1
.end method

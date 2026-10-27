.class Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter$1;
.super Ljava/lang/Object;
.source "BaseSearchPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;->d(Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

.field final synthetic b:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter$1;->b:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter$1;->a:Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter$1;->a:Lcom/xiaopeng/musicradio/bean/xpbean/MusicSongBean;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 330
    new-instance v1, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter$1$1;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter$1$1;-><init>(Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchPresenter$1;Ljava/lang/String;)V

    invoke-static {v1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

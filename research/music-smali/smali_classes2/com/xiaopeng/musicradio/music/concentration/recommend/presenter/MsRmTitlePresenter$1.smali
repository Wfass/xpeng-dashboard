.class Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter$1;
.super Lbkv;
.source "MsRmTitlePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 94
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->a(Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;Z)Z

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->a(Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;)V

    .line 89
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;->a(Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter;Z)Z

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 85
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmTitlePresenter$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;)V

    return-void
.end method

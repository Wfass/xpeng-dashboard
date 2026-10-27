.class Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter$1;
.super Lbkv;
.source "MsRmPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->h()V
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
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 78
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->a(Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 79
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 80
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/e;

    invoke-interface {p1, p2}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/e;->showErrorView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter$1;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->a(Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;->a(Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter;Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;I)V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 70
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/presenter/MsRmPresenter$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;)V

    return-void
.end method

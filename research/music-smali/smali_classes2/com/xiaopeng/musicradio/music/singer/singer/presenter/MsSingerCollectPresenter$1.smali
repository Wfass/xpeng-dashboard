.class Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter$1;
.super Lbkv;
.source "MsSingerCollectPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->e()V
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
.field final synthetic a:Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter$1;->a:Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 55
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter$1;->a:Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter$1;->a:Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/singer/view/a;

    invoke-interface {p1, p2}, Lcom/xiaopeng/musicradio/music/singer/singer/view/a;->showErrorView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter$1;->a:Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->a(Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->a(Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;I)V

    .line 50
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter$1;->a:Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter;->k()V

    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 46
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerCollectPresenter$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;)V

    return-void
.end method

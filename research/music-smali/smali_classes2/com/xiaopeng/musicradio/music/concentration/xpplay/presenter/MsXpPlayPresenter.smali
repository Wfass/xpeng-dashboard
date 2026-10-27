.class public Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayPresenter;
.super Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;
.source "MsXpPlayPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter<",
        "Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 3

    const-string v0, "MsXpPlayPresenter"

    const-string v1, "getXpPlayData start"

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    .line 33
    invoke-static {}, Lasp;->a()Lasp;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayPresenter$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayPresenter$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayPresenter;)V

    invoke-virtual {v1, v0, v2}, Lasp;->b(ILbkv;)V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 1

    .line 25
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/music/main/presenter/MusicBasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    const-string p1, "MsXpPlayPresenter"

    const-string v0, "onCreate"

    .line 26
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayPresenter;->e()V

    return-void
.end method

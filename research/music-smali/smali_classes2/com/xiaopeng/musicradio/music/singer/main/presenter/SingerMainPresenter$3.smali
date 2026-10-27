.class Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$3;
.super Lbkv;
.source "SingerMainPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$3;->a:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 247
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$3;->a:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a(Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;Z)Z

    .line 248
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$3;->a:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 249
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$3;->a:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/main/view/b;

    const-string p2, "singerType"

    invoke-interface {p1, p2}, Lcom/xiaopeng/musicradio/music/singer/main/view/b;->showErrorView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult;)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$3;->a:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;->getSingerAreaBoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;->getSingerAreaBoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 234
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;->getSingerTypeBoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;->getSingerTypeBoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$3;->a:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a(Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;Z)Z

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$3;->a:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/main/view/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;->getSingerAreaBoList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult$DataBean;->getSingerTypeBoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/b;->setTypeListDatas(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 238
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$3;->a:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a(Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;Z)Z

    .line 239
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$3;->a:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 240
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$3;->a:Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/main/view/b;

    const-string v0, "singerType"

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/b;->showErrorView(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 230
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/presenter/SingerMainPresenter$3;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerIndexResult;)V

    return-void
.end method

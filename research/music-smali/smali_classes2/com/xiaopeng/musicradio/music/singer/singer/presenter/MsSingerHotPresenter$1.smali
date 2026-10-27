.class Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter$1;
.super Lbkv;
.source "MsSingerHotPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;I)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter$1;->b:Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;

    iput p2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter$1;->a:I

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter$1;->b:Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter$1;->b:Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/singer/view/b;

    const-string p2, ""

    invoke-interface {p1, p2}, Lcom/xiaopeng/musicradio/music/singer/singer/view/b;->showErrorView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean;)V
    .locals 3

    .line 59
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean;->getArtistGroups()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean;->getArtistGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ltz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter$1;->b:Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->a(Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 61
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean;->getArtistGroups()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 62
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter$1;->b:Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->a(Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean$DataBean$ArtistGroupsBean;->getList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 64
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter$1;->b:Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 65
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter$1;->b:Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->k()V

    .line 66
    iget p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter$1;->a:I

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter$1;->b:Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->b(Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 67
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter$1;->b:Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->c(Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter$1;->b:Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->b(Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter$1;->b:Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->a(Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter$1;->b:Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/singer/view/b;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter$1;->b:Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->a(Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/b;->getHotData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter$1;->b:Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 74
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter$1;->b:Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/singer/singer/view/b;

    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/b;->showErrorView(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 56
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/presenter/MsSingerHotPresenter$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerResultBean;)V

    return-void
.end method

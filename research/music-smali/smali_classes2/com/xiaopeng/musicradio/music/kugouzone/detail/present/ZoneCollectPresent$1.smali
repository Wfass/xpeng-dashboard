.class Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent$1;
.super Lbkv;
.source "ZoneCollectPresent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbkv<",
        "Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;

    invoke-interface {p1, p2}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;->showErrorView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;)V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->a(Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;)I

    move-result v0

    const-string v1, ""

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getCollectList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getCollectList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;Ljava/util/List;)V

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;->showErrorView(Ljava/lang/String;)V

    .line 43
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->a(Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    if-eqz p1, :cond_2

    .line 44
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getAlbumList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getAlbumList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;Ljava/util/List;)V

    goto :goto_1

    .line 47
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 48
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;

    invoke-interface {p1, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;->showErrorView(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCollectPresent$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;)V

    return-void
.end method

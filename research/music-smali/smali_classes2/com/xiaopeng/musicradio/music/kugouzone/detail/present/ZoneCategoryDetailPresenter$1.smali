.class Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter$1;
.super Lbkv;
.source "ZoneCategoryDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;->c()V
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
.field final synthetic a:Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;

    invoke-direct {p0}, Lbkv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    .line 60
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;

    invoke-interface {p1, p2}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;->showErrorView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;)V
    .locals 2

    if-eqz p1, :cond_4

    .line 36
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 37
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getCollectList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getCollectList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;->a(Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;I)I

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;->a(Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;->setCategoryType(I)V

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getCollectList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;Ljava/util/List;)V

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getAlbumList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getAlbumList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;->a(Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;I)I

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;->a(Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/b;->setCategoryType(I)V

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getAlbumList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;Ljava/util/List;)V

    goto :goto_0

    .line 50
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "ZoneCategoryDetailPresenter"

    const-string v1, "response: AlbumList and CollectList is null"

    .line 51
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter$1;->a:Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemBean$DataBean$ZoneModuleDtoListBean;->getAlbumList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;Ljava/util/List;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public bridge synthetic a(Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;)V
    .locals 0

    .line 33
    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/present/ZoneCategoryDetailPresenter$1;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/KugouZoneItemMoreBean;)V

    return-void
.end method

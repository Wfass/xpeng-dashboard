.class public Lcom/xiaopeng/musicradio/music/main/view/KugooMainFragment;
.super Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;
.source "KugooMainFragment.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/music/fragment/kugoomain"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KugooMainFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createFragmentContext()Lcom/xiaopeng/musicradio/commonui/base/b;
    .locals 1

    .line 45
    invoke-static {}, Lcom/xiaopeng/musicradio/music/main/view/e;->a()Lcom/xiaopeng/musicradio/music/main/view/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/main/view/e;->r()Lcom/xiaopeng/musicradio/commonui/base/b;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Kugou"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/musicradio/vui/c;->aX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initPagerList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/commonui/adapter/e;",
            ">;)V"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v1, Lbez$g;->music_main_selection_title:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/music/fragment/kugoo_concentration"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v1, Lbez$g;->music_main_rank_title:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/music/fragment/kugoo_rank"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v1, Lbez$g;->music_main_singer_title:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/music/fragment/kugoo_singer"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v1, Lbez$g;->tab_main_mine:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/mine/kugou_mine"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v1, Lbez$g;->search_top_hint:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/search/activity/main"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v1, Lbez$g;->search_top_hint:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/music/fragment/kugoo_auth"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected preCacheLayout()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

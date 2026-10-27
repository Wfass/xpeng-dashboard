.class public Lcom/xiaopeng/musicradio/music/main/view/NeteaseMainFragment;
.super Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;
.source "NeteaseMainFragment.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/music/fragment/neteasemain"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NeteaseMainFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createFragmentContext()Lcom/xiaopeng/musicradio/commonui/base/b;
    .locals 1

    .line 61
    invoke-static {}, Lcom/xiaopeng/musicradio/music/main/view/f;->a()Lcom/xiaopeng/musicradio/music/main/view/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/main/view/f;->r()Lcom/xiaopeng/musicradio/commonui/base/b;

    move-result-object v0

    return-object v0
.end method

.method public getAccountType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Netease"

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

    .line 27
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v1, Lbez$g;->music_main_selection_title:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/music/fragment/netconcentration"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v1, Lbez$g;->music_main_rank_title:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/music/fragment/netrank"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v1, Lbez$g;->music_main_singer_title:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/music/fragment/netsinger"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v1, Lbez$g;->tab_main_mine:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/mine/net_mine"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v1, Lbez$g;->search_top_hint:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/search/activity/main"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    sget v1, Lbez$g;->search_top_hint:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/music/fragment/netease_auth"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 47
    invoke-super {p0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->onResume()V

    .line 48
    new-instance v0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseMainFragment$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/music/main/view/NeteaseMainFragment$1;-><init>(Lcom/xiaopeng/musicradio/music/main/view/NeteaseMainFragment;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected preCacheLayout()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

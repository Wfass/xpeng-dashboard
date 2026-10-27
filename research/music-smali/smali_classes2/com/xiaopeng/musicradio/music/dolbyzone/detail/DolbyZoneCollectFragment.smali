.class public Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "DolbyZoneCollectFragment.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/app/music/detail/dolby_zone_collect_detail"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayActPresenter;",
        ">;"
    }
.end annotation


# instance fields
.field private mQuality:I

.field protected mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

.field private mZoneCollectLayout:Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectFragment;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayActPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayActPresenter;
    .locals 1

    .line 34
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayActPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayActPresenter;-><init>()V

    return-object v0
.end method

.method public findView()V
    .locals 5

    .line 44
    sget v0, Lbez$d;->title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    .line 45
    sget v0, Lbez$d;->zone_collect_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectFragment;->mZoneCollectLayout:Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;

    .line 47
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "zone_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "zone_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "zone_quality"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectFragment;->mQuality:I

    .line 51
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectFragment;->mZoneCollectLayout:Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;->setStyleType(I)V

    .line 52
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectFragment;->mZoneCollectLayout:Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;

    iget v2, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectFragment;->mQuality:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;->setQuality(I)V

    .line 53
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectFragment;->mZoneCollectLayout:Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;->h()V

    .line 54
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectFragment;->initVuiAttr()V

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 39
    sget v0, Lbez$f;->fragment_dolby_zone_collect:I

    return v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arguments"

    .line 84
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 74
    iget v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->U(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubSceneList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 79
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->W(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected initVuiAttr()V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectFragment;->mZoneCollectLayout:Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lbyb;->LEVEL1:Lbyb;

    const-string v3, ""

    invoke-virtual {v0, v1, v3, v2}, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectLayout;->a(Ljava/lang/String;Ljava/lang/String;Lbyb;)V

    return-void
.end method

.method public setListener()V
    .locals 0

    return-void
.end method

.method public setView()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/dolbyzone/detail/DolbyZoneCollectFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setBackVisible(Z)V

    return-void
.end method

.class public Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "ZoneCollectFragment.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/app/music/detail/zone_collect_detail"
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

.field private mZoneCollectLayout:Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectLayout;

.field protected mZoneModelSource:I

.field protected mZoneModelType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->mZoneModelType:I

    .line 31
    iput v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->mZoneModelSource:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayActPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayActPresenter;
    .locals 1

    .line 36
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayActPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayActPresenter;-><init>()V

    return-object v0
.end method

.method public findView()V
    .locals 6

    .line 46
    sget v0, Lbez$d;->title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    .line 47
    sget v0, Lbez$d;->zone_collect_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->mZoneCollectLayout:Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectLayout;

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xe95

    const-string v2, "zone_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "zone_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "zone_type"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "zone_quality"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->mQuality:I

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->mZoneModelType:I

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "zone_model_source"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->mZoneModelSource:I

    .line 56
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->mZoneCollectLayout:Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectLayout;

    iget v4, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->mZoneModelType:I

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectLayout;->setZoneModelType(I)V

    .line 57
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->mZoneCollectLayout:Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectLayout;

    iget v4, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->mZoneModelSource:I

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectLayout;->setZoneModelSource(I)V

    .line 58
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->mZoneCollectLayout:Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectLayout;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectLayout;->setmId(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->mZoneCollectLayout:Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectLayout;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectLayout;->setStyleType(I)V

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->mZoneCollectLayout:Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectLayout;

    iget v2, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->mQuality:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectLayout;->setQuality(I)V

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->mZoneCollectLayout:Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectLayout;->h()V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->initVuiAttr()V

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 41
    sget v0, Lbez$f;->fragment_zone_collect:I

    return v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arguments"

    .line 92
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 82
    iget v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->T(I)Ljava/lang/String;

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

    .line 87
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->mMenuIndex:I

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

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->mZoneCollectLayout:Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lbyb;->LEVEL1:Lbyb;

    const-string v3, ""

    invoke-virtual {v0, v1, v3, v2}, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectLayout;->a(Ljava/lang/String;Ljava/lang/String;Lbyb;)V

    return-void
.end method

.method public setListener()V
    .locals 0

    return-void
.end method

.method public setView()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/kugouzone/detail/ZoneCollectFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setBackVisible(Z)V

    return-void
.end method

.class public Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllradioDetailFragment;
.super Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;
.source "NrAllradioDetailFragment.java"


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/netradio/fragment/allradio_detail"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment<",
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllradioDetailPresenter;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NrAllradioDetailFragment"


# instance fields
.field private mAllradioDetailLayout:Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;

.field protected mId:I
    .annotation build Lcom/alibaba/android/arouter/facade/annotation/Autowired;
        name = "radio_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllradioDetailFragment;->createPresenter()Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllradioDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllradioDetailPresenter;
    .locals 1

    .line 59
    new-instance v0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllradioDetailPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/presenter/NrAllradioDetailPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 3

    .line 37
    invoke-static {}, Lbkg;->c()V

    .line 38
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lpp;->a(Ljava/lang/Object;)V

    .line 39
    sget v0, Lbuc$d;->allradio_detail_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllradioDetailFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllradioDetailFragment;->mAllradioDetailLayout:Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllradioDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllradioDetailFragment;->mAllradioDetailLayout:Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;

    if-eqz v1, :cond_0

    const-string v2, "radio_id"

    .line 43
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->setmId(I)V

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllradioDetailFragment;->mAllradioDetailLayout:Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;

    sget v1, Lbuc$g;->netradio_allradio_title:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllradioDetailFragment;->mAllradioDetailLayout:Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/main/view/NrCategoryOrAreaDetailLayout;->h()V

    :cond_0
    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 32
    sget v0, Lbuc$f;->netradio_fragment_allradio_detail:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method protected setView()V
    .locals 0

    return-void
.end method

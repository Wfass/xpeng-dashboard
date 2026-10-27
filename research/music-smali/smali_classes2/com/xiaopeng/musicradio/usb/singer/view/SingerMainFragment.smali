.class public Lcom/xiaopeng/musicradio/usb/singer/view/SingerMainFragment;
.super Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;
.source "SingerMainFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/usb/singer/view/a;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    extras = 0x1
    path = "/usb/main/singer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment<",
        "Lcom/xiaopeng/musicradio/usb/singer/view/a;",
        "Lcom/xiaopeng/musicradio/usb/singer/present/SingerMainPresenter;",
        "Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;",
        ">;",
        "Lcom/xiaopeng/musicradio/usb/singer/view/a;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SingerMainFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/usb/singer/view/SingerMainFragment;)Lcom/xiaopeng/musicradio/commonui/adapter/h;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/singer/view/SingerMainFragment;->mAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/h;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/singer/view/SingerMainFragment;->createPresenter()Lcom/xiaopeng/musicradio/usb/singer/present/SingerMainPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/usb/singer/present/SingerMainPresenter;
    .locals 1

    .line 86
    new-instance v0, Lcom/xiaopeng/musicradio/usb/singer/present/SingerMainPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/usb/singer/present/SingerMainPresenter;-><init>()V

    return-object v0
.end method

.method public getAdapter()Lcom/xiaopeng/musicradio/commonui/adapter/h;
    .locals 2

    .line 142
    new-instance v0, Lcom/xiaopeng/musicradio/usb/singer/view/b;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/singer/view/SingerMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/usb/singer/view/b;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getManager()Lbnh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbnh<",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;",
            ">;"
        }
    .end annotation

    .line 137
    invoke-static {}, Lbnc;->c()Lbnd;

    move-result-object v0

    return-object v0
.end method

.method public getMlist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/singer/view/SingerMainFragment;->mAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/h;

    check-cast v0, Lcom/xiaopeng/musicradio/usb/singer/view/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/singer/view/b;->j()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Usb_Singer_Page"

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 162
    iget v0, p0, Lcom/xiaopeng/musicradio/usb/singer/view/SingerMainFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->r(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSpacing()I
    .locals 1

    const/16 v0, 0x24

    return v0
.end method

.method public getSpanCount()I
    .locals 1

    const/4 v0, 0x4

    return v0
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

    .line 167
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/usb/singer/view/SingerMainFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/usb/singer/view/SingerMainFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()I
    .locals 1

    .line 172
    sget v0, Lcom/xiaopeng/musicradio/usb/a$d;->usb_main_singer_title:I

    return v0
.end method

.method public notifySpeechChange()V
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/singer/view/SingerMainFragment;->mAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/h;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/singer/view/SingerMainFragment;->mAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/h;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/commonui/adapter/h;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "payload_speech"

    invoke-virtual {v0, v2, v1, v3}, Lcom/xiaopeng/musicradio/commonui/adapter/h;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 50
    invoke-super {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->setListener()V

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/singer/view/SingerMainFragment;->mAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/h;

    new-instance v1, Lcom/xiaopeng/musicradio/usb/singer/view/SingerMainFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/usb/singer/view/SingerMainFragment$1;-><init>(Lcom/xiaopeng/musicradio/usb/singer/view/SingerMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/h;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;)V

    return-void
.end method

.method protected setView()V
    .locals 2

    .line 44
    invoke-super {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->setView()V

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/singer/view/SingerMainFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    sget v1, Lcom/xiaopeng/musicradio/usb/a$d;->no_usb_singer:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setNoResultText(I)V

    return-void
.end method

.method protected shouldHandleBackPress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;",
            ">;)V"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/singer/view/SingerMainFragment;->mAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/h;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/h;->a(Ljava/util/List;)V

    .line 102
    invoke-super {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->showData()V

    return-void
.end method

.method public showLoadingView()V
    .locals 0

    .line 91
    invoke-super {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->showLoadingView()V

    return-void
.end method

.method public showNoDataView()V
    .locals 0

    .line 96
    invoke-super {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->showNoDataView()V

    return-void
.end method

.method public updateLogo()V
    .locals 0

    .line 127
    invoke-super {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->updateLogo()V

    return-void
.end method

.method public updatePlayState()V
    .locals 6

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/singer/view/SingerMainFragment;->mAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/h;

    check-cast v0, Lcom/xiaopeng/musicradio/usb/singer/view/b;

    .line 108
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v2

    invoke-virtual {v2}, Laqr;->b()I

    move-result v2

    .line 110
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/singer/view/b;->g()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 112
    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/usb/singer/view/SingerMainFragment;->notifyItemChanged(I)V

    .line 114
    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/singer/view/b;->i()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    .line 115
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 116
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;

    if-nez v2, :cond_1

    .line 117
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "usb_singer_prefix_"

    .line 118
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lbrp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 119
    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/usb/singer/view/SingerMainFragment;->notifyItemChanged(I)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

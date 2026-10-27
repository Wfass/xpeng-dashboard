.class public Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment;
.super Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;
.source "AlbumMainFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/usb/album/view/b;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    extras = 0x1
    path = "/usb/main/album"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment<",
        "Lcom/xiaopeng/musicradio/usb/album/view/b;",
        "Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;",
        "Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;",
        ">;",
        "Lcom/xiaopeng/musicradio/usb/album/view/b;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AlbumMainFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment;)Lcom/xiaopeng/musicradio/commonui/adapter/h;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment;->mAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/h;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment;->createPresenter()Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;
    .locals 1

    .line 127
    new-instance v0, Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/usb/album/present/AlbumMainPresenter;-><init>()V

    return-object v0
.end method

.method public getAdapter()Lcom/xiaopeng/musicradio/commonui/adapter/h;
    .locals 2

    .line 142
    new-instance v0, Lcom/xiaopeng/musicradio/usb/album/view/a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/usb/album/view/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getManager()Lbnb;
    .locals 1

    .line 137
    invoke-static {}, Lbnc;->b()Lbnb;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getManager()Lbnh;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment;->getManager()Lbnb;

    move-result-object v0

    return-object v0
.end method

.method public getMlist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment;->mAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/h;

    check-cast v0, Lcom/xiaopeng/musicradio/usb/album/view/a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/album/view/a;->j()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "Usb_Album_Page"

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 162
    iget v0, p0, Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->s(I)Ljava/lang/String;

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

    iget v1, p0, Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment;->mMenuIndex:I

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
    sget v0, Lcom/xiaopeng/musicradio/usb/a$d;->usb_main_album_title:I

    return v0
.end method

.method public notifySpeechChange()V
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment;->mAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/h;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment;->mAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/h;

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
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment;->mAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/h;

    new-instance v1, Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment$1;-><init>(Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/h;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;)V

    return-void
.end method

.method protected setView()V
    .locals 2

    .line 44
    invoke-super {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->setView()V

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment;->mLoadingview:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    sget v1, Lcom/xiaopeng/musicradio/usb/a$d;->no_usb_album:I

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
            "Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;",
            ">;)V"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment;->mAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/h;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/h;->a(Ljava/util/List;)V

    .line 97
    invoke-super {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->showData()V

    return-void
.end method

.method public showLoadingView()V
    .locals 0

    .line 86
    invoke-super {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->showLoadingView()V

    return-void
.end method

.method public showNoDataView()V
    .locals 0

    .line 91
    invoke-super {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->showNoDataView()V

    return-void
.end method

.method public updateLogo()V
    .locals 0

    .line 122
    invoke-super {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseFragment;->updateLogo()V

    return-void
.end method

.method public updatePlayState()V
    .locals 6

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment;->mAdapter:Lcom/xiaopeng/musicradio/commonui/adapter/h;

    check-cast v0, Lcom/xiaopeng/musicradio/usb/album/view/a;

    .line 103
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v2

    invoke-virtual {v2}, Laqr;->b()I

    move-result v2

    .line 105
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/album/view/a;->g()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 107
    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment;->notifyItemChanged(I)V

    .line 109
    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/album/view/a;->i()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    .line 110
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 111
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;

    if-nez v2, :cond_1

    .line 112
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "usb_album_prefix_"

    .line 113
    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lbrp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 114
    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/usb/album/view/AlbumMainFragment;->notifyItemChanged(I)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

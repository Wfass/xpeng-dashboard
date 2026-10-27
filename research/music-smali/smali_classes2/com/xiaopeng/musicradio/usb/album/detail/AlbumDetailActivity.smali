.class public Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailActivity;
.super Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;
.source "AlbumDetailActivity.java"

# interfaces
.implements Lbqq;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/usbview/usb_album_detail"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity<",
        "Lbqq;",
        "Lcom/xiaopeng/musicradio/usb/album/detail/present/UsbAlbumDetailPresenter;",
        ">;",
        "Lbqq;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailActivity;)Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailActivity;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailActivity;->createPresenter()Lcom/xiaopeng/musicradio/usb/album/detail/present/UsbAlbumDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/usb/album/detail/present/UsbAlbumDetailPresenter;
    .locals 1

    .line 37
    new-instance v0, Lcom/xiaopeng/musicradio/usb/album/detail/present/UsbAlbumDetailPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/usb/album/detail/present/UsbAlbumDetailPresenter;-><init>()V

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 42
    sget v0, Lcom/xiaopeng/musicradio/usb/a$c;->layout_usb_base_detail:I

    return v0
.end method

.method protected getListSignBean()Lcom/xiaopeng/musicradio/bean/ListSignBean;
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usb_album_prefix_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailActivity;->mName:Ljava/lang/String;

    invoke-static {v1}, Lbrp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3000"

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/aj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    return-object v0
.end method

.method protected getMusicInfos()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation

    .line 117
    invoke-static {}, Lbnc;->a()Lbne;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailActivity;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbne;->b(Ljava/lang/String;)Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public isPlayCurrentCollect()Z
    .locals 3

    .line 143
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    .line 145
    const-class v2, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 146
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usb_album_prefix_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailActivity;->mName:Ljava/lang/String;

    .line 147
    invoke-static {v2}, Lbrp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifySpeechChange()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailActivity;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/b;->notifyDataSetChanged()V

    return-void
.end method

.method public setListener()V
    .locals 2

    .line 61
    invoke-super {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->setListener()V

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailActivity;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/b;

    new-instance v1, Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailActivity$1;-><init>(Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/b;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailActivity;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    new-instance v1, Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailActivity$2;-><init>(Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setView()V
    .locals 2

    .line 47
    invoke-super {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseActivity;->setView()V

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_album_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailActivity;->mName:Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailActivity;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-static {}, Lbnc;->a()Lbne;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailActivity;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbne;->b(Ljava/lang/String;)Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;->e()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailActivity;->showData(Ljava/util/List;)V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailActivity;->mMsTopLayout:Lcom/xiaopeng/musicradio/widget/DialogTopLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailActivity;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public showLoadingView()V
    .locals 0

    return-void
.end method

.method public showNoDataView()V
    .locals 0

    .line 129
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailActivity;->finish()V

    return-void
.end method

.method public updateLogo()V
    .locals 0

    .line 140
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailActivity;->refreshLogo()V

    return-void
.end method

.method public updatePlayState()V
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailActivity;->updatePlayAll()V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/album/detail/AlbumDetailActivity;->mAdapter:Lcom/xiaopeng/musicradio/widget/common/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/b;->notifyDataSetChanged()V

    return-void
.end method

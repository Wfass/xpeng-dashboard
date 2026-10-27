.class public Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;
.super Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;
.source "SingerDetailFragment.java"

# interfaces
.implements Lbrl;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/usbview/usb_singer_detail_fragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment<",
        "Lbrl;",
        "Lcom/xiaopeng/musicradio/usb/singer/detail/present/UsbSingerDetailPresenter;",
        ">;",
        "Lbrl;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;)Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;->mName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;->createPresenter()Lcom/xiaopeng/musicradio/usb/singer/detail/present/UsbSingerDetailPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/usb/singer/detail/present/UsbSingerDetailPresenter;
    .locals 1

    .line 41
    new-instance v0, Lcom/xiaopeng/musicradio/usb/singer/detail/present/UsbSingerDetailPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/usb/singer/detail/present/UsbSingerDetailPresenter;-><init>()V

    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 46
    sget v0, Lcom/xiaopeng/musicradio/usb/a$c;->layout_usb_base_detail:I

    return v0
.end method

.method protected getListSignBean()Lcom/xiaopeng/musicradio/bean/ListSignBean;
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usb_singer_prefix_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;->mName:Ljava/lang/String;

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

    .line 119
    invoke-static {}, Lbnc;->a()Lbne;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbne;->a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 162
    iget v0, p0, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->v(I)Ljava/lang/String;

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

    .line 167
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->q(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected isPlayCurrentCollect()Z
    .locals 3

    .line 146
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    .line 148
    const-class v2, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usb_singer_prefix_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;->mName:Ljava/lang/String;

    invoke-static {v2}, Lbrp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

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

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;->mAdapter:Lbrm;

    invoke-virtual {v0}, Lbrm;->notifyDataSetChanged()V

    return-void
.end method

.method public setListener()V
    .locals 2

    .line 62
    invoke-super {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->setListener()V

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;->mAdapter:Lbrm;

    new-instance v1, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment$1;-><init>(Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;)V

    invoke-virtual {v0, v1}, Lbrm;->a(Lcom/xiaopeng/musicradio/widget/common/b$a;)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;->mPlayAllBtn:Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;

    new-instance v1, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment$2;-><init>(Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/usb/widget/UsbPlayAllButton;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setView()V
    .locals 2

    .line 51
    invoke-super {p0}, Lcom/xiaopeng/musicradio/usb/base/UsbBaseDetailFragment;->setView()V

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_singer_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;->mName:Ljava/lang/String;

    .line 54
    invoke-static {}, Lbnc;->a()Lbne;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbne;->a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;->showData(Ljava/util/List;)V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;->mTilte:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showLoadingView()V
    .locals 0

    return-void
.end method

.method public showNoDataView()V
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbni;->a(Landroid/content/Context;)V

    return-void
.end method

.method public updateLogo()V
    .locals 0

    .line 142
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;->refreshLogo()V

    return-void
.end method

.method public updatePlayState()V
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;->updatePlayAll()V

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/singer/detail/SingerDetailFragment;->mAdapter:Lbrm;

    invoke-virtual {v0}, Lbrm;->notifyDataSetChanged()V

    return-void
.end method

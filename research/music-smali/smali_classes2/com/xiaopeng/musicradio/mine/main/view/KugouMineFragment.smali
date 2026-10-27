.class public Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;
.super Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;
.source "KugouMineFragment.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    extras = 0x1
    path = "/mine/kugou_mine"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KugouMineFragment"


# instance fields
.field private mMusicSyncDialog:Lcom/xiaopeng/musicradio/mine/main/sync/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;)Lcom/xiaopeng/musicradio/mine/main/sync/a;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;->mMusicSyncDialog:Lcom/xiaopeng/musicradio/mine/main/sync/a;

    return-object p0
.end method

.method static synthetic access$102(Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;Lcom/xiaopeng/musicradio/mine/main/sync/a;)Lcom/xiaopeng/musicradio/mine/main/sync/a;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;->mMusicSyncDialog:Lcom/xiaopeng/musicradio/mine/main/sync/a;

    return-object p1
.end method


# virtual methods
.method public getAccountType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method protected getBugRightMargin()I
    .locals 2

    .line 74
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/s;->a(Landroid/content/Context;F)I

    move-result v0

    return v0
.end method

.method public getMenuIndex()I
    .locals 1

    .line 184
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->d()I

    move-result v0

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/mine/kugou_mine"

    return-object v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Kugou"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/musicradio/vui/c;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getVipSaleType()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method protected isShowContinuePlay()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected logout()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->j()V

    return-void
.end method

.method public onAccountInfoUpdated(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipDetail;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 2

    .line 194
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;

    invoke-static {}, Lbek;->a()Lbek;

    move-result-object v0

    invoke-virtual {v0}, Lbek;->k()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/mine/main/presenter/LoginManagerPresenter;->a(J)V

    return-void
.end method

.method public onKugouAccountInfoUpdated(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipDetail;",
            ">;)V"
        }
    .end annotation

    .line 107
    iget-object p3, p0, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;->mAccountInfoLayout:Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;

    invoke-virtual {p3, p1, p2, p6}, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->setInfo(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onKugouAuthChanged(Z)V
    .locals 0

    return-void
.end method

.method public onNeteaaseAccountInfoUpdated(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/VipDetail;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onNeteaseAuthChanged(Z)V
    .locals 0

    return-void
.end method

.method public onQqAuthChanged(Z)V
    .locals 0

    return-void
.end method

.method public onSyncEnd()V
    .locals 1

    .line 204
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->onSyncEnd()V

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;->mAccountInfoLayout:Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->hideSyncLoading()V

    return-void
.end method

.method public onSyncLoading()V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;->mAccountInfoLayout:Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->showSyncLoading()V

    return-void
.end method

.method public onSyncStart()V
    .locals 0

    .line 131
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;->showAsyncDialog()V

    return-void
.end method

.method public onSyncState(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/mine/ResultState;",
            ">;)V"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;->mMusicSyncDialog:Lcom/xiaopeng/musicradio/mine/main/sync/a;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/xiaopeng/musicradio/mine/main/sync/a;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/mine/main/sync/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;->mMusicSyncDialog:Lcom/xiaopeng/musicradio/mine/main/sync/a;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;->mMusicSyncDialog:Lcom/xiaopeng/musicradio/mine/main/sync/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/main/sync/a;->a(Ljava/util/List;)V

    .line 126
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;->mMusicSyncDialog:Lcom/xiaopeng/musicradio/mine/main/sync/a;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/main/sync/a;->b()V

    return-void
.end method

.method public onXmlyAccountInfoUpdated(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onXmlyAuthChanged(Z)V
    .locals 0

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 49
    invoke-super {p0}, Lcom/xiaopeng/musicradio/mine/main/view/QQMineFragment;->setListener()V

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;->mAccountInfoLayout:Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment$1;-><init>(Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/AccountInfoLayout;->setSyncClick(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected showAsyncDialog()V
    .locals 4

    .line 140
    new-instance v0, Lcom/xiaopeng/musicradio/widget/f;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 141
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;->a(Z)V

    .line 142
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;->setScreenId(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 143
    sget-object v1, Lcom/xiaopeng/musicradio/vui/c;->bk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;->setVuiSceneId(Ljava/lang/String;)V

    .line 144
    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;->setVuiEngine(Lbxu;)V

    .line 145
    sget v1, Lcom/xiaopeng/musicradio/mine/a$e;->text_dialog_kugou_sync_message:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/f;->setMessage(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    .line 146
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/mine/a$e;->confirm:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment$3;

    invoke-direct {v3, p0}, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment$3;-><init>(Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;)V

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    .line 157
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/mine/a$e;->cancel:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment$2;

    invoke-direct {v3, p0, v0}, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment$2;-><init>(Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;Lcom/xiaopeng/musicradio/widget/f;)V

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/mine/a$e;->text_dialog_kugou_sync:I

    .line 162
    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setTitle(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 163
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/f;->show()V

    return-void
.end method

.method protected showBuyDialog()V
    .locals 3

    .line 168
    invoke-static {}, Latu;->f()V

    .line 169
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbsf;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbsf;

    if-eqz v0, :cond_0

    .line 171
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbtg;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbtg;

    .line 172
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lbtg;->startVipBuy(Landroid/content/Context;I)V

    .line 173
    invoke-static {}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getInstance()Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/view/KugouMineFragment;->getPageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Music_Mine_SubPage_Buy"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->reportPageExposure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.class public abstract Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIInterface:",
        "Ljava/lang/Object;",
        "Presenter:",
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "TUIInterface;>;>",
        "Landroidx/fragment/app/FragmentActivity;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicBaseActivity"


# instance fields
.field protected mAdapterPreLoader:Lcom/xiaopeng/musicradio/commonui/widget/a;

.field protected mDialogReference:Lcom/xiaopeng/musicradio/utils/t;

.field private mExitDialogReceiver:Landroid/content/BroadcastReceiver;

.field protected mHandler:Landroid/os/Handler;

.field protected mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPresenter;"
        }
    .end annotation
.end field

.field protected mXDialogReference:Lcom/xiaopeng/musicradio/utils/ca;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->mHandler:Landroid/os/Handler;

    .line 39
    new-instance v0, Lcom/xiaopeng/musicradio/utils/ca;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/utils/ca;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->mXDialogReference:Lcom/xiaopeng/musicradio/utils/ca;

    .line 40
    new-instance v0, Lcom/xiaopeng/musicradio/utils/t;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/utils/t;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->mDialogReference:Lcom/xiaopeng/musicradio/utils/t;

    .line 41
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity$1;-><init>(Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->mExitDialogReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .line 147
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "action_exit_dialog"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lhu;->a(Landroid/content/Context;)Lhu;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->mExitDialogReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lhu;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerReceiver:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicBaseActivity"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 3

    .line 156
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lhu;->a(Landroid/content/Context;)Lhu;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->mExitDialogReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lhu;->a(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterReceiver:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicBaseActivity"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected createAdapterPreLoader()Lcom/xiaopeng/musicradio/commonui/widget/a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPresenter;"
        }
    .end annotation
.end method

.method public abstract findView()V
.end method

.method public getAdapterPreLoader()Lcom/xiaopeng/musicradio/commonui/widget/a;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->mAdapterPreLoader:Lcom/xiaopeng/musicradio/commonui/widget/a;

    return-object v0
.end method

.method protected abstract getContentViewId()I
.end method

.method public getDialogReference()Lcom/xiaopeng/musicradio/utils/t;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->mDialogReference:Lcom/xiaopeng/musicradio/utils/t;

    return-object v0
.end method

.method public getXDialogReference()Lcom/xiaopeng/musicradio/utils/ca;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->mXDialogReference:Lcom/xiaopeng/musicradio/utils/ca;

    return-object v0
.end method

.method protected handleSetContentView()V
    .locals 4

    const-string v0, "MusicBaseActivity"

    const-string v1, "onCreate: start ========"

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->getContentViewId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 71
    sget v2, Laqv$d;->tag_lifecycle_owner:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const-string v2, "onCreate: second ======="

    .line 72
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public isDialogShown()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->mXDialogReference:Lcom/xiaopeng/musicradio/utils/ca;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/ca;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->mDialogReference:Lcom/xiaopeng/musicradio/utils/t;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/t;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 51
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "setDrawableCacheEnabled"

    invoke-static {p1, v3, v0, v2}, Lcom/xiaopeng/musicradio/utils/bf;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->requestWindowFeature(I)Z

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    .line 56
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    invoke-virtual {p1, p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->a(Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->createAdapterPreLoader()Lcom/xiaopeng/musicradio/commonui/widget/a;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->mAdapterPreLoader:Lcom/xiaopeng/musicradio/commonui/widget/a;

    const-string p1, "MusicBaseActivity"

    const-string v0, "onCreate: addObserver"

    .line 58
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->addObserver(Landroidx/lifecycle/m;)V

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->handleSetContentView()V

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->findView()V

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->setView()V

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->setListener()V

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/j;->addObserver(Landroidx/lifecycle/m;)V

    const-string v0, "onCreate: end ======="

    .line 65
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 97
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 98
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/k;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 103
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->setIntent(Landroid/content/Intent;)V

    .line 106
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 107
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 108
    instance-of v2, v1, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;

    if-eqz v2, :cond_0

    .line 109
    check-cast v1, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFragment;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 83
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 84
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->registerReceiver()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->unregisterReceiver()V

    .line 90
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->mXDialogReference:Lcom/xiaopeng/musicradio/utils/ca;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/ca;->b()V

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;->mDialogReference:Lcom/xiaopeng/musicradio/utils/t;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/t;->b()V

    return-void
.end method

.method public abstract setListener()V
.end method

.method public abstract setView()V
.end method

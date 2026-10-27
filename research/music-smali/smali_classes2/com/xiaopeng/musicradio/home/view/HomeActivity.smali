.class public Lcom/xiaopeng/musicradio/home/view/HomeActivity;
.super Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;
.source "HomeActivity.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/home/view/b;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/home/home"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity<",
        "Lcom/xiaopeng/musicradio/home/view/b;",
        "Lcom/xiaopeng/musicradio/home/presenter/HomeXos5Presenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/home/view/b;"
    }
.end annotation


# static fields
.field public static final A_PATH:Ljava/lang/String; = "/path/afragment"

.field public static final B_PATH:Ljava/lang/String; = "/path/bfragment"

.field public static final FRAG_HOME:I = 0x1

.field public static final FRAG_PLAYER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HomeActivity"


# instance fields
.field private mLastFragmentType:I

.field private mWindowChangedReceiver:Lasm;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;-><init>()V

    const/4 v0, -0x1

    .line 168
    iput v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->mLastFragmentType:I

    return-void
.end method

.method private addActivityBackPress()V
    .locals 3

    .line 106
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/home/view/HomeActivity$2;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/musicradio/home/view/HomeActivity$2;-><init>(Lcom/xiaopeng/musicradio/home/view/HomeActivity;Z)V

    invoke-virtual {v0, p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->a(Landroidx/lifecycle/n;Landroidx/activity/b;)V

    return-void
.end method

.method private listenAppFirstFrame()V
    .locals 3

    :try_start_0
    const-string v0, "HomeActivity.onCreate"

    .line 288
    invoke-static {v0}, Lcom/xiaopeng/musicradio/page/APMPageMonitor;->collect(Ljava/lang/String;)V

    .line 290
    invoke-static {p0}, Lasq;->a(Landroid/content/Context;)V

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/musicradio/home/view/HomeActivity$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/home/view/HomeActivity$3;-><init>(Lcom/xiaopeng/musicradio/home/view/HomeActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HomeActivity"

    const-string v2, "listenAppFirstFrame error: "

    .line 300
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private onNavigation(Landroid/content/Intent;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "xui_media_enter_request"

    .line 143
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNavigation:jumpPlayer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HomeActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/home/presenter/HomeXos5Presenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/home/presenter/HomeXos5Presenter;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p0, v1, v3}, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->openFragment(ILandroid/os/Bundle;)V

    return-void

    :cond_1
    const-string v0, "NAV_KEY"

    .line 150
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNavigation:path "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "NAV_VALUE_PLAYER"

    .line 152
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "NAV_BUNDLE_KEY"

    .line 153
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->openFragment(ILandroid/os/Bundle;)V

    return-void

    :cond_2
    const/4 p1, 0x1

    .line 157
    invoke-virtual {p0, p1, v3}, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->openFragment(ILandroid/os/Bundle;)V

    return-void
.end method

.method private registerWindowChangedReceiver()V
    .locals 1

    .line 335
    new-instance v0, Lcom/xiaopeng/musicradio/home/view/-$$Lambda$HomeActivity$tzmH8zwqG_7LvQw-S0ZYHvj3GR4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/home/view/-$$Lambda$HomeActivity$tzmH8zwqG_7LvQw-S0ZYHvj3GR4;-><init>(Lcom/xiaopeng/musicradio/home/view/HomeActivity;)V

    invoke-static {v0}, Lbql;->i(Ljava/lang/Runnable;)V

    return-void
.end method

.method private unregisterWindowChangedReceiver()V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->mWindowChangedReceiver:Lasm;

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Lasm;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createAdapterPreLoader()Lcom/xiaopeng/musicradio/commonui/widget/a;
    .locals 1

    .line 312
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/widget/a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/commonui/widget/a;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->createPresenter()Lcom/xiaopeng/musicradio/home/presenter/HomeXos5Presenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/home/presenter/HomeXos5Presenter;
    .locals 1

    .line 55
    new-instance v0, Lcom/xiaopeng/musicradio/home/presenter/HomeXos5Presenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/home/presenter/HomeXos5Presenter;-><init>()V

    return-object v0
.end method

.method public findView()V
    .locals 0

    return-void
.end method

.method protected getContentViewId()I
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 62
    sget v0, Lcom/xiaopeng/musicradio/main/a$e;->activity_home:I

    return v0
.end method

.method public synthetic lambda$registerWindowChangedReceiver$0$HomeActivity()V
    .locals 1

    .line 336
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->mWindowChangedReceiver:Lasm;

    if-nez v0, :cond_0

    .line 338
    new-instance v0, Lasm;

    invoke-direct {v0, p0}, Lasm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->mWindowChangedReceiver:Lasm;

    .line 339
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->mWindowChangedReceiver:Lasm;

    invoke-virtual {v0}, Lasm;->a()V

    :cond_0
    return-void
.end method

.method public moveTaskToBack(Z)Z
    .locals 2

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveTaskToBack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;->moveTaskToBack(Z)Z

    move-result p1

    return p1
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "HomeActivity"

    const-string v1, "onBackPressed: ======"

    .line 306
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 281
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/c;->h()V

    .line 282
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;->onCreate(Landroid/os/Bundle;)V

    .line 283
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->listenAppFirstFrame()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 329
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;->onDestroy()V

    .line 330
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;->getInstance()Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;->setScreenCallback(Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskCallback;)V

    .line 331
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->unregisterWindowChangedReceiver()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 117
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: ========"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v0, "xui_media_enter_request"

    .line 120
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "NAV_KEY"

    .line 121
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "path"

    .line 122
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "account_type"

    .line 123
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "media"

    .line 124
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "open_music_page"

    .line 125
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    :cond_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->onNavigation(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 162
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;->onResume()V

    .line 163
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 164
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->openFragment(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 319
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    .line 321
    :cond_0
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    .line 323
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 275
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;->onWindowFocusChanged(Z)V

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isComplete = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/br;->b()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HomeActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public openFragment(ILandroid/os/Bundle;)V
    .locals 9

    .line 171
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->isDestroyed()Z

    move-result v0

    const-string v1, "HomeActivity"

    if-eqz v0, :cond_0

    .line 172
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "openFragment: destroyed====== "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openFragment: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mLastFragmentType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->mLastFragmentType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iput p1, p0, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->mLastFragmentType:I

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq p1, v2, :cond_2

    if-eq p1, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "/player/player"

    goto :goto_0

    :cond_2
    const-string v0, "/home/homemain"

    .line 189
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    .line 193
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v4

    const-string v5, "player"

    if-ne p1, v2, :cond_4

    const-string v6, "openFragment: popBackStack === "

    .line 197
    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-virtual {v4, v5, v2}, Landroidx/fragment/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    .line 201
    :cond_4
    invoke-virtual {v4, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 203
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string p1, "openFragment: fragment is visible ======"

    .line 204
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 208
    :cond_5
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/p;

    move-result-object v6

    .line 209
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "openFragment:bundle= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_6

    .line 211
    invoke-virtual {v6, v2}, Landroidx/fragment/app/p;->c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    goto :goto_1

    .line 213
    :cond_6
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object p2

    invoke-virtual {p2, v0}, Lpp;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 214
    sget p2, Lcom/xiaopeng/musicradio/main/a$d;->layout_fragment_root:I

    invoke-virtual {v6, p2, v2, v0}, Landroidx/fragment/app/p;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/p;

    if-ne p1, v3, :cond_7

    const-string p2, "openFragment: addToBackStack "

    .line 216
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {v6, v5}, Landroidx/fragment/app/p;->a(Ljava/lang/String;)Landroidx/fragment/app/p;

    .line 221
    :cond_7
    :goto_1
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p2

    .line 222
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v7, 0x0

    if-ne p1, v3, :cond_8

    if-lez v5, :cond_8

    .line 225
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eq v2, v5, :cond_8

    .line 226
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {v6, p2}, Landroidx/fragment/app/p;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    :cond_8
    if-ne p1, v3, :cond_a

    .line 231
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 232
    invoke-virtual {v4}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    sget-object p2, Landroidx/lifecycle/j$b;->STARTED:Landroidx/lifecycle/j$b;

    invoke-virtual {v6, p1, p2}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/j$b;)Landroidx/fragment/app/p;

    .line 235
    :cond_9
    sget-object p1, Landroidx/lifecycle/j$b;->RESUMED:Landroidx/lifecycle/j$b;

    invoke-virtual {v6, v2, p1}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/j$b;)Landroidx/fragment/app/p;

    .line 238
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "openFragment:path = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {v6}, Landroidx/fragment/app/p;->c()I

    return-void
.end method

.method public openPlayerAnimShowHome()V
    .locals 3

    .line 244
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/p;

    move-result-object v0

    .line 246
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/p;->c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    .line 247
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    sget-object v2, Landroidx/lifecycle/j$b;->STARTED:Landroidx/lifecycle/j$b;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/j$b;)Landroidx/fragment/app/p;

    .line 248
    invoke-virtual {v0}, Landroidx/fragment/app/p;->c()I

    :cond_0
    return-void
.end method

.method public setListener()V
    .locals 2

    .line 76
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->addActivityBackPress()V

    .line 77
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;->getInstance()Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/home/view/HomeActivity$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/home/view/HomeActivity$1;-><init>(Lcom/xiaopeng/musicradio/home/view/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager;->setScreenCallback(Lcom/xiaopeng/musicradio/utils/screen/ScreenTaskManager$ScreenTaskCallback;)V

    .line 102
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->registerWindowChangedReceiver()V

    return-void
.end method

.method public setView()V
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->onNavigation(Landroid/content/Intent;)V

    return-void
.end method

.method public slideClosePlayer()V
    .locals 4

    .line 254
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->i()Z

    move-result v0

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slideClosePlayer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HomeActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "slideClosePlayer: ======"

    .line 260
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 261
    iput v0, p0, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->mLastFragmentType:I

    .line 262
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 263
    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->moveTaskToBack(Z)Z

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 258
    invoke-virtual {p0, v3, v0}, Lcom/xiaopeng/musicradio/home/view/HomeActivity;->openFragment(ILandroid/os/Bundle;)V

    :goto_1
    return-void
.end method

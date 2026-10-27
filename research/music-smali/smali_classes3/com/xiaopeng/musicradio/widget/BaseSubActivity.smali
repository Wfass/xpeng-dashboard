.class public abstract Lcom/xiaopeng/musicradio/widget/BaseSubActivity;
.super Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;
.source "BaseSubActivity.java"

# interfaces
.implements Lme/yokeyword/fragmentation/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIInterface::",
        "Ljava/lang/Object;",
        "Presenter:",
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "TUIInterface;>;>",
        "Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity<",
        "TUIInterface;TPresenter;>;",
        "Lme/yokeyword/fragmentation/c;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseSubActivity"


# instance fields
.field protected final mDelegate:Lme/yokeyword/fragmentation/f;

.field protected mFragmentUri:Ljava/lang/String;
    .annotation build Lcom/alibaba/android/arouter/facade/annotation/Autowired;
        name = "fragment_uri"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;-><init>()V

    .line 45
    new-instance v0, Lme/yokeyword/fragmentation/f;

    invoke-direct {v0, p0}, Lme/yokeyword/fragmentation/f;-><init>(Lme/yokeyword/fragmentation/c;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    return-void
.end method


# virtual methods
.method public addFragment(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 130
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->genFragmentFromArouterUri(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addFragment uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", params:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", fragment:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BaseSubActivity"

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 133
    invoke-virtual {v0, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 135
    :cond_0
    instance-of p1, v0, Lme/yokeyword/fragmentation/d;

    if-eqz p1, :cond_2

    .line 136
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->getTopFragment()Lme/yokeyword/fragmentation/d;

    move-result-object p1

    if-nez p1, :cond_1

    .line 137
    sget p1, Lcom/xiaopeng/musicradio/common/k$e;->container:I

    check-cast v0, Lme/yokeyword/fragmentation/d;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->loadRootFragment(ILme/yokeyword/fragmentation/d;)V

    goto :goto_0

    .line 139
    :cond_1
    check-cast v0, Lme/yokeyword/fragmentation/d;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->replace(Lme/yokeyword/fragmentation/d;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/f;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public extraTransaction()Lme/yokeyword/fragmentation/a;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/f;->a()Lme/yokeyword/fragmentation/a;

    move-result-object v0

    return-object v0
.end method

.method public findFragment(Ljava/lang/Class;)Lme/yokeyword/fragmentation/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lme/yokeyword/fragmentation/d;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 377
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lme/yokeyword/fragmentation/g;->a(Landroidx/fragment/app/FragmentManager;Ljava/lang/Class;)Lme/yokeyword/fragmentation/d;

    move-result-object p1

    return-object p1
.end method

.method protected genFragmentFromArouterUri(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 195
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "genFragmentFromArouterUri: uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fragment = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseSubActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    .line 198
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpp;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroidx/fragment/app/Fragment;

    :cond_0
    return-object v0
.end method

.method protected getContentViewId()I
    .locals 1

    .line 49
    sget v0, Lcom/xiaopeng/musicradio/common/k$f;->activity_base_sub:I

    return v0
.end method

.method public getFragmentAnimator()Lme/yokeyword/fragmentation/anim/FragmentAnimator;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/f;->c()Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getSupportDelegate()Lme/yokeyword/fragmentation/f;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    return-object v0
.end method

.method public getTopFragment()Lme/yokeyword/fragmentation/d;
    .locals 1

    .line 370
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lme/yokeyword/fragmentation/g;->a(Landroidx/fragment/app/FragmentManager;)Lme/yokeyword/fragmentation/d;

    move-result-object v0

    return-object v0
.end method

.method protected handleCustomFinish()V
    .locals 0

    .line 162
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->finish()V

    return-void
.end method

.method protected handleFragmentUri()V
    .locals 4

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleFragmentUri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->mFragmentUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseSubActivity"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->mFragmentUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->mFragmentUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 79
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 80
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 81
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->mFragmentUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->addFragment(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->error_no_fragment_url:I

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;I)V

    .line 87
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->finish()V

    goto :goto_1

    .line 90
    :cond_1
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->error_no_fragment_url:I

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;I)V

    .line 91
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->finish()V

    :goto_1
    return-void
.end method

.method protected hideFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 184
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/p;

    move-result-object v0

    .line 185
    invoke-virtual {v0, p1}, Landroidx/fragment/app/p;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    move-result-object p1

    .line 186
    invoke-virtual {p1}, Landroidx/fragment/app/p;->b()I

    return-void
.end method

.method protected initFragmentParams()V
    .locals 2

    .line 68
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lpp;->a(Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "fragment_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->mFragmentUri:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public loadRootFragment(ILme/yokeyword/fragmentation/d;)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1, p2}, Lme/yokeyword/fragmentation/f;->a(ILme/yokeyword/fragmentation/d;)V

    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/f;->f()V

    return-void
.end method

.method public onBackPressedSupport()V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/f;->g()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 63
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$d;->x_bg_app:I

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/xui/theme/XThemeManager;->setWindowBackgroundResource(Landroid/content/res/Configuration;Landroid/view/Window;I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/f;->a(Landroid/os/Bundle;)V

    .line 56
    new-instance p1, Lme/yokeyword/fragmentation/anim/DefaultNoAnimator;

    invoke-direct {p1}, Lme/yokeyword/fragmentation/anim/DefaultNoAnimator;-><init>()V

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->setFragmentAnimator(Lme/yokeyword/fragmentation/anim/FragmentAnimator;)V

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->initFragmentParams()V

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->handleFragmentUri()V

    return-void
.end method

.method public onCreateFragmentAnimator()Lme/yokeyword/fragmentation/anim/FragmentAnimator;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/f;->d()Lme/yokeyword/fragmentation/anim/FragmentAnimator;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/f;->h()V

    .line 227
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 97
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->setIntent(Landroid/content/Intent;)V

    .line 99
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->initFragmentParams()V

    .line 100
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->handleFragmentUri()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 220
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/f;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public pop()V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0}, Lme/yokeyword/fragmentation/f;->i()V

    return-void
.end method

.method public popTo(Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1, p2}, Lme/yokeyword/fragmentation/f;->a(Ljava/lang/Class;Z)V

    return-void
.end method

.method public popTo(Ljava/lang/Class;ZLjava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1, p2, p3}, Lme/yokeyword/fragmentation/f;->a(Ljava/lang/Class;ZLjava/lang/Runnable;)V

    return-void
.end method

.method public popTo(Ljava/lang/Class;ZLjava/lang/Runnable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z",
            "Ljava/lang/Runnable;",
            "I)V"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1, p2, p3, p4}, Lme/yokeyword/fragmentation/f;->a(Ljava/lang/Class;ZLjava/lang/Runnable;I)V

    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/f;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public replace(Lme/yokeyword/fragmentation/d;Z)V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1, p2}, Lme/yokeyword/fragmentation/f;->a(Lme/yokeyword/fragmentation/d;Z)V

    return-void
.end method

.method protected replaceFragment(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->genFragmentFromArouterUri(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 121
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 123
    :cond_0
    instance-of p2, p1, Lme/yokeyword/fragmentation/d;

    if-eqz p2, :cond_1

    .line 124
    check-cast p1, Lme/yokeyword/fragmentation/d;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->replace(Lme/yokeyword/fragmentation/d;Z)V

    :cond_1
    return-void
.end method

.method public setFragmentAnimator(Lme/yokeyword/fragmentation/anim/FragmentAnimator;)V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/f;->a(Lme/yokeyword/fragmentation/anim/FragmentAnimator;)V

    return-void
.end method

.method protected showFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 178
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/p;

    move-result-object v0

    .line 179
    invoke-virtual {v0, p1}, Landroidx/fragment/app/p;->c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    move-result-object p1

    .line 180
    invoke-virtual {p1}, Landroidx/fragment/app/p;->b()I

    return-void
.end method

.method public start(Lme/yokeyword/fragmentation/d;)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1}, Lme/yokeyword/fragmentation/f;->b(Lme/yokeyword/fragmentation/d;)V

    return-void
.end method

.method public start(Lme/yokeyword/fragmentation/d;I)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1, p2}, Lme/yokeyword/fragmentation/f;->a(Lme/yokeyword/fragmentation/d;I)V

    return-void
.end method

.method public startWithPopTo(Lme/yokeyword/fragmentation/d;Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lme/yokeyword/fragmentation/d;",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/BaseSubActivity;->mDelegate:Lme/yokeyword/fragmentation/f;

    invoke-virtual {v0, p1, p2, p3}, Lme/yokeyword/fragmentation/f;->a(Lme/yokeyword/fragmentation/d;Ljava/lang/Class;Z)V

    return-void
.end method

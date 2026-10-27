.class public abstract Lcom/xiaopeng/xui/app/XActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "XActivity.java"


# instance fields
.field private mDelegate:Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

.field private mVuiSceneHelper:Lcom/xiaopeng/xui/vui/VuiSceneHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissActivity()V
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getActivityDismiss()Lcom/xiaopeng/xui/app/delegate/XActivityDismiss;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismiss;->dismiss(I)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 151
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 154
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchUserEvent()V
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->dispatchUserEvent()V

    return-void
.end method

.method protected getActivityConfigChanged()Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->getActivityConfigChanged()Lcom/xiaopeng/xui/app/delegate/XActivityConfigChanged;

    move-result-object v0

    return-object v0
.end method

.method protected getActivityDismiss()Lcom/xiaopeng/xui/app/delegate/XActivityDismiss;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->getActivityDismiss()Lcom/xiaopeng/xui/app/delegate/XActivityDismiss;

    move-result-object v0

    return-object v0
.end method

.method protected getActivityTemplate()Lcom/xiaopeng/xui/app/delegate/XActivityTemplate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/xiaopeng/xui/app/delegate/XActivityTemplate;",
            ">()TT;"
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->getActivityTemplate()Lcom/xiaopeng/xui/app/delegate/XActivityTemplate;

    move-result-object v0

    return-object v0
.end method

.method protected getDismissCauseConfig()Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseConfig;",
            ">()TT;"
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->getDismissCauseConfig()Lcom/xiaopeng/xui/app/delegate/XActivityDismissCauseConfig;

    move-result-object v0

    return-object v0
.end method

.method public getVuiSceneHelper()Lcom/xiaopeng/xui/vui/VuiSceneHelper;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XActivity;->mVuiSceneHelper:Lcom/xiaopeng/xui/vui/VuiSceneHelper;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;

    invoke-direct {v0}, Lcom/xiaopeng/xui/vui/VuiSceneHelper;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XActivity;->mVuiSceneHelper:Lcom/xiaopeng/xui/vui/VuiSceneHelper;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XActivity;->mVuiSceneHelper:Lcom/xiaopeng/xui/vui/VuiSceneHelper;

    return-object v0
.end method

.method protected getWindowAttributes()Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->getWindowAttributes()Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    move-result-object v0

    return-object v0
.end method

.method protected getWindowVisible()Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->getWindowVisible()Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;

    move-result-object v0

    return-object v0
.end method

.method public getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XActivity;->mDelegate:Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    if-nez v0, :cond_0

    .line 32
    invoke-static {p0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->create(Landroidx/appcompat/app/AppCompatActivity;)Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XActivity;->mDelegate:Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XActivity;->mDelegate:Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    return-object v0
.end method

.method public initVuiScene(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .line 183
    new-instance v0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;

    invoke-direct {v0}, Lcom/xiaopeng/xui/vui/VuiSceneHelper;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XActivity;->mVuiSceneHelper:Lcom/xiaopeng/xui/vui/VuiSceneHelper;

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XActivity;->mVuiSceneHelper:Lcom/xiaopeng/xui/vui/VuiSceneHelper;

    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getLifecycle()Landroidx/lifecycle/j;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->init(Landroidx/lifecycle/j;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 159
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->onBackPressed()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 106
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 107
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->installViewFactory()V

    .line 82
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 130
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 131
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->onDestroy()V

    .line 132
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getVuiSceneHelper()Lcom/xiaopeng/xui/vui/VuiSceneHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 112
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 113
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->onPause()V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 94
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 100
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 101
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 124
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 125
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 88
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 89
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 118
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->onStop()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 146
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 164
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    .line 165
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public recreate()V
    .locals 1

    .line 137
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->recreate()V

    .line 138
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->onRecreate()V

    return-void
.end method

.class public abstract Lcom/xiaopeng/xui/app/XActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "XActivity.java"


# instance fields
.field private mDelegate:Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public dismissActivity()V
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getActivityDismiss()Lcom/xiaopeng/xui/app/delegate/XActivityDismiss;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/xui/app/delegate/XActivityDismiss;->dismiss(I)V

    .line 53
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 131
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const/4 v0, 0x1

    return v0

    .line 134
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchUserEvent()V
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->dispatchUserEvent()V

    .line 57
    return-void
.end method

.method protected getActivityDismiss()Lcom/xiaopeng/xui/app/delegate/XActivityDismiss;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->getActivityDismiss()Lcom/xiaopeng/xui/app/delegate/XActivityDismiss;

    move-result-object v0

    return-object v0
.end method

.method protected getActivityTemplate()Lcom/xiaopeng/xui/app/delegate/XActivityTemplate;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/xiaopeng/xui/app/delegate/XActivityTemplate;",
            ">()TT;"
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->getActivityTemplate()Lcom/xiaopeng/xui/app/delegate/XActivityTemplate;

    move-result-object v0

    return-object v0
.end method

.method protected getWindowAttributes()Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 43
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->getWindowAttributes()Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;

    move-result-object v0

    return-object v0
.end method

.method protected getWindowVisible()Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->getWindowVisible()Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;

    move-result-object v0

    return-object v0
.end method

.method public getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XActivity;->mDelegate:Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    if-nez v0, :cond_0

    .line 27
    invoke-static {p0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->create(Landroidx/appcompat/app/AppCompatActivity;)Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XActivity;->mDelegate:Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XActivity;->mDelegate:Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->onBackPressed()V

    .line 140
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 87
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 88
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 89
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    .line 62
    .local v0, "delegate":Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->installViewFactory()V

    .line 63
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 111
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 112
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->onDestroy()V

    .line 113
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 93
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 94
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->onPause()V

    .line 95
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 75
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->onPostCreate(Landroid/os/Bundle;)V

    .line 77
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 81
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 82
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->onResume()V

    .line 83
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 105
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 107
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 69
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->onStart()V

    .line 71
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 99
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 100
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->onStop()V

    .line 101
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 123
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x1

    return v0

    .line 126
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public recreate()V
    .locals 1

    .line 117
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->recreate()V

    .line 118
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->getXuiDelegate()Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;->onRecreate()V

    .line 119
    return-void
.end method

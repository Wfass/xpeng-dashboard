.class interface abstract Lcom/xiaopeng/xui/app/delegate/XActivityLifecycle;
.super Ljava/lang/Object;
.source "XActivityLifecycle.java"


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 15
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 34
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 28
    return-void
.end method

.method public onRecreate()V
    .locals 0

    .line 22
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 25
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 18
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 31
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .line 37
    return-void
.end method

.class public abstract Lcom/xiaopeng/xui/app/XActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "XActivity.java"


# instance fields
.field private ZK:Lcom/xiaopeng/xui/app/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->qo()Lcom/xiaopeng/xui/app/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/a/b;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const/4 p1, 0x1

    return p1

    .line 134
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onBackPressed()V
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->qo()Lcom/xiaopeng/xui/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/a/b;->onBackPressed()V

    .line 140
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 87
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 88
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->qo()Lcom/xiaopeng/xui/app/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/a/b;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 89
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->qo()Lcom/xiaopeng/xui/app/a/b;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/a/b;->installViewFactory()V

    .line 63
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/a/b;->onCreate(Landroid/os/Bundle;)V

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
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->qo()Lcom/xiaopeng/xui/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/a/b;->onDestroy()V

    .line 113
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 93
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 94
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->qo()Lcom/xiaopeng/xui/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/a/b;->onPause()V

    .line 95
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 75
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->qo()Lcom/xiaopeng/xui/app/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/a/b;->onPostCreate(Landroid/os/Bundle;)V

    .line 77
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 81
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 82
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->qo()Lcom/xiaopeng/xui/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/a/b;->onResume()V

    .line 83
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 105
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->qo()Lcom/xiaopeng/xui/app/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/a/b;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 107
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 69
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 70
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->qo()Lcom/xiaopeng/xui/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/a/b;->onStart()V

    .line 71
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 99
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 100
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->qo()Lcom/xiaopeng/xui/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/a/b;->onStop()V

    .line 101
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->qo()Lcom/xiaopeng/xui/app/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/a/b;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const/4 p1, 0x1

    return p1

    .line 126
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public qo()Lcom/xiaopeng/xui/app/a/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XActivity;->ZK:Lcom/xiaopeng/xui/app/a/b;

    if-nez v0, :cond_0

    .line 27
    invoke-static {p0}, Lcom/xiaopeng/xui/app/a/b;->a(Landroidx/appcompat/app/AppCompatActivity;)Lcom/xiaopeng/xui/app/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/app/XActivity;->ZK:Lcom/xiaopeng/xui/app/a/b;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XActivity;->ZK:Lcom/xiaopeng/xui/app/a/b;

    return-object v0
.end method

.method public recreate()V
    .locals 1

    .line 117
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->recreate()V

    .line 118
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/XActivity;->qo()Lcom/xiaopeng/xui/app/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/a/b;->qy()V

    .line 119
    return-void
.end method

.class public abstract Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;
.super Ljava/lang/Object;
.source "XActivityDelegate.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static create(Landroidx/appcompat/app/AppCompatActivity;)Lcom/xiaopeng/xui/app/delegate/XActivityDelegate;
    .locals 1
    .param p0, "activity"    # Landroidx/appcompat/app/AppCompatActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    new-instance v0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    return-object v0
.end method


# virtual methods
.method public abstract createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract dispatchUserEvent()V
.end method

.method public abstract getActivityDismiss()Lcom/xiaopeng/xui/app/delegate/XActivityDismiss;
.end method

.method public abstract getActivityTemplate()Lcom/xiaopeng/xui/app/delegate/XActivityTemplate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/xiaopeng/xui/app/delegate/XActivityTemplate;",
            ">()TT;"
        }
    .end annotation
.end method

.method public abstract getWindowAttributes()Lcom/xiaopeng/xui/app/delegate/XActivityWindowAttributes;
.end method

.method public abstract getWindowVisible()Lcom/xiaopeng/xui/app/delegate/XActivityWindowVisible;
.end method

.method public abstract installViewFactory()V
.end method

.method public abstract onBackPressed()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onPostCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onRecreate()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

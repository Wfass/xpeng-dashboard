.class public abstract Lcom/xiaopeng/xui/app/a/b;
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

.method public static a(Landroidx/appcompat/app/AppCompatActivity;)Lcom/xiaopeng/xui/app/a/b;
    .locals 1
    .param p0    # Landroidx/appcompat/app/AppCompatActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    new-instance v0, Lcom/xiaopeng/xui/app/a/c;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/a/c;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    return-object v0
.end method


# virtual methods
.method public abstract dispatchTouchEvent(Landroid/view/MotionEvent;)Z
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

.method public abstract qy()V
.end method

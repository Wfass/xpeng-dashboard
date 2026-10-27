.class public Lcom/xiaopeng/lib/themeswitch/DrawableLoader;
.super Ljava/lang/Object;
.source "DrawableLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/themeswitch/DrawableLoader$MultiDrawableLoadCallback;,
        Lcom/xiaopeng/lib/themeswitch/DrawableLoader$SingleDrawableLoadCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DrawableLoader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadDrawableAsync(Landroid/content/Context;ILcom/xiaopeng/lib/themeswitch/DrawableLoader$SingleDrawableLoadCallback;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;->getInstance()Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$4;-><init>(Landroid/content/Context;ILcom/xiaopeng/lib/themeswitch/DrawableLoader$SingleDrawableLoadCallback;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static loadDrawableAsync(Landroid/content/Context;[ILcom/xiaopeng/lib/themeswitch/DrawableLoader$MultiDrawableLoadCallback;)V
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;->getInstance()Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$5;

    invoke-direct {v1, p1, p0, p2}, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$5;-><init>([ILandroid/content/Context;Lcom/xiaopeng/lib/themeswitch/DrawableLoader$MultiDrawableLoadCallback;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/lib/themeswitch/ThreadPoolHelper;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setBackgroundDrawableAsyncForButton(Landroid/content/Context;ILandroid/widget/Button;)V
    .locals 1

    .line 65
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 66
    new-instance p2, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$3;

    invoke-direct {p2, v0}, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$3;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 76
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/lib/themeswitch/DrawableLoader;->loadDrawableAsync(Landroid/content/Context;ILcom/xiaopeng/lib/themeswitch/DrawableLoader$SingleDrawableLoadCallback;)V

    return-void
.end method

.method public static setBackgroundDrawableAsyncForView(Landroid/content/Context;ILandroid/view/View;)V
    .locals 1

    .line 30
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 32
    new-instance p2, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$1;

    invoke-direct {p2, v0}, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$1;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 42
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/lib/themeswitch/DrawableLoader;->loadDrawableAsync(Landroid/content/Context;ILcom/xiaopeng/lib/themeswitch/DrawableLoader$SingleDrawableLoadCallback;)V

    return-void
.end method

.method public static setDrawableAsyncForImageView(Landroid/content/Context;ILandroid/widget/ImageView;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 51
    new-instance p2, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$2;

    invoke-direct {p2, v0}, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$2;-><init>(Ljava/lang/ref/WeakReference;)V

    .line 61
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/lib/themeswitch/DrawableLoader;->loadDrawableAsync(Landroid/content/Context;ILcom/xiaopeng/lib/themeswitch/DrawableLoader$SingleDrawableLoadCallback;)V

    return-void
.end method

.class final Lcom/xiaopeng/lib/themeswitch/DrawableLoader$3;
.super Ljava/lang/Object;
.source "DrawableLoader.java"

# interfaces
.implements Lcom/xiaopeng/lib/themeswitch/DrawableLoader$SingleDrawableLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/themeswitch/DrawableLoader;->setBackgroundDrawableAsyncForButton(Landroid/content/Context;ILandroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$wr:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$3;->val$wr:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawableLoadFinish(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/DrawableLoader$3;->val$wr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

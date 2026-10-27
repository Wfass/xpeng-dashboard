.class Lcom/xiaopeng/musicradio/utils/af$1$1;
.super Ljava/lang/Object;
.source "ImageLoaderUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/utils/af$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/drawable/Drawable;

.field final synthetic b:Lcom/xiaopeng/musicradio/utils/af$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/utils/af$1;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/musicradio/utils/af$1$1;->b:Lcom/xiaopeng/musicradio/utils/af$1;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/utils/af$1$1;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/musicradio/utils/af$1$1;->b:Lcom/xiaopeng/musicradio/utils/af$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/utils/af$1;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 35
    iget-object v1, p0, Lcom/xiaopeng/musicradio/utils/af$1$1;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

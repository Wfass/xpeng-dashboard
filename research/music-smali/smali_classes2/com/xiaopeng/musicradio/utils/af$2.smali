.class final Lcom/xiaopeng/musicradio/utils/af$2;
.super Ljava/lang/Object;
.source "ImageLoaderUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/utils/af;->a(ILandroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(ILjava/lang/ref/WeakReference;)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/xiaopeng/musicradio/utils/af$2;->a:I

    iput-object p2, p0, Lcom/xiaopeng/musicradio/utils/af$2;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 48
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    iget v1, p0, Lcom/xiaopeng/musicradio/utils/af$2;->a:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/xiaopeng/musicradio/utils/af$2$1;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/musicradio/utils/af$2$1;-><init>(Lcom/xiaopeng/musicradio/utils/af$2;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

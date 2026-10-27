.class public Lcom/xiaopeng/musicradio/utils/af;
.super Ljava/lang/Object;
.source "ImageLoaderUtil.java"


# static fields
.field public static a:I = 0x1

.field public static b:I = 0x2

.field public static c:I = 0x3

.field public static d:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(ILandroid/view/View;)V
    .locals 1

    .line 25
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 26
    new-instance p1, Lcom/xiaopeng/musicradio/utils/af$1;

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/musicradio/utils/af$1;-><init>(ILjava/lang/ref/WeakReference;)V

    invoke-static {p1}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(ILandroid/widget/ImageView;)V
    .locals 1

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 45
    new-instance p1, Lcom/xiaopeng/musicradio/utils/af$2;

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/musicradio/utils/af$2;-><init>(ILjava/lang/ref/WeakReference;)V

    invoke-static {p1}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method

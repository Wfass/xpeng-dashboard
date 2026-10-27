.class Lahu$1;
.super Landroid/util/LruCache;
.source "LocalImageFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahu;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Laht;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lahu;


# direct methods
.method constructor <init>(Lahu;II)V
    .locals 0

    .line 100
    iput-object p1, p0, Lahu$1;->b:Lahu;

    iput p3, p0, Lahu$1;->a:I

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Laht;Landroid/graphics/drawable/Drawable;)I
    .locals 0

    .line 103
    instance-of p1, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_0

    .line 104
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p1

    return p1

    .line 108
    :cond_0
    iget p1, p0, Lahu$1;->a:I

    mul-int/lit16 p1, p1, 0x400

    return p1
.end method

.method protected synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 100
    check-cast p1, Laht;

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lahu$1;->a(Laht;Landroid/graphics/drawable/Drawable;)I

    move-result p1

    return p1
.end method

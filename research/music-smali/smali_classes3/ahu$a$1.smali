.class Lahu$a$1;
.super Ljava/lang/Object;
.source "LocalImageFetcher.java"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahu$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lahu$a;


# direct methods
.method constructor <init>(Lahu$a;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lahu$a$1;->a:Lahu$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 2

    .line 235
    iget-object p3, p0, Lahu$a$1;->a:Lahu$a;

    invoke-virtual {p3}, Lahu$a;->isCancelled()Z

    move-result p3

    if-nez p3, :cond_2

    .line 236
    iget-object p3, p0, Lahu$a$1;->a:Lahu$a;

    invoke-static {p3}, Lahu$a;->b(Lahu$a;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    .line 237
    iget-object p3, p0, Lahu$a$1;->a:Lahu$a;

    invoke-static {p3}, Lahu$a;->a(Lahu$a;)Laht;

    move-result-object p3

    iget-object p3, p3, Laht;->b:Landroid/util/Size;

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result p3

    .line 238
    iget-object v0, p0, Lahu$a$1;->a:Lahu$a;

    invoke-static {v0}, Lahu$a;->a(Lahu$a;)Laht;

    move-result-object v0

    iget-object v0, v0, Laht;->b:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    .line 239
    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    .line 240
    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    if-gt v1, p3, :cond_0

    if-le p2, v0, :cond_1

    :cond_0
    int-to-float p3, p3

    int-to-float v1, v1

    div-float/2addr p3, v1

    int-to-float v0, v0

    int-to-float p2, p2

    div-float/2addr v0, p2

    .line 242
    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    move-result p3

    mul-float/2addr v1, p3

    .line 243
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-float/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    :cond_1
    return-void

    .line 235
    :cond_2
    new-instance p1, Ljava/util/concurrent/CancellationException;

    invoke-direct {p1}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw p1
.end method

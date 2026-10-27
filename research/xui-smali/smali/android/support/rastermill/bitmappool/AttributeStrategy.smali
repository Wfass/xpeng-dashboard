.class Landroid/support/rastermill/bitmappool/AttributeStrategy;
.super Ljava/lang/Object;
.source "AttributeStrategy.java"

# interfaces
.implements Landroid/support/rastermill/bitmappool/LruPoolStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;,
        Landroid/support/rastermill/bitmappool/AttributeStrategy$KeyPool;
    }
.end annotation


# instance fields
.field private final groupedMap:Landroid/support/rastermill/bitmappool/GroupedLinkedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/rastermill/bitmappool/GroupedLinkedMap<",
            "Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final keyPool:Landroid/support/rastermill/bitmappool/AttributeStrategy$KeyPool;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Landroid/support/rastermill/bitmappool/AttributeStrategy$KeyPool;

    invoke-direct {v0}, Landroid/support/rastermill/bitmappool/AttributeStrategy$KeyPool;-><init>()V

    iput-object v0, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy;->keyPool:Landroid/support/rastermill/bitmappool/AttributeStrategy$KeyPool;

    .line 11
    new-instance v0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap;

    invoke-direct {v0}, Landroid/support/rastermill/bitmappool/GroupedLinkedMap;-><init>()V

    iput-object v0, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy;->groupedMap:Landroid/support/rastermill/bitmappool/GroupedLinkedMap;

    return-void
.end method

.method static synthetic access$000(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/graphics/Bitmap$Config;

    .line 9
    invoke-static {p0, p1, p2}, Landroid/support/rastermill/bitmappool/AttributeStrategy;->getBitmapString(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getBitmapString(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 52
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/support/rastermill/bitmappool/AttributeStrategy;->getBitmapString(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .line 21
    iget-object v0, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy;->keyPool:Landroid/support/rastermill/bitmappool/AttributeStrategy$KeyPool;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/rastermill/bitmappool/AttributeStrategy$KeyPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;

    move-result-object v0

    .line 23
    .local v0, "key":Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;
    iget-object v1, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy;->groupedMap:Landroid/support/rastermill/bitmappool/GroupedLinkedMap;

    invoke-virtual {v1, v0}, Landroid/support/rastermill/bitmappool/GroupedLinkedMap;->get(Landroid/support/rastermill/bitmappool/Poolable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public getSize(Landroid/graphics/Bitmap;)I
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 43
    invoke-static {p1}, Landroid/support/rastermill/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method

.method public logBitmap(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .line 38
    invoke-static {p1, p2, p3}, Landroid/support/rastermill/bitmappool/AttributeStrategy;->getBitmapString(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 33
    invoke-static {p1}, Landroid/support/rastermill/bitmappool/AttributeStrategy;->getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public put(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 14
    iget-object v0, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy;->keyPool:Landroid/support/rastermill/bitmappool/AttributeStrategy$KeyPool;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/rastermill/bitmappool/AttributeStrategy$KeyPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;

    move-result-object v0

    .line 16
    .local v0, "key":Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;
    iget-object v1, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy;->groupedMap:Landroid/support/rastermill/bitmappool/GroupedLinkedMap;

    invoke-virtual {v1, v0, p1}, Landroid/support/rastermill/bitmappool/GroupedLinkedMap;->put(Landroid/support/rastermill/bitmappool/Poolable;Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method public removeLast()Landroid/graphics/Bitmap;
    .locals 1

    .line 28
    iget-object v0, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy;->groupedMap:Landroid/support/rastermill/bitmappool/GroupedLinkedMap;

    invoke-virtual {v0}, Landroid/support/rastermill/bitmappool/GroupedLinkedMap;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttributeStrategy:\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy;->groupedMap:Landroid/support/rastermill/bitmappool/GroupedLinkedMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

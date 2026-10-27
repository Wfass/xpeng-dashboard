.class Landroid/support/rastermill/bitmappool/SizeStrategy;
.super Ljava/lang/Object;
.source "SizeStrategy.java"

# interfaces
.implements Landroid/support/rastermill/bitmappool/LruPoolStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/rastermill/bitmappool/SizeStrategy$Key;,
        Landroid/support/rastermill/bitmappool/SizeStrategy$KeyPool;
    }
.end annotation


# static fields
.field private static final MAX_SIZE_MULTIPLE:I = 0x8


# instance fields
.field private final groupedMap:Landroid/support/rastermill/bitmappool/GroupedLinkedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/rastermill/bitmappool/GroupedLinkedMap<",
            "Landroid/support/rastermill/bitmappool/SizeStrategy$Key;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final keyPool:Landroid/support/rastermill/bitmappool/SizeStrategy$KeyPool;

.field private final sortedSizes:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/support/rastermill/bitmappool/SizeStrategy$KeyPool;

    invoke-direct {v0}, Landroid/support/rastermill/bitmappool/SizeStrategy$KeyPool;-><init>()V

    iput-object v0, p0, Landroid/support/rastermill/bitmappool/SizeStrategy;->keyPool:Landroid/support/rastermill/bitmappool/SizeStrategy$KeyPool;

    .line 19
    new-instance v0, Landroid/support/rastermill/bitmappool/GroupedLinkedMap;

    invoke-direct {v0}, Landroid/support/rastermill/bitmappool/GroupedLinkedMap;-><init>()V

    iput-object v0, p0, Landroid/support/rastermill/bitmappool/SizeStrategy;->groupedMap:Landroid/support/rastermill/bitmappool/GroupedLinkedMap;

    .line 20
    new-instance v0, Landroid/support/rastermill/bitmappool/PrettyPrintTreeMap;

    invoke-direct {v0}, Landroid/support/rastermill/bitmappool/PrettyPrintTreeMap;-><init>()V

    iput-object v0, p0, Landroid/support/rastermill/bitmappool/SizeStrategy;->sortedSizes:Ljava/util/TreeMap;

    return-void
.end method

.method static synthetic access$100(I)Ljava/lang/String;
    .locals 0

    .line 16
    invoke-static {p0}, Landroid/support/rastermill/bitmappool/SizeStrategy;->getBitmapString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private decrementBitmapOfSize(Ljava/lang/Integer;)V
    .locals 3

    .line 65
    iget-object v0, p0, Landroid/support/rastermill/bitmappool/SizeStrategy;->sortedSizes:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 67
    iget-object v0, p0, Landroid/support/rastermill/bitmappool/SizeStrategy;->sortedSizes:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 69
    :cond_0
    iget-object v1, p0, Landroid/support/rastermill/bitmappool/SizeStrategy;->sortedSizes:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static getBitmapString(I)Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 0

    .line 97
    invoke-static {p0}, Landroid/support/rastermill/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result p0

    .line 98
    invoke-static {p0}, Landroid/support/rastermill/bitmappool/SizeStrategy;->getBitmapString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 4

    .line 35
    invoke-static {p1, p2, p3}, Landroid/support/rastermill/util/Util;->getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    .line 36
    iget-object v1, p0, Landroid/support/rastermill/bitmappool/SizeStrategy;->keyPool:Landroid/support/rastermill/bitmappool/SizeStrategy$KeyPool;

    invoke-virtual {v1, v0}, Landroid/support/rastermill/bitmappool/SizeStrategy$KeyPool;->get(I)Landroid/support/rastermill/bitmappool/SizeStrategy$Key;

    move-result-object v1

    .line 38
    iget-object v2, p0, Landroid/support/rastermill/bitmappool/SizeStrategy;->sortedSizes:Ljava/util/TreeMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 39
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v0, v0, 0x8

    if-gt v3, v0, :cond_0

    .line 40
    iget-object v0, p0, Landroid/support/rastermill/bitmappool/SizeStrategy;->keyPool:Landroid/support/rastermill/bitmappool/SizeStrategy$KeyPool;

    invoke-virtual {v0, v1}, Landroid/support/rastermill/bitmappool/SizeStrategy$KeyPool;->offer(Landroid/support/rastermill/bitmappool/Poolable;)V

    .line 41
    iget-object v0, p0, Landroid/support/rastermill/bitmappool/SizeStrategy;->keyPool:Landroid/support/rastermill/bitmappool/SizeStrategy$KeyPool;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/rastermill/bitmappool/SizeStrategy$KeyPool;->get(I)Landroid/support/rastermill/bitmappool/SizeStrategy$Key;

    move-result-object v1

    .line 45
    :cond_0
    iget-object v0, p0, Landroid/support/rastermill/bitmappool/SizeStrategy;->groupedMap:Landroid/support/rastermill/bitmappool/GroupedLinkedMap;

    invoke-virtual {v0, v1}, Landroid/support/rastermill/bitmappool/GroupedLinkedMap;->get(Landroid/support/rastermill/bitmappool/Poolable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 48
    invoke-direct {p0, v2}, Landroid/support/rastermill/bitmappool/SizeStrategy;->decrementBitmapOfSize(Ljava/lang/Integer;)V

    :cond_1
    return-object v0
.end method

.method public getSize(Landroid/graphics/Bitmap;)I
    .locals 0

    .line 86
    invoke-static {p1}, Landroid/support/rastermill/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method public logBitmap(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .locals 0

    .line 80
    invoke-static {p1, p2, p3}, Landroid/support/rastermill/util/Util;->getBitmapByteSize(IILandroid/graphics/Bitmap$Config;)I

    move-result p1

    .line 81
    invoke-static {p1}, Landroid/support/rastermill/bitmappool/SizeStrategy;->getBitmapString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public logBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 0

    .line 75
    invoke-static {p1}, Landroid/support/rastermill/bitmappool/SizeStrategy;->getBitmapString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public put(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 24
    invoke-static {p1}, Landroid/support/rastermill/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 25
    iget-object v1, p0, Landroid/support/rastermill/bitmappool/SizeStrategy;->keyPool:Landroid/support/rastermill/bitmappool/SizeStrategy$KeyPool;

    invoke-virtual {v1, v0}, Landroid/support/rastermill/bitmappool/SizeStrategy$KeyPool;->get(I)Landroid/support/rastermill/bitmappool/SizeStrategy$Key;

    move-result-object v0

    .line 27
    iget-object v1, p0, Landroid/support/rastermill/bitmappool/SizeStrategy;->groupedMap:Landroid/support/rastermill/bitmappool/GroupedLinkedMap;

    invoke-virtual {v1, v0, p1}, Landroid/support/rastermill/bitmappool/GroupedLinkedMap;->put(Landroid/support/rastermill/bitmappool/Poolable;Ljava/lang/Object;)V

    .line 29
    iget-object p1, p0, Landroid/support/rastermill/bitmappool/SizeStrategy;->sortedSizes:Ljava/util/TreeMap;

    invoke-static {v0}, Landroid/support/rastermill/bitmappool/SizeStrategy$Key;->access$000(Landroid/support/rastermill/bitmappool/SizeStrategy$Key;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 30
    iget-object v1, p0, Landroid/support/rastermill/bitmappool/SizeStrategy;->sortedSizes:Ljava/util/TreeMap;

    invoke-static {v0}, Landroid/support/rastermill/bitmappool/SizeStrategy$Key;->access$000(Landroid/support/rastermill/bitmappool/SizeStrategy$Key;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v2, p1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeLast()Landroid/graphics/Bitmap;
    .locals 2

    .line 56
    iget-object v0, p0, Landroid/support/rastermill/bitmappool/SizeStrategy;->groupedMap:Landroid/support/rastermill/bitmappool/GroupedLinkedMap;

    invoke-virtual {v0}, Landroid/support/rastermill/bitmappool/GroupedLinkedMap;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 58
    invoke-static {v0}, Landroid/support/rastermill/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v1

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/rastermill/bitmappool/SizeStrategy;->decrementBitmapOfSize(Ljava/lang/Integer;)V

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SizeStrategy:\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/rastermill/bitmappool/SizeStrategy;->groupedMap:Landroid/support/rastermill/bitmappool/GroupedLinkedMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n  SortedSizes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/rastermill/bitmappool/SizeStrategy;->sortedSizes:Ljava/util/TreeMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

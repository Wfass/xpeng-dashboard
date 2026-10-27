.class Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;
.super Ljava/lang/Object;
.source "AttributeStrategy.java"

# interfaces
.implements Landroid/support/rastermill/bitmappool/Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/rastermill/bitmappool/AttributeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Key"
.end annotation


# instance fields
.field private config:Landroid/graphics/Bitmap$Config;

.field private height:I

.field private final pool:Landroid/support/rastermill/bitmappool/AttributeStrategy$KeyPool;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/support/rastermill/bitmappool/AttributeStrategy$KeyPool;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->pool:Landroid/support/rastermill/bitmappool/AttributeStrategy$KeyPool;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 93
    instance-of v0, p1, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 94
    check-cast p1, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;

    .line 95
    iget v0, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->width:I

    iget v2, p1, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->width:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->height:I

    iget v2, p1, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->height:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    if-ne v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 104
    iget v0, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->width:I

    mul-int/lit8 v0, v0, 0x1f

    .line 105
    iget v1, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 106
    iget-object v1, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public init(IILandroid/graphics/Bitmap$Config;)V
    .locals 0

    .line 86
    iput p1, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->width:I

    .line 87
    iput p2, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->height:I

    .line 88
    iput-object p3, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public offer()V
    .locals 1

    .line 117
    iget-object v0, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->pool:Landroid/support/rastermill/bitmappool/AttributeStrategy$KeyPool;

    invoke-virtual {v0, p0}, Landroid/support/rastermill/bitmappool/AttributeStrategy$KeyPool;->offer(Landroid/support/rastermill/bitmappool/Poolable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 112
    iget v0, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->width:I

    iget v1, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->height:I

    iget-object v2, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/support/rastermill/bitmappool/AttributeStrategy;->access$000(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

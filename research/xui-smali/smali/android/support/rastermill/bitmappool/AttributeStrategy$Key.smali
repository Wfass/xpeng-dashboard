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
    .param p1, "pool"    # Landroid/support/rastermill/bitmappool/AttributeStrategy$KeyPool;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->pool:Landroid/support/rastermill/bitmappool/AttributeStrategy$KeyPool;

    .line 83
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 93
    instance-of v0, p1, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 94
    move-object v0, p1

    check-cast v0, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;

    .line 95
    .local v0, "other":Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;
    iget v2, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->width:I

    iget v3, v0, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->width:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->height:I

    iget v3, v0, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->height:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    iget-object v3, v0, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 99
    .end local v0    # "other":Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 104
    iget v0, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->width:I

    .line 105
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget v3, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->height:I

    add-int/2addr v2, v3

    .line 106
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/2addr v1, v2

    iget-object v0, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    .line 107
    .end local v2    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public init(IILandroid/graphics/Bitmap$Config;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .line 86
    iput p1, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->width:I

    .line 87
    iput p2, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->height:I

    .line 88
    iput-object p3, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    .line 89
    return-void
.end method

.method public offer()V
    .locals 1

    .line 117
    iget-object v0, p0, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->pool:Landroid/support/rastermill/bitmappool/AttributeStrategy$KeyPool;

    invoke-virtual {v0, p0}, Landroid/support/rastermill/bitmappool/AttributeStrategy$KeyPool;->offer(Landroid/support/rastermill/bitmappool/Poolable;)V

    .line 118
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

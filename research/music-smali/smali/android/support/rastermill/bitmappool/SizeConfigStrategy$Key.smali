.class final Landroid/support/rastermill/bitmappool/SizeConfigStrategy$Key;
.super Ljava/lang/Object;
.source "SizeConfigStrategy.java"

# interfaces
.implements Landroid/support/rastermill/bitmappool/Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/rastermill/bitmappool/SizeConfigStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Key"
.end annotation


# instance fields
.field private config:Landroid/graphics/Bitmap$Config;

.field private final pool:Landroid/support/rastermill/bitmappool/SizeConfigStrategy$KeyPool;

.field private size:I


# direct methods
.method public constructor <init>(Landroid/support/rastermill/bitmappool/SizeConfigStrategy$KeyPool;)V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Landroid/support/rastermill/bitmappool/SizeConfigStrategy$Key;->pool:Landroid/support/rastermill/bitmappool/SizeConfigStrategy$KeyPool;

    return-void
.end method

.method constructor <init>(Landroid/support/rastermill/bitmappool/SizeConfigStrategy$KeyPool;ILandroid/graphics/Bitmap$Config;)V
    .locals 0

    .line 184
    invoke-direct {p0, p1}, Landroid/support/rastermill/bitmappool/SizeConfigStrategy$Key;-><init>(Landroid/support/rastermill/bitmappool/SizeConfigStrategy$KeyPool;)V

    .line 185
    invoke-virtual {p0, p2, p3}, Landroid/support/rastermill/bitmappool/SizeConfigStrategy$Key;->init(ILandroid/graphics/Bitmap$Config;)V

    return-void
.end method

.method static synthetic access$000(Landroid/support/rastermill/bitmappool/SizeConfigStrategy$Key;)I
    .locals 0

    .line 172
    iget p0, p0, Landroid/support/rastermill/bitmappool/SizeConfigStrategy$Key;->size:I

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 205
    instance-of v0, p1, Landroid/support/rastermill/bitmappool/SizeConfigStrategy$Key;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 206
    check-cast p1, Landroid/support/rastermill/bitmappool/SizeConfigStrategy$Key;

    .line 207
    iget v0, p0, Landroid/support/rastermill/bitmappool/SizeConfigStrategy$Key;->size:I

    iget v2, p1, Landroid/support/rastermill/bitmappool/SizeConfigStrategy$Key;->size:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/support/rastermill/bitmappool/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    if-nez v0, :cond_0

    iget-object p1, p1, Landroid/support/rastermill/bitmappool/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/support/rastermill/bitmappool/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 214
    iget v0, p0, Landroid/support/rastermill/bitmappool/SizeConfigStrategy$Key;->size:I

    mul-int/lit8 v0, v0, 0x1f

    .line 215
    iget-object v1, p0, Landroid/support/rastermill/bitmappool/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

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

.method public init(ILandroid/graphics/Bitmap$Config;)V
    .locals 0

    .line 189
    iput p1, p0, Landroid/support/rastermill/bitmappool/SizeConfigStrategy$Key;->size:I

    .line 190
    iput-object p2, p0, Landroid/support/rastermill/bitmappool/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public offer()V
    .locals 1

    .line 195
    iget-object v0, p0, Landroid/support/rastermill/bitmappool/SizeConfigStrategy$Key;->pool:Landroid/support/rastermill/bitmappool/SizeConfigStrategy$KeyPool;

    invoke-virtual {v0, p0}, Landroid/support/rastermill/bitmappool/SizeConfigStrategy$KeyPool;->offer(Landroid/support/rastermill/bitmappool/Poolable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 200
    iget v0, p0, Landroid/support/rastermill/bitmappool/SizeConfigStrategy$Key;->size:I

    iget-object v1, p0, Landroid/support/rastermill/bitmappool/SizeConfigStrategy$Key;->config:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1}, Landroid/support/rastermill/bitmappool/SizeConfigStrategy;->access$100(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

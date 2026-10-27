.class Landroid/support/rastermill/bitmappool/SizeConfigStrategy$KeyPool;
.super Landroid/support/rastermill/bitmappool/BaseKeyPool;
.source "SizeConfigStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/rastermill/bitmappool/SizeConfigStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/rastermill/bitmappool/BaseKeyPool<",
        "Landroid/support/rastermill/bitmappool/SizeConfigStrategy$Key;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Landroid/support/rastermill/bitmappool/BaseKeyPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic create()Landroid/support/rastermill/bitmappool/Poolable;
    .locals 1

    .line 157
    invoke-virtual {p0}, Landroid/support/rastermill/bitmappool/SizeConfigStrategy$KeyPool;->create()Landroid/support/rastermill/bitmappool/SizeConfigStrategy$Key;

    move-result-object v0

    return-object v0
.end method

.method protected create()Landroid/support/rastermill/bitmappool/SizeConfigStrategy$Key;
    .locals 1

    .line 167
    new-instance v0, Landroid/support/rastermill/bitmappool/SizeConfigStrategy$Key;

    invoke-direct {v0, p0}, Landroid/support/rastermill/bitmappool/SizeConfigStrategy$Key;-><init>(Landroid/support/rastermill/bitmappool/SizeConfigStrategy$KeyPool;)V

    return-object v0
.end method

.method public get(ILandroid/graphics/Bitmap$Config;)Landroid/support/rastermill/bitmappool/SizeConfigStrategy$Key;
    .locals 1
    .param p1, "size"    # I
    .param p2, "config"    # Landroid/graphics/Bitmap$Config;

    .line 160
    invoke-virtual {p0}, Landroid/support/rastermill/bitmappool/SizeConfigStrategy$KeyPool;->get()Landroid/support/rastermill/bitmappool/Poolable;

    move-result-object v0

    check-cast v0, Landroid/support/rastermill/bitmappool/SizeConfigStrategy$Key;

    .line 161
    .local v0, "result":Landroid/support/rastermill/bitmappool/SizeConfigStrategy$Key;
    invoke-virtual {v0, p1, p2}, Landroid/support/rastermill/bitmappool/SizeConfigStrategy$Key;->init(ILandroid/graphics/Bitmap$Config;)V

    .line 162
    return-object v0
.end method

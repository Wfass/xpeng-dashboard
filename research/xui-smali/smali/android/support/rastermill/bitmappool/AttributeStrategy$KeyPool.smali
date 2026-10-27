.class Landroid/support/rastermill/bitmappool/AttributeStrategy$KeyPool;
.super Landroid/support/rastermill/bitmappool/BaseKeyPool;
.source "AttributeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/rastermill/bitmappool/AttributeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/rastermill/bitmappool/BaseKeyPool<",
        "Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Landroid/support/rastermill/bitmappool/BaseKeyPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;
    .locals 1

    .line 69
    new-instance v0, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;

    invoke-direct {v0, p0}, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;-><init>(Landroid/support/rastermill/bitmappool/AttributeStrategy$KeyPool;)V

    return-object v0
.end method

.method protected bridge synthetic create()Landroid/support/rastermill/bitmappool/Poolable;
    .locals 1

    .line 60
    invoke-virtual {p0}, Landroid/support/rastermill/bitmappool/AttributeStrategy$KeyPool;->create()Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;

    move-result-object v0

    return-object v0
.end method

.method public get(IILandroid/graphics/Bitmap$Config;)Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .line 62
    invoke-virtual {p0}, Landroid/support/rastermill/bitmappool/AttributeStrategy$KeyPool;->get()Landroid/support/rastermill/bitmappool/Poolable;

    move-result-object v0

    check-cast v0, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;

    .line 63
    .local v0, "result":Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/rastermill/bitmappool/AttributeStrategy$Key;->init(IILandroid/graphics/Bitmap$Config;)V

    .line 64
    return-object v0
.end method

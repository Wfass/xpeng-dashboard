.class Landroid/support/rastermill/bitmappool/SizeStrategy$KeyPool;
.super Landroid/support/rastermill/bitmappool/BaseKeyPool;
.source "SizeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/rastermill/bitmappool/SizeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/rastermill/bitmappool/BaseKeyPool<",
        "Landroid/support/rastermill/bitmappool/SizeStrategy$Key;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Landroid/support/rastermill/bitmappool/BaseKeyPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic create()Landroid/support/rastermill/bitmappool/Poolable;
    .locals 1

    .line 106
    invoke-virtual {p0}, Landroid/support/rastermill/bitmappool/SizeStrategy$KeyPool;->create()Landroid/support/rastermill/bitmappool/SizeStrategy$Key;

    move-result-object v0

    return-object v0
.end method

.method protected create()Landroid/support/rastermill/bitmappool/SizeStrategy$Key;
    .locals 1

    .line 116
    new-instance v0, Landroid/support/rastermill/bitmappool/SizeStrategy$Key;

    invoke-direct {v0, p0}, Landroid/support/rastermill/bitmappool/SizeStrategy$Key;-><init>(Landroid/support/rastermill/bitmappool/SizeStrategy$KeyPool;)V

    return-object v0
.end method

.method public get(I)Landroid/support/rastermill/bitmappool/SizeStrategy$Key;
    .locals 1

    .line 109
    invoke-virtual {p0}, Landroid/support/rastermill/bitmappool/SizeStrategy$KeyPool;->get()Landroid/support/rastermill/bitmappool/Poolable;

    move-result-object v0

    check-cast v0, Landroid/support/rastermill/bitmappool/SizeStrategy$Key;

    .line 110
    invoke-virtual {v0, p1}, Landroid/support/rastermill/bitmappool/SizeStrategy$Key;->init(I)V

    return-object v0
.end method

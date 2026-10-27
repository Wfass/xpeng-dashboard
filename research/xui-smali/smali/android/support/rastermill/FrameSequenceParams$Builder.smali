.class public Landroid/support/rastermill/FrameSequenceParams$Builder;
.super Ljava/lang/Object;
.source "FrameSequenceParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/rastermill/FrameSequenceParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field diskCacheFactory:Landroid/support/rastermill/cache/DiskCache$Factory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/support/rastermill/FrameSequenceParams;
    .locals 2

    .line 26
    new-instance v0, Landroid/support/rastermill/FrameSequenceParams;

    invoke-direct {v0}, Landroid/support/rastermill/FrameSequenceParams;-><init>()V

    .line 27
    .local v0, "frameSequenceParams":Landroid/support/rastermill/FrameSequenceParams;
    iget-object v1, p0, Landroid/support/rastermill/FrameSequenceParams$Builder;->diskCacheFactory:Landroid/support/rastermill/cache/DiskCache$Factory;

    invoke-static {v0, v1}, Landroid/support/rastermill/FrameSequenceParams;->access$002(Landroid/support/rastermill/FrameSequenceParams;Landroid/support/rastermill/cache/DiskCache$Factory;)Landroid/support/rastermill/cache/DiskCache$Factory;

    .line 28
    return-object v0
.end method

.method public diskCacheFactory(Landroid/support/rastermill/cache/DiskCache$Factory;)Landroid/support/rastermill/FrameSequenceParams$Builder;
    .locals 0
    .param p1, "diskCacheFactory"    # Landroid/support/rastermill/cache/DiskCache$Factory;

    .line 21
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceParams$Builder;->diskCacheFactory:Landroid/support/rastermill/cache/DiskCache$Factory;

    .line 22
    return-object p0
.end method

.class public Landroid/support/rastermill/FrameSequenceParams;
.super Ljava/lang/Object;
.source "FrameSequenceParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/rastermill/FrameSequenceParams$Builder;
    }
.end annotation


# instance fields
.field private mDiskCacheFactory:Landroid/support/rastermill/cache/DiskCache$Factory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/support/rastermill/FrameSequenceParams;Landroid/support/rastermill/cache/DiskCache$Factory;)Landroid/support/rastermill/cache/DiskCache$Factory;
    .locals 0

    .line 8
    iput-object p1, p0, Landroid/support/rastermill/FrameSequenceParams;->mDiskCacheFactory:Landroid/support/rastermill/cache/DiskCache$Factory;

    return-object p1
.end method


# virtual methods
.method public getDiskCacheFactory()Landroid/support/rastermill/cache/DiskCache$Factory;
    .locals 1

    .line 13
    iget-object v0, p0, Landroid/support/rastermill/FrameSequenceParams;->mDiskCacheFactory:Landroid/support/rastermill/cache/DiskCache$Factory;

    return-object v0
.end method

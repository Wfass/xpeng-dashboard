.class public abstract Landroid/support/rastermill/loader/AbsLoader;
.super Ljava/lang/Object;
.source "AbsLoader.java"

# interfaces
.implements Landroid/support/rastermill/loader/ILoader;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Landroid/support/rastermill/loader/AbsLoader;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract decode()Landroid/support/rastermill/FrameSequence;
.end method

.method public getFrameSequence()Landroid/support/rastermill/FrameSequence;
    .locals 2

    .line 32
    invoke-virtual {p0}, Landroid/support/rastermill/loader/AbsLoader;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 35
    :cond_0
    invoke-virtual {p0}, Landroid/support/rastermill/loader/AbsLoader;->decode()Landroid/support/rastermill/FrameSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p0}, Landroid/support/rastermill/loader/AbsLoader;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Landroid/support/rastermill/FrameSequence;->addFrameSequenceKey(Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Landroid/support/rastermill/loader/AbsLoader;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public isCacheRequired()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

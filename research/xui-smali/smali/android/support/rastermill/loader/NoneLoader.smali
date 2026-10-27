.class public Landroid/support/rastermill/loader/NoneLoader;
.super Landroid/support/rastermill/loader/AbsLoader;
.source "NoneLoader.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 12
    invoke-direct {p0, p1}, Landroid/support/rastermill/loader/AbsLoader;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method public decode()Landroid/support/rastermill/FrameSequence;
    .locals 1

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public exists()Z
    .locals 1

    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    .line 17
    const/4 v0, 0x0

    return v0
.end method

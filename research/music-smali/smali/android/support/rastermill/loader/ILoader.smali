.class public interface abstract Landroid/support/rastermill/loader/ILoader;
.super Ljava/lang/Object;
.source "ILoader.java"


# static fields
.field public static final TYPE_ASSET:I = 0x1

.field public static final TYPE_FILE:I = 0x2

.field public static final TYPE_HTTP:I = 0x5

.field public static final TYPE_INPUT_STREAM:I = 0x4

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_RESOURCE:I = 0x3


# virtual methods
.method public abstract exists()Z
.end method

.method public abstract getFrameSequence()Landroid/support/rastermill/FrameSequence;
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getType()I
.end method

.method public abstract isCacheRequired()Z
.end method

.method public abstract release()V
.end method

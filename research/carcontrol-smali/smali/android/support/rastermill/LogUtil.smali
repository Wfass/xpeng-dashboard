.class public Landroid/support/rastermill/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FrameSequence"

.field private static sLogEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .line 23
    sget-boolean v0, Landroid/support/rastermill/LogUtil;->sLogEnable:Z

    if-eqz v0, :cond_0

    const-string v0, "FrameSequence"

    .line 24
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 29
    sget-boolean v0, Landroid/support/rastermill/LogUtil;->sLogEnable:Z

    if-eqz v0, :cond_0

    const-string v0, "FrameSequence"

    .line 30
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static enableLog(Z)V
    .locals 0

    .line 19
    sput-boolean p0, Landroid/support/rastermill/LogUtil;->sLogEnable:Z

    return-void
.end method

.method public static isLogEnable()Z
    .locals 1

    .line 15
    sget-boolean v0, Landroid/support/rastermill/LogUtil;->sLogEnable:Z

    return v0
.end method

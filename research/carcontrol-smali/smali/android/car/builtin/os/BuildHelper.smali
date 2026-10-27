.class public final Landroid/car/builtin/os/BuildHelper;
.super Ljava/lang/Object;
.source "BuildHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static isDebuggableBuild()Z
    .locals 1

    .line 48
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    return v0
.end method

.method public static isEngBuild()Z
    .locals 1

    .line 38
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    return v0
.end method

.method public static isUserBuild()Z
    .locals 1

    .line 33
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    return v0
.end method

.method public static isUserDebugBuild()Z
    .locals 1

    .line 43
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    return v0
.end method

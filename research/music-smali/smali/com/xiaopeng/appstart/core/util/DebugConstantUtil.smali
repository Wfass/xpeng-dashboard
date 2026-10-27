.class public Lcom/xiaopeng/appstart/core/util/DebugConstantUtil;
.super Ljava/lang/Object;
.source "DebugConstantUtil.java"


# static fields
.field private static needOutLogToFile:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isNeedOutLogToFile()Z
    .locals 1

    .line 8
    sget-boolean v0, Lcom/xiaopeng/appstart/core/util/DebugConstantUtil;->needOutLogToFile:Z

    return v0
.end method

.method public static setNeedOutLogToFile(Z)V
    .locals 0

    .line 12
    sput-boolean p0, Lcom/xiaopeng/appstart/core/util/DebugConstantUtil;->needOutLogToFile:Z

    return-void
.end method

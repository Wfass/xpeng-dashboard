.class public Lcom/xiaopeng/libconfig/ipc/IpcConfig$CarInfoUploadConfig;
.super Ljava/lang/Object;
.source "IpcConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libconfig/ipc/IpcConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CarInfoUploadConfig"
.end annotation


# static fields
.field public static final TYPE_CANCEL_GET_CARINFO_DATA_REQUEST:I = 0x186a2

.field public static final TYPE_GET_CARINFO_DATA_REQUEST:I = 0x186a1

.field public static final TYPE_HEAR_BEAT_GET_CARINFO_DATA:I = 0x186a3

.field public static final TYPE_IMMEDIATELY_GET_CARINFO_DATA_REQUEST:I = 0x186a4


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

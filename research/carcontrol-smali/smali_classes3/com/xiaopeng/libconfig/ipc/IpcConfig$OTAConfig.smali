.class public Lcom/xiaopeng/libconfig/ipc/IpcConfig$OTAConfig;
.super Ljava/lang/Object;
.source "IpcConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libconfig/ipc/IpcConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OTAConfig"
.end annotation


# static fields
.field public static final NOTIFY_BROADCAS:I = 0x516

.field public static final OTA_STATUS_REQUEST:I = 0x519

.field public static final OTA_STATUS_RESPONSE:I = 0x51a

.field public static final SHOW_OTA_DETAIL:I = 0x518

.field public static final SHOW_OTA_MAIN:I = 0x517

.field public static final STATE_CHANGE:I = 0x515


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

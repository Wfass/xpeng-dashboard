.class public Lcom/xiaopeng/libconfig/ipc/AiosConfig$DataCollectorId;
.super Ljava/lang/Object;
.source "AiosConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libconfig/ipc/AiosConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataCollectorId"
.end annotation


# static fields
.field public static final DELETE_CANCEL_BCAN:I = 0x3

.field public static final START_COLLECT_BCAN:I = 0x0

.field public static final STOP_COLLECT_BCAN:I = 0x1

.field public static final UPLOAD_BCAN_LOG:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

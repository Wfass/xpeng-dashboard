.class public Lcom/xiaopeng/libconfig/ipc/IpcConfig$AfterSalesConfig;
.super Ljava/lang/Object;
.source "IpcConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libconfig/ipc/IpcConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AfterSalesConfig"
.end annotation


# static fields
.field public static final IPC_DIAG_MAP_GAODE_LOG:I = 0x1776

.field public static final IPC_DIAG_REQUEST:I = 0x1774

.field public static final IPC_DIAG_RESPONSE:I = 0x1775

.field public static final IPC_EVENT_REPAIRMODE_STATUS_CHANGE:I = 0x1771

.field public static final IPC_REQUEST_CHANGE_REPAIRMODE:I = 0x1772

.field public static final IPC_REQUEST_REPAIRMODE_STATUS:I = 0x1773

.field public static final MSGKEY_REPAIRMODE_STATUS_CHANGE:Ljava/lang/String; = "repairmode"

.field public static final MSGKEY_REQUEST_CHANGE_REPAIRMODE:Ljava/lang/String; = "change_repairmode"

.field public static final MSGKEY_REQUEST_REPAIRMODE_STATUS:Ljava/lang/String; = "read_repairmode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

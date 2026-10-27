.class public Lcom/xiaopeng/libconfig/ipc/AiosConfig$IPC_CHARGE_CONTROL_MSG_ID;
.super Ljava/lang/Object;
.source "AiosConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libconfig/ipc/AiosConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IPC_CHARGE_CONTROL_MSG_ID"
.end annotation


# static fields
.field public static final IPC_MSG_ID_OPEN_CHARGE_INTERFACE:I = 0x30d48

.field public static final IPC_MSG_ID_OPEN_CHARGE_PROT:I = 0x30d49

.field public static final IPC_MSG_ID_START_TO_CHARGE:I = 0x30d46

.field public static final IPC_MSG_ID_STOP_TO_CHARGE:I = 0x30d47


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

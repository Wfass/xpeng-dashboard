.class public Lcom/xiaopeng/libconfig/ipc/IpcConfig$HVACControlConfig;
.super Ljava/lang/Object;
.source "IpcConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libconfig/ipc/IpcConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HVACControlConfig"
.end annotation


# static fields
.field public static final IPC_COMMAND_ID_HVAC_CONTROL:I = 0x2e630

.field public static final IPC_COMMAND_ID_HVAC_ESRSYSTEM_ENTER_REQUEST:I = 0x2e634

.field public static final IPC_COMMAND_ID_HVAC_ESRSYSTEM_ENTER_RESPONSE:I = 0x2e636

.field public static final IPC_COMMAND_ID_HVAC_ESRSYSTEM_EXIT_REQUEST:I = 0x2e635

.field public static final IPC_COMMAND_ID_HVAC_ESRSYSTEM_EXIT_RESPONSE:I = 0x2e637

.field public static final IPC_COMMAND_ID_HVAC_ESRSYSTEM_NEED_REQUEST:I = 0x2e631

.field public static final IPC_COMMAND_ID_HVAC_ESRSYSTEM_NEED_RESPONSE:I = 0x2e632

.field public static final IPC_COMMAND_ID_HVAC_ESRSYSTEM_NOT_NEED_RESPONSE:I = 0x2e633

.field public static final IPC_COMMAND_ID_HVAC_VENTILATION_ENTER_RESPONSE:I = 0x2e638

.field public static final IPC_COMMAND_ID_HVAC_VENTILATION_EXIT_RESPONSE:I = 0x2e639


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

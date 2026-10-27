.class public Lcom/xiaopeng/libconfig/ipc/IpcConfig$AutopilotConfig;
.super Ljava/lang/Object;
.source "IpcConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libconfig/ipc/IpcConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutopilotConfig"
.end annotation


# static fields
.field public static final REMOTE_COMMAND_AUTOPILOT_ENTER_AUTO_PARK:I = 0x15f96

.field public static final REMOTE_COMMAND_AUTOPILOT_EXIT_AUTO_PARK:I = 0x15f97

.field public static final REMOTE_COMMAND_AUTOPILOT_SYSTEMUI_ACTIVE_SUPER_PARK:I = 0x15f9b

.field public static final REMOTE_COMMAND_AUTOPILOT_TO_EXIT_BEFORE_WINDOW_CLOSE:I = 0x15f9a

.field public static final REMOTE_COMMAND_AUTOPILOT_WINDOW_CLOSED:I = 0x15f9c

.field public static final REMOTE_COMMAND_AUTOPILOT_WINDOW_OPENED:I = 0x15f9d


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

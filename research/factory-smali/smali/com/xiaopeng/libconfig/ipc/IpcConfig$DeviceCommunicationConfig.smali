.class public Lcom/xiaopeng/libconfig/ipc/IpcConfig$DeviceCommunicationConfig;
.super Ljava/lang/Object;
.source "IpcConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/libconfig/ipc/IpcConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceCommunicationConfig"
.end annotation


# static fields
.field public static final KEY_APP_MESSAGE_EVENT_NAME:Ljava/lang/String; = "eventName"

.field public static final KEY_APP_MESSAGE_PARAMS:Ljava/lang/String; = "params"

.field public static final SEND_APP_MESSAGE:I = 0x57b

.field public static final SEND_CAR_CONTROL_TOPIC:I = 0x578

.field public static final TRAFFIC_STATUS_REQUEST:I = 0x579

.field public static final TRAFFIC_STATUS_RESPONSE:I = 0x57a


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Lcom/xiaopeng/xuimanager/iot/devices/XpAssistDevice;
.super Lcom/xiaopeng/xuimanager/iot/BaseDevice;
.source "XpAssistDevice.java"


# static fields
.field public static final DEVICE_TYPE:Ljava/lang/String; = "XpAssist"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/iot/devices/XpAssistDevice;->deviceName:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/iot/devices/XpAssistDevice;->deviceId:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/xiaopeng/xuimanager/iot/devices/XpAssistDevice;->deviceType:Ljava/lang/String;

    return-void
.end method

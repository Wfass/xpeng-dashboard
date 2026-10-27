.class public abstract Lcom/xiaopeng/xuiservice/iot/manager/BaseDeviceManager;
.super Ljava/lang/Object;
.source "BaseDeviceManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addDevice(Lcom/xiaopeng/xuimanager/iot/BaseDevice;)V
.end method

.method public abstract addDeviceListener(Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;)V
.end method

.method public addInnerDeviceListener(Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;

    .line 20
    return-void
.end method

.method public abstract dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract getDevice()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/iot/BaseDevice;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPropertyMap(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract init()V
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract monitorDevice(Ljava/lang/String;Z)V
.end method

.method public abstract sendCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setPropertyMap(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

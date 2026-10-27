.class public interface abstract Lcom/xiaopeng/xuiservice/iot/manager/IEventListener;
.super Ljava/lang/Object;
.source "IEventListener.java"


# virtual methods
.method public onDeviceAdd(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/iot/BaseDevice;",
            ">;)V"
        }
    .end annotation

    .line 9
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/iot/BaseDevice;>;"
    return-void
.end method

.method public onDeviceEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "jsonString"    # Ljava/lang/String;

    .line 10
    return-void
.end method

.method public abstract onDeviceEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

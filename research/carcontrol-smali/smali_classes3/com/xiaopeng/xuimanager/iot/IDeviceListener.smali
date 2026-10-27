.class public interface abstract Lcom/xiaopeng/xuimanager/iot/IDeviceListener;
.super Ljava/lang/Object;
.source "IDeviceListener.java"


# virtual methods
.method public abstract onDeviceAdd(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/iot/BaseDevice;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onOperationResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onPropertiesUpdated(Ljava/lang/String;Ljava/util/Map;)V
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

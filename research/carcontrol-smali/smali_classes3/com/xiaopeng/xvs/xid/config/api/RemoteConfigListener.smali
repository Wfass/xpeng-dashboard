.class public interface abstract Lcom/xiaopeng/xvs/xid/config/api/RemoteConfigListener;
.super Ljava/lang/Object;
.source "RemoteConfigListener.java"


# virtual methods
.method public abstract onRemoteConfigChanged(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

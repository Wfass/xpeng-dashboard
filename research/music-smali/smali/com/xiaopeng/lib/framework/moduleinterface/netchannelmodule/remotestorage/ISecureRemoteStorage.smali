.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/ISecureRemoteStorage;
.super Ljava/lang/Object;
.source "ISecureRemoteStorage.java"


# virtual methods
.method public abstract appendWithPathAndCallback(Ljava/lang/String;Ljava/lang/String;[BLcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)V
.end method

.method public abstract downloadWithPathAndCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)V
.end method

.method public abstract initWithContext(Landroid/app/Application;)V
.end method

.method public abstract initWithContext(Landroid/content/Context;)V
.end method

.method public abstract needCertified(Z)V
.end method

.method public abstract setTempUrlExpireTime(J)V
.end method

.method public abstract uploadWithPathAndCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)V
.end method

.method public abstract uploadWithPathAndCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

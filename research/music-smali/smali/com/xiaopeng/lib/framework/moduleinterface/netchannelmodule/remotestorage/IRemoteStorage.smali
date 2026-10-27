.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage;
.super Ljava/lang/Object;
.source "IRemoteStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;
    }
.end annotation


# virtual methods
.method public abstract appendWithPathAndCallback(Ljava/lang/String;Ljava/lang/String;[BLcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)V
.end method

.method public abstract downloadWithPathAndCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)V
.end method

.method public abstract initWithCategoryAndContext(Landroid/app/Application;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract initWithContext(Landroid/app/Application;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract initWithContext(Landroid/content/Context;)V
.end method

.method public abstract needCertified(Z)V
.end method

.method public abstract setTempUrlExpireTime(J)V
.end method

.method public abstract uploadWithCallback(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;)V
.end method

.method public abstract uploadWithCallback(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/IRemoteStorage$CATEGORY;",
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

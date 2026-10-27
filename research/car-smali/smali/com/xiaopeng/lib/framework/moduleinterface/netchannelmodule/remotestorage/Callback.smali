.class public interface abstract Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/Callback;
.super Ljava/lang/Object;
.source "Callback.java"


# virtual methods
.method public abstract onFailure(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "remoteUrl",
            "localFilePath",
            "storageException"
        }
    .end annotation
.end method

.method public abstract onStart(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "remoteUrl",
            "localFilePath"
        }
    .end annotation
.end method

.method public abstract onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "remoteUrl",
            "localFilePath"
        }
    .end annotation
.end method

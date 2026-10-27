.class public interface abstract Lcom/xiaopeng/aar/client/ipc/Ipc;
.super Ljava/lang/Object;
.source "Ipc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/aar/client/ipc/Ipc$OnServerStatusListener;,
        Lcom/xiaopeng/aar/client/ipc/Ipc$OnServerListener;
    }
.end annotation


# virtual methods
.method public abstract addOnServerStatusListener(Lcom/xiaopeng/aar/client/ipc/Ipc$OnServerStatusListener;)V
.end method

.method public abstract call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
.end method

.method public abstract onReceived(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
.end method

.method public abstract removeOnServerStatusListener(Lcom/xiaopeng/aar/client/ipc/Ipc$OnServerStatusListener;)V
.end method

.method public abstract setOnServerListener(Lcom/xiaopeng/aar/client/ipc/Ipc$OnServerListener;)V
.end method

.method public abstract subscribe(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract subscribes(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract unSubscribe(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract unSubscribes(Ljava/lang/String;Ljava/lang/String;)V
.end method

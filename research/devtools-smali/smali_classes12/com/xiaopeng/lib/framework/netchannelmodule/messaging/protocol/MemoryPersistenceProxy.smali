.class public Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;
.super Ljava/lang/Object;
.source "MemoryPersistenceProxy.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;


# static fields
.field private static final MAX_MESSAGE_NUMBER:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "MemoryPersistenceProxy"


# instance fields
.field protected mClientId:Ljava/lang/String;

.field protected mHashTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Lorg/eclipse/paho/client/mqttv3/MqttPersistable;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mServerURI:Ljava/lang/String;

.field protected mTraceEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->mHashTable:Ljava/util/Hashtable;

    .line 35
    const-string v0, "new MemoryPersistenceProxy"

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->log(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private checkOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->mHashTable:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 42
    return-void

    .line 40
    :cond_0
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;-><init>()V

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 31
    invoke-static {}, Lcom/xiaopeng/lib/utils/c/b;->pj()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->mTraceEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "MemoryPersistenceProxy"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->checkOpen()V

    .line 119
    const-string v0, "clear"

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->log(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->mHashTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 121
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .line 50
    const-string v0, "close()"

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->log(Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->checkOpen()V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->mHashTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "containsKey key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " result:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->log(Ljava/lang/String;)V

    .line 128
    return v0
.end method

.method public get(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttPersistable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->checkOpen()V

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->mHashTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " result:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->log(Ljava/lang/String;)V

    .line 71
    return-object v0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->checkOpen()V

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->mHashTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " hasMoreElements:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->log(Ljava/lang/String;)V

    .line 58
    return-object v0
.end method

.method public open(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open clientId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " serverURI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->log(Ljava/lang/String;)V

    .line 77
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->mClientId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->mServerURI:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string p1, "same config, return!"

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->log(Ljava/lang/String;)V

    .line 82
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->mHashTable:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->mHashTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 87
    :cond_1
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->mClientId:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->mServerURI:Ljava/lang/String;

    .line 89
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->mHashTable:Ljava/util/Hashtable;

    .line 90
    return-void

    .line 78
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "clientId or serverURI can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public put(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttPersistable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->checkOpen()V

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "put key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " persistable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->mHashTable:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->log(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->mHashTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->mHashTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 104
    const-string v0, "exceed max persist count"

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->log(Ljava/lang/String;)V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->mHashTable:Ljava/util/Hashtable;

    new-instance v1, Landroid/util/Pair;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->checkOpen()V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->log(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->mHashTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public setTraceEnabled(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/MemoryPersistenceProxy;->mTraceEnabled:Z

    .line 133
    return-void
.end method

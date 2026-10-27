.class public Lcom/xiaopeng/lib/apirouter/server/aar/ClientObserver_Manifest;
.super Ljava/lang/Object;
.source "ClientObserver_Manifest.java"


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.aar.client.ipc.ClientObserver"

.field public static final TRANSACTION_onReceived:I = 0x0

.field public static final TRANSACTION_onReceivedBlob:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKey()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 19
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    const-string v1, "ClientObserver"

    .line 20
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static toJsonManifest()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "{\"authority\":\"com.xiaopeng.aar.client.ipc.ClientObserver\",\"DESCRIPTOR\":\"com.xiaopeng.aar.client.ipc.ClientObserver\",\"TRANSACTION\":[{\"path\":\"onReceived\",\"METHOD\":\"onReceived\",\"ID\":0,\"parameter\":[{\"alias\":\"type\",\"name\":\"type\"},{\"alias\":\"appId\",\"name\":\"appId\"},{\"alias\":\"module\",\"name\":\"module\"},{\"alias\":\"msgId\",\"name\":\"msgId\"},{\"alias\":\"data\",\"name\":\"data\"}]},{\"path\":\"onReceivedBlob\",\"METHOD\":\"onReceivedBlob\",\"ID\":1,\"parameter\":[{\"alias\":\"type\",\"name\":\"type\"},{\"alias\":\"appId\",\"name\":\"appId\"},{\"alias\":\"module\",\"name\":\"module\"},{\"alias\":\"msgId\",\"name\":\"msgId\"},{\"alias\":\"data\",\"name\":\"data\"}]}]}"

    return-object v0
.end method

.class public Lcom/xiaopeng/lib/apirouter/server/IpcRouterService_Manifest;
.super Ljava/lang/Object;
.source "IpcRouterService_Manifest.java"


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuiservice.IpcRouterService"

.field public static final TRANSACTION_onReceiverData:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
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

    .line 16
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 17
    .local v0, "key":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "IpcRouterService"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    return-object v0
.end method

.method public static toJsonManifest()Ljava/lang/String;
    .locals 1

    .line 12
    const-string v0, "{\"authority\":\"com.xiaopeng.xuiservice.IpcRouterService\",\"DESCRIPTOR\":\"com.xiaopeng.xuiservice.IpcRouterService\",\"TRANSACTION\":[{\"path\":\"onReceiverData\",\"METHOD\":\"onReceiverData\",\"ID\":0,\"parameter\":[{\"alias\":\"id\",\"name\":\"id\"},{\"alias\":\"bundle\",\"name\":\"bundle\"}]}]}"

    return-object v0
.end method

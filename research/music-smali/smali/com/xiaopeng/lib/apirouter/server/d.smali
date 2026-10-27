.class public Lcom/xiaopeng/lib/apirouter/server/d;
.super Ljava/lang/Object;
.source "IpcRouterService_Manifest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string v0, "{\"authority\":\"com.xiaopeng.musicradio.IpcRouterService\",\"DESCRIPTOR\":\"com.xiaopeng.musicradio.IpcRouterService\",\"TRANSACTION\":[{\"path\":\"onReceiverData\",\"METHOD\":\"onReceiverData\",\"ID\":0,\"parameter\":[{\"alias\":\"id\",\"name\":\"id\"},{\"alias\":\"bundle\",\"name\":\"bundle\"}]}]}"

    return-object v0
.end method

.method public static b()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    const-string v1, "IpcRouterService"

    .line 18
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

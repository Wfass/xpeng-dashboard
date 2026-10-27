.class public Lcom/xiaopeng/lib/apirouter/server/aar/ServerObserver_Manifest;
.super Ljava/lang/Object;
.source "ServerObserver_Manifest.java"


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.aar.server.ipc.ServerObserver"

.field public static final TRANSACTION_call:I = 0x0

.field public static final TRANSACTION_callBlob:I = 0x1


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

    const-string v1, "ServerObserver"

    .line 20
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static toJsonManifest()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "{\"authority\":\"com.xiaopeng.aar.server.ipc.ServerObserver\",\"DESCRIPTOR\":\"com.xiaopeng.aar.server.ipc.ServerObserver\",\"TRANSACTION\":[{\"path\":\"call\",\"METHOD\":\"call\",\"ID\":0,\"parameter\":[{\"alias\":\"type\",\"name\":\"type\"},{\"alias\":\"module\",\"name\":\"module\"},{\"alias\":\"method\",\"name\":\"method\"},{\"alias\":\"param\",\"name\":\"param\"}]},{\"path\":\"callBlob\",\"METHOD\":\"callBlob\",\"ID\":1,\"parameter\":[{\"alias\":\"type\",\"name\":\"type\"},{\"alias\":\"module\",\"name\":\"module\"},{\"alias\":\"method\",\"name\":\"method\"},{\"alias\":\"param\",\"name\":\"param\"}]}]}"

    return-object v0
.end method

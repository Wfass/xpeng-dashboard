.class public Lcom/xiaopeng/lib/apirouter/server/vuiengine/ApiRouterOverallService_Manifest;
.super Ljava/lang/Object;
.source "ApiRouterOverallService_Manifest.java"


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.speech.apirouter.ApiRouterOverallService"

.field public static final TRANSACTION_onEvent:I = 0x0

.field public static final TRANSACTION_onQuery:I = 0x1


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

    const-string v1, "ApiRouterOverallService"

    .line 20
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static toJsonManifest()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "{\"authority\":\"com.xiaopeng.speech.apirouter.ApiRouterOverallService\",\"DESCRIPTOR\":\"com.xiaopeng.speech.apirouter.ApiRouterOverallService\",\"TRANSACTION\":[{\"path\":\"onEvent\",\"METHOD\":\"onEvent\",\"ID\":0,\"parameter\":[{\"alias\":\"event\",\"name\":\"event\"},{\"alias\":\"data\",\"name\":\"data\"}]},{\"path\":\"onQuery\",\"METHOD\":\"onQuery\",\"ID\":1,\"parameter\":[{\"alias\":\"event\",\"name\":\"event\"},{\"alias\":\"data\",\"name\":\"data\"},{\"alias\":\"callback\",\"name\":\"callback\"}]}]}"

    return-object v0
.end method

.class public Lcom/xiaopeng/lib/apirouter/server/BugHunterServicePublisher_Manifest;
.super Ljava/lang/Object;
.source "BugHunterServicePublisher_Manifest.java"


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xuiservice.bughunter.BugHunterServicePublisher"

.field public static final TRANSACTION_reportBug:I


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

    .line 17
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 18
    .local v0, "key":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "BugHunterServicePublisher"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    return-object v0
.end method

.method public static toJsonManifest()Ljava/lang/String;
    .locals 1

    .line 13
    const-string v0, "{\"authority\":\"com.xiaopeng.xuiservice.bughunter.BugHunterServicePublisher\",\"DESCRIPTOR\":\"com.xiaopeng.xuiservice.bughunter.BugHunterServicePublisher\",\"TRANSACTION\":[{\"path\":\"reportBug\",\"METHOD\":\"reportBug\",\"ID\":0,\"parameter\":[{\"alias\":\"bugInfo\",\"name\":\"bugInfo\"}]}]}"

    return-object v0
.end method

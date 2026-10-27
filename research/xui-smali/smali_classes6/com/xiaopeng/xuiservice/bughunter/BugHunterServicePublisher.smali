.class public Lcom/xiaopeng/xuiservice/bughunter/BugHunterServicePublisher;
.super Ljava/lang/Object;
.source "BugHunterServicePublisher.java"

# interfaces
.implements Lcom/xiaopeng/lib/apirouter/server/IServicePublisher;


# annotations
.annotation build Lcom/xiaopeng/lib/apirouter/server/ApplicationId;
    value = "com.xiaopeng.xuiservice.bughunter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reportBug(Ljava/lang/String;)V
    .locals 1
    .param p1, "bugInfo"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/lib/apirouter/server/Publish;
    .end annotation

    .line 12
    invoke-static {}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->getInstance()Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/bughunter/BugHunterHelper;->reportBug(Ljava/lang/String;)V

    .line 13
    return-void
.end method

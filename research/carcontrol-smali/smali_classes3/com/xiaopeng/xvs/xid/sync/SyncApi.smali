.class public Lcom/xiaopeng/xvs/xid/sync/SyncApi;
.super Ljava/lang/Object;
.source "SyncApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApi()Lcom/xiaopeng/xvs/xid/sync/api/ISync;
    .locals 1

    .line 10
    invoke-static {}, Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;->getInstance()Lcom/xiaopeng/xvs/xid/sync/SyncProviderImpl;

    move-result-object v0

    return-object v0
.end method

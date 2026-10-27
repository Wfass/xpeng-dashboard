.class public Lcom/xiaopeng/xvs/xid/account/AccountApi;
.super Ljava/lang/Object;
.source "AccountApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApi()Lcom/xiaopeng/xvs/xid/account/api/IAccount;
    .locals 1

    .line 15
    invoke-static {}, Lcom/xiaopeng/xvs/xid/account/AccountClientImpl;->getInstance()Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    move-result-object v0

    return-object v0
.end method

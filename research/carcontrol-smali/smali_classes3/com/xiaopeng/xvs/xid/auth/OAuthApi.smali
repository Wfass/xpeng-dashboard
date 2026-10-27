.class public final Lcom/xiaopeng/xvs/xid/auth/OAuthApi;
.super Ljava/lang/Object;
.source "OAuthApi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApi()Lcom/xiaopeng/xvs/xid/auth/api/IOAuth;
    .locals 1

    .line 11
    invoke-static {}, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;->getInstance()Lcom/xiaopeng/xvs/xid/auth/api/IOAuth;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/xiaopeng/musicradio/bean/user/KugoAppKeyInfo;
.super Ljava/lang/Object;
.source "KugoAppKeyInfo.java"


# instance fields
.field private appId:Ljava/lang/String;

.field private appKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/user/KugoAppKeyInfo;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/user/KugoAppKeyInfo;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/user/KugoAppKeyInfo;->appId:Ljava/lang/String;

    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/user/KugoAppKeyInfo;->appKey:Ljava/lang/String;

    return-void
.end method

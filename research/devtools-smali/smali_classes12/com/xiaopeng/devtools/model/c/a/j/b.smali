.class public Lcom/xiaopeng/devtools/model/c/a/j/b;
.super Ljava/lang/Object;
.source "WlanModel.java"

# interfaces
.implements Lcom/xiaopeng/devtools/model/c/a/j/a;


# instance fields
.field private mContext:Landroid/content/Context;

.field private tF:Lcom/xpeng/test/WifiTest;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/j/b;->mContext:Landroid/content/Context;

    .line 29
    new-instance v0, Lcom/xpeng/test/WifiTest;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/j/b;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xpeng/test/WifiTest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/j/b;->tF:Lcom/xpeng/test/WifiTest;

    .line 30
    return-void
.end method


# virtual methods
.method public closeWifi()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/j/b;->tF:Lcom/xpeng/test/WifiTest;

    invoke-virtual {v0}, Lcom/xpeng/test/WifiTest;->closeWifi()V

    .line 58
    return-void
.end method

.method public getWifiInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/j/b;->tF:Lcom/xpeng/test/WifiTest;

    invoke-virtual {v0}, Lcom/xpeng/test/WifiTest;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public getWlanLocalAddr()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/j/b;->tF:Lcom/xpeng/test/WifiTest;

    invoke-virtual {v0}, Lcom/xpeng/test/WifiTest;->getWlanLocalAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onInit()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/j/b;->tF:Lcom/xpeng/test/WifiTest;

    invoke-virtual {v0}, Lcom/xpeng/test/WifiTest;->onInit()V

    .line 44
    return-void
.end method

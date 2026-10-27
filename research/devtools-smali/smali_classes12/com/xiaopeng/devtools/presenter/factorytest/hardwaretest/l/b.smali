.class public Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/b;
.super Ljava/lang/Object;
.source "WlanPresenter.java"

# interfaces
.implements Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/a;


# instance fields
.field private xw:Lcom/xiaopeng/devtools/model/c/a/j/a;

.field private xx:Landroid/net/wifi/WifiManager$ActionListener;

.field private xy:Landroid/net/wifi/WifiManager$ActionListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/b$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/b$1;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/b;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/b;->xx:Landroid/net/wifi/WifiManager$ActionListener;

    .line 39
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/b$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/b$2;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/b;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/b;->xy:Landroid/net/wifi/WifiManager$ActionListener;

    .line 23
    new-instance v0, Lcom/xiaopeng/devtools/model/c/a/j/b;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/model/c/a/j/b;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/b;->xw:Lcom/xiaopeng/devtools/model/c/a/j/a;

    .line 24
    return-void
.end method


# virtual methods
.method public closeWifi()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/b;->xw:Lcom/xiaopeng/devtools/model/c/a/j/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/a/j/a;->closeWifi()V

    .line 65
    return-void
.end method

.method public getWifiInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/b;->xw:Lcom/xiaopeng/devtools/model/c/a/j/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/a/j/a;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public getWlanLocalAddr()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/b;->xw:Lcom/xiaopeng/devtools/model/c/a/j/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/a/j/a;->getWlanLocalAddr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onInit()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/l/b;->xw:Lcom/xiaopeng/devtools/model/c/a/j/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/a/j/a;->onInit()V

    .line 55
    return-void
.end method

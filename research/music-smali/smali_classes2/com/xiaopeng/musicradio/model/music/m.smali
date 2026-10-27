.class public Lcom/xiaopeng/musicradio/model/music/m;
.super Lcom/xiaopeng/musicradio/model/music/b;
.source "UsbPlayDataList.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "usb_data_provider"

    return-object v0
.end method

.method protected b()V
    .locals 1

    .line 11
    new-instance v0, Lcom/xiaopeng/musicradio/model/music/l;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/model/music/l;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/music/m;->a:Lcom/xiaopeng/musicradio/model/music/k;

    .line 12
    new-instance v0, Lcom/xiaopeng/musicradio/model/music/n;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/model/music/n;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/music/m;->b:Lcom/xiaopeng/musicradio/model/music/n;

    return-void
.end method

.method public c()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method protected d()Lbef;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

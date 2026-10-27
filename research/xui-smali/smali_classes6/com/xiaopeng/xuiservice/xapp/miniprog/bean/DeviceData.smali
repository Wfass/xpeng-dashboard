.class public Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/DeviceData;
.super Ljava/lang/Object;
.source "DeviceData.java"


# instance fields
.field electricStatus:Ljava/lang/String;

.field navigationCompany:Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/Location;

.field navigationDestination:Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/Location;

.field navigationHome:Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/Location;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "desLatitude"    # Ljava/lang/String;
    .param p2, "desLongitude"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/DeviceData;->electricStatus:Ljava/lang/String;

    .line 15
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/Location;

    invoke-direct {v0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/Location;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/DeviceData;->navigationDestination:Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/Location;

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "electricStatus"    # Ljava/lang/String;
    .param p2, "desLatitude"    # Ljava/lang/String;
    .param p3, "desLongitude"    # Ljava/lang/String;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/DeviceData;->electricStatus:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/DeviceData;->electricStatus:Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/Location;

    invoke-direct {v0, p2, p3}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/Location;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/DeviceData;->navigationDestination:Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/Location;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "electricStatus"    # Ljava/lang/String;
    .param p2, "desLatitude"    # Ljava/lang/String;
    .param p3, "desLongitude"    # Ljava/lang/String;
    .param p4, "comLatitude"    # Ljava/lang/String;
    .param p5, "comLongitude"    # Ljava/lang/String;
    .param p6, "homeLatitude"    # Ljava/lang/String;
    .param p7, "homeLongitude"    # Ljava/lang/String;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/DeviceData;->electricStatus:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/DeviceData;->electricStatus:Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/Location;

    invoke-direct {v0, p4, p5}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/Location;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/DeviceData;->navigationCompany:Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/Location;

    .line 26
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/Location;

    invoke-direct {v0, p2, p3}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/Location;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/DeviceData;->navigationDestination:Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/Location;

    .line 27
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/Location;

    invoke-direct {v0, p6, p7}, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/Location;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/DeviceData;->navigationHome:Lcom/xiaopeng/xuiservice/xapp/miniprog/bean/Location;

    .line 28
    return-void
.end method

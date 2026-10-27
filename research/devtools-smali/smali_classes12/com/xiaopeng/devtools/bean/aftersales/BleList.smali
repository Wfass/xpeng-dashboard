.class public Lcom/xiaopeng/devtools/bean/aftersales/BleList;
.super Ljava/lang/Object;
.source "BleList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/bean/aftersales/BleList$Ble;
    }
.end annotation


# instance fields
.field private mMainMac:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mac"
    .end annotation
.end field

.field private mSlaveList:[Lcom/xiaopeng/devtools/bean/aftersales/BleList$Ble;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "slaveMacList"
    .end annotation
.end field

.field private mTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time"
    .end annotation
.end field

.field private mVin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vin"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lcom/xiaopeng/devtools/bean/aftersales/BleList$Ble;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/devtools/bean/aftersales/BleList;->mMainMac:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/xiaopeng/devtools/bean/aftersales/BleList;->mSlaveList:[Lcom/xiaopeng/devtools/bean/aftersales/BleList$Ble;

    .line 19
    return-void
.end method


# virtual methods
.method public getMainMac()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/aftersales/BleList;->mMainMac:Ljava/lang/String;

    return-object v0
.end method

.method public getSlaveList()[Lcom/xiaopeng/devtools/bean/aftersales/BleList$Ble;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/aftersales/BleList;->mSlaveList:[Lcom/xiaopeng/devtools/bean/aftersales/BleList$Ble;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/xiaopeng/devtools/bean/aftersales/BleList;->mTime:J

    return-wide v0
.end method

.method public getVin()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/devtools/bean/aftersales/BleList;->mVin:Ljava/lang/String;

    return-object v0
.end method

.method public setMainMac(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/devtools/bean/aftersales/BleList;->mMainMac:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setSlaveList([Lcom/xiaopeng/devtools/bean/aftersales/BleList$Ble;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/devtools/bean/aftersales/BleList;->mSlaveList:[Lcom/xiaopeng/devtools/bean/aftersales/BleList$Ble;

    .line 35
    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 50
    iput-wide p1, p0, Lcom/xiaopeng/devtools/bean/aftersales/BleList;->mTime:J

    .line 51
    return-void
.end method

.method public setVin(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/xiaopeng/devtools/bean/aftersales/BleList;->mVin:Ljava/lang/String;

    .line 43
    return-void
.end method

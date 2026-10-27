.class public Lcom/xiaopeng/speech/protocol/node/autoparking/AbsAutoParkingListener;
.super Ljava/lang/Object;
.source "AbsAutoParkingListener.java"

# interfaces
.implements Lcom/xiaopeng/speech/protocol/node/autoparking/AutoParkingListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivate()V
    .locals 0

    .line 16
    return-void
.end method

.method public onExit()V
    .locals 0

    .line 22
    return-void
.end method

.method public onMemoryParkingStart()V
    .locals 0

    .line 38
    return-void
.end method

.method public onParkCarportCount(Lcom/xiaopeng/speech/protocol/node/autoparking/bean/ParkingPositionBean;)V
    .locals 0
    .param p1, "positionBean"    # Lcom/xiaopeng/speech/protocol/node/autoparking/bean/ParkingPositionBean;

    .line 33
    return-void
.end method

.method public onParkStart()V
    .locals 0

    .line 28
    return-void
.end method

.method public onUnmannedParkingStart()V
    .locals 0

    .line 43
    return-void
.end method

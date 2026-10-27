.class public Lcom/xiaopeng/commonfunc/b/a/d;
.super Lcom/xiaopeng/commonfunc/b/a/b;
.source "ImuModel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/commonfunc/b/a/b<",
        "Landroid/car/hardware/imu/CarImuManager;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/xiaopeng/commonfunc/b/a/b;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected getServiceName()Ljava/lang/String;
    .locals 1

    .line 17
    const-string v0, "xp_imu"

    return-object v0
.end method

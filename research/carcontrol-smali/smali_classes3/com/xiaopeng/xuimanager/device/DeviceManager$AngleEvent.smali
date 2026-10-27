.class Lcom/xiaopeng/xuimanager/device/DeviceManager$AngleEvent;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/device/DeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AngleEvent"
.end annotation


# instance fields
.field private angle:I

.field private isForceOpen:Z

.field private screenId:I

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIZLjava/lang/String;)V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput p1, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager$AngleEvent;->screenId:I

    .line 221
    iput p2, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager$AngleEvent;->angle:I

    .line 222
    iput-boolean p3, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager$AngleEvent;->isForceOpen:Z

    .line 223
    iput-object p4, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager$AngleEvent;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAngle()I
    .locals 1

    .line 231
    iget v0, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager$AngleEvent;->angle:I

    return v0
.end method

.method public getScreenId()I
    .locals 1

    .line 227
    iget v0, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager$AngleEvent;->screenId:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager$AngleEvent;->source:Ljava/lang/String;

    return-object v0
.end method

.method public isForceOpen()Z
    .locals 1

    .line 235
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager$AngleEvent;->isForceOpen:Z

    return v0
.end method

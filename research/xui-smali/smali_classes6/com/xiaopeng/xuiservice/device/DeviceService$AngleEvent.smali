.class Lcom/xiaopeng/xuiservice/device/DeviceService$AngleEvent;
.super Ljava/lang/Object;
.source "DeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/device/DeviceService;
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
    .param p1, "screenId"    # I
    .param p2, "angle"    # I
    .param p3, "isForceOpen"    # Z
    .param p4, "source"    # Ljava/lang/String;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput p1, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$AngleEvent;->screenId:I

    .line 150
    iput p2, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$AngleEvent;->angle:I

    .line 151
    iput-boolean p3, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$AngleEvent;->isForceOpen:Z

    .line 152
    iput-object p4, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$AngleEvent;->source:Ljava/lang/String;

    .line 153
    return-void
.end method


# virtual methods
.method public getAngle()I
    .locals 1

    .line 160
    iget v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$AngleEvent;->angle:I

    return v0
.end method

.method public getScreenId()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$AngleEvent;->screenId:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$AngleEvent;->source:Ljava/lang/String;

    return-object v0
.end method

.method public isForceOpen()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$AngleEvent;->isForceOpen:Z

    return v0
.end method

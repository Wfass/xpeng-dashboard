.class Lcom/xiaopeng/xuimanager/device/DeviceManager$StateEvent;
.super Ljava/lang/Object;
.source "DeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/device/DeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateEvent"
.end annotation


# instance fields
.field private isForceOpen:Z

.field private screenId:I

.field private source:Ljava/lang/String;

.field private state:I


# direct methods
.method public constructor <init>(IIZLjava/lang/String;)V
    .locals 0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput p1, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager$StateEvent;->screenId:I

    .line 251
    iput p2, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager$StateEvent;->state:I

    .line 252
    iput-boolean p3, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager$StateEvent;->isForceOpen:Z

    .line 253
    iput-object p4, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager$StateEvent;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getScreenId()I
    .locals 1

    .line 257
    iget v0, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager$StateEvent;->screenId:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager$StateEvent;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 261
    iget v0, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager$StateEvent;->state:I

    return v0
.end method

.method public isForceOpen()Z
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/device/DeviceManager$StateEvent;->isForceOpen:Z

    return v0
.end method

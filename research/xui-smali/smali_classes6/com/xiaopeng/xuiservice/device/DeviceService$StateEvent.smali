.class Lcom/xiaopeng/xuiservice/device/DeviceService$StateEvent;
.super Ljava/lang/Object;
.source "DeviceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/device/DeviceService;
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
    .param p1, "screenId"    # I
    .param p2, "state"    # I
    .param p3, "isForceOpen"    # Z
    .param p4, "source"    # Ljava/lang/String;

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput p1, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$StateEvent;->screenId:I

    .line 180
    iput p2, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$StateEvent;->state:I

    .line 181
    iput-boolean p3, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$StateEvent;->isForceOpen:Z

    .line 182
    iput-object p4, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$StateEvent;->source:Ljava/lang/String;

    .line 183
    return-void
.end method


# virtual methods
.method public getScreenId()I
    .locals 1

    .line 186
    iget v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$StateEvent;->screenId:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$StateEvent;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 190
    iget v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$StateEvent;->state:I

    return v0
.end method

.method public isForceOpen()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/device/DeviceService$StateEvent;->isForceOpen:Z

    return v0
.end method

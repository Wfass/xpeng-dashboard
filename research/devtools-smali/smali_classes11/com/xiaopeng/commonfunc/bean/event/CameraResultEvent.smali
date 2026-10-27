.class public Lcom/xiaopeng/commonfunc/bean/event/CameraResultEvent;
.super Ljava/lang/Object;
.source "CameraResultEvent.java"


# instance fields
.field private mCameraId:I

.field private mPath:Ljava/lang/String;

.field private final mResult:Z

.field private final mStep:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/event/CameraResultEvent;->mStep:I

    .line 18
    iput p2, p0, Lcom/xiaopeng/commonfunc/bean/event/CameraResultEvent;->mCameraId:I

    .line 19
    iput-boolean p3, p0, Lcom/xiaopeng/commonfunc/bean/event/CameraResultEvent;->mResult:Z

    .line 20
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/event/CameraResultEvent;->mStep:I

    .line 24
    iput-boolean p2, p0, Lcom/xiaopeng/commonfunc/bean/event/CameraResultEvent;->mResult:Z

    .line 25
    return-void
.end method

.method public constructor <init>(IZLjava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/event/CameraResultEvent;->mStep:I

    .line 29
    iput-boolean p2, p0, Lcom/xiaopeng/commonfunc/bean/event/CameraResultEvent;->mResult:Z

    .line 30
    iput-object p3, p0, Lcom/xiaopeng/commonfunc/bean/event/CameraResultEvent;->mPath:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getCameraId()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/event/CameraResultEvent;->mCameraId:I

    return v0
.end method

.method public getDmOpenCamArgu()[B
    .locals 3

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 51
    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 52
    iget v2, p0, Lcom/xiaopeng/commonfunc/bean/event/CameraResultEvent;->mCameraId:I

    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/d;->bH(I)B

    move-result v2

    aput-byte v2, v0, v1

    .line 53
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/bean/event/CameraResultEvent;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/xiaopeng/commonfunc/bean/event/CameraResultEvent;->mResult:Z

    return v0
.end method

.method public getStep()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/event/CameraResultEvent;->mStep:I

    return v0
.end method

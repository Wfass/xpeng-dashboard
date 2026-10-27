.class public Lcom/xiaopeng/commonfunc/bean/event/CameraTestEvent;
.super Ljava/lang/Object;
.source "CameraTestEvent.java"


# static fields
.field public static final CAMERA_CLOSE:I = 0x0

.field public static final CAMERA_OPEN:I = 0x1

.field public static final CAMERA_TAKEPIC:I = 0x2


# instance fields
.field private mCameraId:I

.field private final mStep:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "step"    # I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/event/CameraTestEvent;->mStep:I

    .line 22
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "step"    # I
    .param p2, "cameraId"    # I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/xiaopeng/commonfunc/bean/event/CameraTestEvent;->mStep:I

    .line 17
    iput p2, p0, Lcom/xiaopeng/commonfunc/bean/event/CameraTestEvent;->mCameraId:I

    .line 18
    return-void
.end method


# virtual methods
.method public getCameraId()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/event/CameraTestEvent;->mCameraId:I

    return v0
.end method

.method public getStep()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/xiaopeng/commonfunc/bean/event/CameraTestEvent;->mStep:I

    return v0
.end method

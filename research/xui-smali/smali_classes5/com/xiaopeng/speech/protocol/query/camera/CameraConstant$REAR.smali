.class public final Lcom/xiaopeng/speech/protocol/query/camera/CameraConstant$REAR;
.super Ljava/lang/Object;
.source "CameraConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/protocol/query/camera/CameraConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "REAR"
.end annotation


# static fields
.field public static final CAMERA_CAR_TYPE_NOT_SUPPORT:I = 0x2

.field public static final CAMERA_NO_REMAINING_SPACE:I = 0x7

.field public static final CAMERA_SPEED_NOT_P:I = 0x4

.field public static final CAMERA_SPEED_PARKING:I = 0x3

.field public static final CAMERA_SUPPORT_CONTROL:I = 0x1

.field public static final CAMERA_WORK_NOT_SUPPORT_OTHER:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/protocol/query/camera/CameraConstant;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/camera/CameraConstant;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/protocol/query/camera/CameraConstant;

    .line 93
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/camera/CameraConstant$REAR;->this$0:Lcom/xiaopeng/speech/protocol/query/camera/CameraConstant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public final Lcom/xiaopeng/speech/protocol/query/camera/CameraConstant$CameraType;
.super Ljava/lang/Object;
.source "CameraConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/protocol/query/camera/CameraConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CameraType"
.end annotation


# static fields
.field public static final BEHIND_CAMERA:I = 0x4

.field public static final DRIVING_RECORDER_CAMERA:I = 0x7

.field public static final FRONT_CAMERA:I = 0x3

.field public static final LEFT_CAMERA:I = 0x1

.field public static final RIGHT_CAMERA:I = 0x2

.field public static final TOP_CAMERA:I = 0x5

.field public static final TRANSPARENTCHASSIS_CAMERA:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/protocol/query/camera/CameraConstant;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/camera/CameraConstant;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/camera/CameraConstant$CameraType;->this$0:Lcom/xiaopeng/speech/protocol/query/camera/CameraConstant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

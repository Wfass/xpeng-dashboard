.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoRespOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VehLocationInfoResp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoRespOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;",
            ">;"
        }
    .end annotation
.end field

.field public static final XPU_LOCAT_CURSPD_FIELD_NUMBER:I = 0x9

.field public static final XPU_LOCAT_PITCH_FIELD_NUMBER:I = 0x8

.field public static final XPU_LOCAT_ROLL_FIELD_NUMBER:I = 0x7

.field public static final XPU_LOCAT_S_FIELD_NUMBER:I = 0x6

.field public static final XPU_LOCAT_THETA_FIELD_NUMBER:I = 0x5

.field public static final XPU_LOCAT_X_FIELD_NUMBER:I = 0x2

.field public static final XPU_LOCAT_Y_FIELD_NUMBER:I = 0x3

.field public static final XPU_LOCAT_Z_FIELD_NUMBER:I = 0x4

.field public static final XPU_TIMESTAMP_FIELD_NUMBER:I = 0x1


# instance fields
.field private xPULocatCurSpd_:F

.field private xPULocatPitch_:F

.field private xPULocatRoll_:F

.field private xPULocatS_:F

.field private xPULocatTheta_:F

.field private xPULocatX_:F

.field private xPULocatY_:F

.field private xPULocatZ_:F

.field private xPUTimestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3653
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    .line 3654
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 2811
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const-wide/16 v0, 0x0

    .line 2812
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPUTimestamp_:J

    const/4 v0, 0x0

    .line 2813
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatX_:F

    .line 2814
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatY_:F

    .line 2815
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatZ_:F

    .line 2816
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatTheta_:F

    .line 2817
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatS_:F

    .line 2818
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatRoll_:F

    .line 2819
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatPitch_:F

    .line 2820
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatCurSpd_:F

    return-void
.end method

.method static synthetic access$3900()Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;
    .locals 1

    .line 2806
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    return-object v0
.end method

.method static synthetic access$4000(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;J)V
    .locals 0

    .line 2806
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->setXPUTimestamp(J)V

    return-void
.end method

.method static synthetic access$4100(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;)V
    .locals 0

    .line 2806
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->clearXPUTimestamp()V

    return-void
.end method

.method static synthetic access$4200(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;F)V
    .locals 0

    .line 2806
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->setXPULocatX(F)V

    return-void
.end method

.method static synthetic access$4300(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;)V
    .locals 0

    .line 2806
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->clearXPULocatX()V

    return-void
.end method

.method static synthetic access$4400(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;F)V
    .locals 0

    .line 2806
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->setXPULocatY(F)V

    return-void
.end method

.method static synthetic access$4500(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;)V
    .locals 0

    .line 2806
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->clearXPULocatY()V

    return-void
.end method

.method static synthetic access$4600(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;F)V
    .locals 0

    .line 2806
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->setXPULocatZ(F)V

    return-void
.end method

.method static synthetic access$4700(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;)V
    .locals 0

    .line 2806
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->clearXPULocatZ()V

    return-void
.end method

.method static synthetic access$4800(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;F)V
    .locals 0

    .line 2806
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->setXPULocatTheta(F)V

    return-void
.end method

.method static synthetic access$4900(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;)V
    .locals 0

    .line 2806
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->clearXPULocatTheta()V

    return-void
.end method

.method static synthetic access$5000(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;F)V
    .locals 0

    .line 2806
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->setXPULocatS(F)V

    return-void
.end method

.method static synthetic access$5100(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;)V
    .locals 0

    .line 2806
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->clearXPULocatS()V

    return-void
.end method

.method static synthetic access$5200(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;F)V
    .locals 0

    .line 2806
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->setXPULocatRoll(F)V

    return-void
.end method

.method static synthetic access$5300(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;)V
    .locals 0

    .line 2806
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->clearXPULocatRoll()V

    return-void
.end method

.method static synthetic access$5400(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;F)V
    .locals 0

    .line 2806
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->setXPULocatPitch(F)V

    return-void
.end method

.method static synthetic access$5500(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;)V
    .locals 0

    .line 2806
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->clearXPULocatPitch()V

    return-void
.end method

.method static synthetic access$5600(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;F)V
    .locals 0

    .line 2806
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->setXPULocatCurSpd(F)V

    return-void
.end method

.method static synthetic access$5700(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;)V
    .locals 0

    .line 2806
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->clearXPULocatCurSpd()V

    return-void
.end method

.method private clearXPULocatCurSpd()V
    .locals 1

    const/4 v0, 0x0

    .line 3086
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatCurSpd_:F

    return-void
.end method

.method private clearXPULocatPitch()V
    .locals 1

    const/4 v0, 0x0

    .line 3051
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatPitch_:F

    return-void
.end method

.method private clearXPULocatRoll()V
    .locals 1

    const/4 v0, 0x0

    .line 3016
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatRoll_:F

    return-void
.end method

.method private clearXPULocatS()V
    .locals 1

    const/4 v0, 0x0

    .line 2981
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatS_:F

    return-void
.end method

.method private clearXPULocatTheta()V
    .locals 1

    const/4 v0, 0x0

    .line 2946
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatTheta_:F

    return-void
.end method

.method private clearXPULocatX()V
    .locals 1

    const/4 v0, 0x0

    .line 2865
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatX_:F

    return-void
.end method

.method private clearXPULocatY()V
    .locals 1

    const/4 v0, 0x0

    .line 2888
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatY_:F

    return-void
.end method

.method private clearXPULocatZ()V
    .locals 1

    const/4 v0, 0x0

    .line 2911
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatZ_:F

    return-void
.end method

.method private clearXPUTimestamp()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2842
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPUTimestamp_:J

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;
    .locals 1

    .line 3658
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;
    .locals 1

    .line 3227
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;)Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;
    .locals 1

    .line 3230
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3204
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3210
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3168
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3175
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3215
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3222
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3192
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3199
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3180
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3187
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;",
            ">;"
        }
    .end annotation

    .line 3664
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setXPULocatCurSpd(F)V
    .locals 0

    .line 3075
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatCurSpd_:F

    return-void
.end method

.method private setXPULocatPitch(F)V
    .locals 0

    .line 3040
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatPitch_:F

    return-void
.end method

.method private setXPULocatRoll(F)V
    .locals 0

    .line 3005
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatRoll_:F

    return-void
.end method

.method private setXPULocatS(F)V
    .locals 0

    .line 2970
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatS_:F

    return-void
.end method

.method private setXPULocatTheta(F)V
    .locals 0

    .line 2935
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatTheta_:F

    return-void
.end method

.method private setXPULocatX(F)V
    .locals 0

    .line 2858
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatX_:F

    return-void
.end method

.method private setXPULocatY(F)V
    .locals 0

    .line 2881
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatY_:F

    return-void
.end method

.method private setXPULocatZ(F)V
    .locals 0

    .line 2904
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatZ_:F

    return-void
.end method

.method private setXPUTimestamp(J)V
    .locals 0

    .line 2835
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPUTimestamp_:J

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 3519
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 3646
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 3637
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    monitor-enter p1

    .line 3638
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 3639
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 3641
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 3643
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 3559
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 3561
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_d

    .line 3566
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_c

    const/16 p3, 0x8

    if-eq p1, p3, :cond_b

    const/16 p3, 0x15

    if-eq p1, p3, :cond_a

    const/16 p3, 0x1d

    if-eq p1, p3, :cond_9

    const/16 p3, 0x25

    if-eq p1, p3, :cond_8

    const/16 p3, 0x2d

    if-eq p1, p3, :cond_7

    const/16 p3, 0x35

    if-eq p1, p3, :cond_6

    const/16 p3, 0x3d

    if-eq p1, p3, :cond_5

    const/16 p3, 0x45

    if-eq p1, p3, :cond_4

    const/16 p3, 0x4d

    if-eq p1, p3, :cond_3

    .line 3572
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 3619
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatCurSpd_:F

    goto :goto_1

    .line 3614
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatPitch_:F

    goto :goto_1

    .line 3609
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatRoll_:F

    goto :goto_1

    .line 3604
    :cond_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatS_:F

    goto :goto_1

    .line 3599
    :cond_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatTheta_:F

    goto :goto_1

    .line 3594
    :cond_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatZ_:F

    goto :goto_1

    .line 3589
    :cond_9
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatY_:F

    goto :goto_1

    .line 3584
    :cond_a
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatX_:F

    goto :goto_1

    .line 3579
    :cond_b
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPUTimestamp_:J
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_c
    :goto_2
    move v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 3627
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 3629
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 3625
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3630
    :goto_3
    throw p1

    .line 3634
    :cond_d
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    return-object p1

    .line 3533
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 3534
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    .line 3535
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPUTimestamp_:J

    const-wide/16 v3, 0x0

    cmp-long p1, v5, v3

    if-eqz p1, :cond_e

    move p1, v2

    goto :goto_4

    :cond_e
    move p1, v1

    :goto_4
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPUTimestamp_:J

    cmp-long v0, v8, v3

    if-eqz v0, :cond_f

    move v7, v2

    goto :goto_5

    :cond_f
    move v7, v1

    :goto_5
    move-object v3, p2

    move v4, p1

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPUTimestamp_:J

    .line 3537
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatX_:F

    const/4 v0, 0x0

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_10

    move v3, v2

    goto :goto_6

    :cond_10
    move v3, v1

    :goto_6
    iget v4, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatX_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_11

    move v5, v2

    goto :goto_7

    :cond_11
    move v5, v1

    :goto_7
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatX_:F

    .line 3539
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatY_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_12

    move v3, v2

    goto :goto_8

    :cond_12
    move v3, v1

    :goto_8
    iget v4, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatY_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_13

    move v5, v2

    goto :goto_9

    :cond_13
    move v5, v1

    :goto_9
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatY_:F

    .line 3541
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatZ_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_14

    move v3, v2

    goto :goto_a

    :cond_14
    move v3, v1

    :goto_a
    iget v4, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatZ_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_15

    move v5, v2

    goto :goto_b

    :cond_15
    move v5, v1

    :goto_b
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatZ_:F

    .line 3543
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatTheta_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_16

    move v3, v2

    goto :goto_c

    :cond_16
    move v3, v1

    :goto_c
    iget v4, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatTheta_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_17

    move v5, v2

    goto :goto_d

    :cond_17
    move v5, v1

    :goto_d
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatTheta_:F

    .line 3545
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatS_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_18

    move v3, v2

    goto :goto_e

    :cond_18
    move v3, v1

    :goto_e
    iget v4, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatS_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_19

    move v5, v2

    goto :goto_f

    :cond_19
    move v5, v1

    :goto_f
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatS_:F

    .line 3547
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatRoll_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_1a

    move v3, v2

    goto :goto_10

    :cond_1a
    move v3, v1

    :goto_10
    iget v4, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatRoll_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_1b

    move v5, v2

    goto :goto_11

    :cond_1b
    move v5, v1

    :goto_11
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatRoll_:F

    .line 3549
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatPitch_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_1c

    move v3, v2

    goto :goto_12

    :cond_1c
    move v3, v1

    :goto_12
    iget v4, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatPitch_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_1d

    move v5, v2

    goto :goto_13

    :cond_1d
    move v5, v1

    :goto_13
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatPitch_:F

    .line 3551
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatCurSpd_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_1e

    move v3, v2

    goto :goto_14

    :cond_1e
    move v3, v1

    :goto_14
    iget p3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatCurSpd_:F

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_1f

    move v1, v2

    :cond_1f
    invoke-interface {p2, v3, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatCurSpd_:F

    .line 3553
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 3530
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 3524
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    return-object p1

    .line 3521
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getSerializedSize()I
    .locals 5

    .line 3121
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 3125
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPUTimestamp_:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 3127
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3129
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatX_:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    .line 3131
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3133
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatY_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    .line 3135
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3137
    :cond_3
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatZ_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    .line 3139
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3141
    :cond_4
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatTheta_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    .line 3143
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3145
    :cond_5
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatS_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_6

    const/4 v3, 0x6

    .line 3147
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3149
    :cond_6
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatRoll_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_7

    const/4 v3, 0x7

    .line 3151
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3153
    :cond_7
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatPitch_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_8

    const/16 v3, 0x8

    .line 3155
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3157
    :cond_8
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatCurSpd_:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_9

    const/16 v2, 0x9

    .line 3159
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 3161
    :cond_9
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->memoizedSerializedSize:I

    return v0
.end method

.method public getXPULocatCurSpd()F
    .locals 1

    .line 3064
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatCurSpd_:F

    return v0
.end method

.method public getXPULocatPitch()F
    .locals 1

    .line 3029
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatPitch_:F

    return v0
.end method

.method public getXPULocatRoll()F
    .locals 1

    .line 2994
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatRoll_:F

    return v0
.end method

.method public getXPULocatS()F
    .locals 1

    .line 2959
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatS_:F

    return v0
.end method

.method public getXPULocatTheta()F
    .locals 1

    .line 2924
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatTheta_:F

    return v0
.end method

.method public getXPULocatX()F
    .locals 1

    .line 2851
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatX_:F

    return v0
.end method

.method public getXPULocatY()F
    .locals 1

    .line 2874
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatY_:F

    return v0
.end method

.method public getXPULocatZ()F
    .locals 1

    .line 2897
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatZ_:F

    return v0
.end method

.method public getXPUTimestamp()J
    .locals 2

    .line 2828
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPUTimestamp_:J

    return-wide v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3091
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPUTimestamp_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 3092
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 3094
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatX_:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 3095
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 3097
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatY_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 3098
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 3100
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatZ_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    .line 3101
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 3103
    :cond_3
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatTheta_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    .line 3104
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 3106
    :cond_4
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatS_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_5

    const/4 v2, 0x6

    .line 3107
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 3109
    :cond_5
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatRoll_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_6

    const/4 v2, 0x7

    .line 3110
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 3112
    :cond_6
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatPitch_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_7

    const/16 v2, 0x8

    .line 3113
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 3115
    :cond_7
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$VehLocationInfoResp;->xPULocatCurSpd_:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    .line 3116
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    :cond_8
    return-void
.end method

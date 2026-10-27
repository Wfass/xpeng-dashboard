.class public final Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuApEssentialMsg$LocationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Location"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$LocationOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

.field public static final EPSANGLE_FIELD_NUMBER:I = 0x4

.field public static final INDEX_FIELD_NUMBER:I = 0x6

.field public static final ISMAPPOS_FIELD_NUMBER:I = 0x7

.field public static final ODOMETER_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSE_FIELD_NUMBER:I = 0x2

.field public static final PT_FIELD_NUMBER:I = 0x1

.field public static final VELOCITY_FIELD_NUMBER:I = 0x3


# instance fields
.field private epsangle_:F

.field private index_:I

.field private isMapPos_:I

.field private odometer_:F

.field private pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

.field private pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

.field private velocity_:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2533
    new-instance v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    .line 2534
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1819
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 1820
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->velocity_:F

    .line 1821
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->epsangle_:F

    .line 1822
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->odometer_:F

    const/4 v0, 0x0

    .line 1823
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->index_:I

    .line 1824
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->isMapPos_:I

    return-void
.end method

.method static synthetic access$3200()Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;
    .locals 1

    .line 1814
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 0

    .line 1814
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->setPt(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V

    return-void
.end method

.method static synthetic access$3400(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;)V
    .locals 0

    .line 1814
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->setPt(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;)V

    return-void
.end method

.method static synthetic access$3500(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 0

    .line 1814
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->mergePt(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V

    return-void
.end method

.method static synthetic access$3600(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;)V
    .locals 0

    .line 1814
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->clearPt()V

    return-void
.end method

.method static synthetic access$3700(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;)V
    .locals 0

    .line 1814
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->setPose(Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;)V

    return-void
.end method

.method static synthetic access$3800(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;)V
    .locals 0

    .line 1814
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->setPose(Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;)V

    return-void
.end method

.method static synthetic access$3900(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;)V
    .locals 0

    .line 1814
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->mergePose(Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;)V

    return-void
.end method

.method static synthetic access$4000(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;)V
    .locals 0

    .line 1814
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->clearPose()V

    return-void
.end method

.method static synthetic access$4100(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;F)V
    .locals 0

    .line 1814
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->setVelocity(F)V

    return-void
.end method

.method static synthetic access$4200(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;)V
    .locals 0

    .line 1814
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->clearVelocity()V

    return-void
.end method

.method static synthetic access$4300(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;F)V
    .locals 0

    .line 1814
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->setEpsangle(F)V

    return-void
.end method

.method static synthetic access$4400(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;)V
    .locals 0

    .line 1814
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->clearEpsangle()V

    return-void
.end method

.method static synthetic access$4500(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;F)V
    .locals 0

    .line 1814
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->setOdometer(F)V

    return-void
.end method

.method static synthetic access$4600(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;)V
    .locals 0

    .line 1814
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->clearOdometer()V

    return-void
.end method

.method static synthetic access$4700(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;I)V
    .locals 0

    .line 1814
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->setIndex(I)V

    return-void
.end method

.method static synthetic access$4800(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;)V
    .locals 0

    .line 1814
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->clearIndex()V

    return-void
.end method

.method static synthetic access$4900(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;I)V
    .locals 0

    .line 1814
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->setIsMapPos(I)V

    return-void
.end method

.method static synthetic access$5000(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;)V
    .locals 0

    .line 1814
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->clearIsMapPos()V

    return-void
.end method

.method private clearEpsangle()V
    .locals 1

    const/4 v0, 0x0

    .line 1973
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->epsangle_:F

    return-void
.end method

.method private clearIndex()V
    .locals 1

    const/4 v0, 0x0

    .line 2019
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->index_:I

    return-void
.end method

.method private clearIsMapPos()V
    .locals 1

    const/4 v0, 0x0

    .line 2042
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->isMapPos_:I

    return-void
.end method

.method private clearOdometer()V
    .locals 1

    const/4 v0, 0x0

    .line 1996
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->odometer_:F

    return-void
.end method

.method private clearPose()V
    .locals 1

    const/4 v0, 0x0

    .line 1926
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    return-void
.end method

.method private clearPt()V
    .locals 1

    const/4 v0, 0x0

    .line 1874
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-void
.end method

.method private clearVelocity()V
    .locals 1

    const/4 v0, 0x0

    .line 1950
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->velocity_:F

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;
    .locals 1

    .line 2538
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    return-object v0
.end method

.method private mergePose(Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;)V
    .locals 2

    .line 1914
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    if-eqz v0, :cond_0

    .line 1915
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;->getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1916
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    .line 1917
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;->newBuilder(Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    goto :goto_0

    .line 1919
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    :goto_0
    return-void
.end method

.method private mergePt(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 2

    .line 1862
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz v0, :cond_0

    .line 1863
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1864
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    .line 1865
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->newBuilder(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    goto :goto_0

    .line 1867
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;
    .locals 1

    .line 2169
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;
    .locals 1

    .line 2172
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2146
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2152
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2110
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2117
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2157
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2164
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2134
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2141
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2122
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2129
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;",
            ">;"
        }
    .end annotation

    .line 2544
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEpsangle(F)V
    .locals 0

    .line 1966
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->epsangle_:F

    return-void
.end method

.method private setIndex(I)V
    .locals 0

    .line 2012
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->index_:I

    return-void
.end method

.method private setIsMapPos(I)V
    .locals 0

    .line 2035
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->isMapPos_:I

    return-void
.end method

.method private setOdometer(F)V
    .locals 0

    .line 1989
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->odometer_:F

    return-void
.end method

.method private setPose(Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;)V
    .locals 0

    .line 1907
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    return-void
.end method

.method private setPose(Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;)V
    .locals 0

    .line 1897
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1899
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    return-void
.end method

.method private setPt(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;)V
    .locals 0

    .line 1855
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-void
.end method

.method private setPt(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 0

    .line 1845
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1847
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-void
.end method

.method private setVelocity(F)V
    .locals 0

    .line 1943
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->velocity_:F

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 2399
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 2526
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 2517
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    monitor-enter p1

    .line 2518
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 2519
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 2521
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 2523
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 2433
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 2435
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_d

    .line 2440
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_c

    const/16 v3, 0xa

    if-eq p1, v3, :cond_a

    const/16 v3, 0x12

    if-eq p1, v3, :cond_8

    const/16 v3, 0x1d

    if-eq p1, v3, :cond_7

    const/16 v3, 0x25

    if-eq p1, v3, :cond_6

    const/16 v3, 0x2d

    if-eq p1, v3, :cond_5

    const/16 v3, 0x30

    if-eq p1, v3, :cond_4

    const/16 v3, 0x38

    if-eq p1, v3, :cond_3

    .line 2446
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_4

    .line 2499
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->isMapPos_:I

    goto :goto_1

    .line 2494
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->index_:I

    goto :goto_1

    .line 2489
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->odometer_:F

    goto :goto_1

    .line 2484
    :cond_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->epsangle_:F

    goto :goto_1

    .line 2479
    :cond_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->velocity_:F

    goto :goto_1

    .line 2466
    :cond_8
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    if-eqz p1, :cond_9

    .line 2467
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;

    goto :goto_2

    :cond_9
    move-object p1, v0

    .line 2469
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    if-eqz p1, :cond_2

    .line 2471
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 2472
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    goto :goto_1

    .line 2453
    :cond_a
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz p1, :cond_b

    .line 2454
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;

    goto :goto_3

    :cond_b
    move-object p1, v0

    .line 2456
    :goto_3
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz p1, :cond_2

    .line 2458
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 2459
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_c
    :goto_4
    move v1, v2

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 2507
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 2509
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 2505
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2510
    :goto_5
    throw p1

    .line 2514
    :cond_d
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    return-object p1

    .line 2413
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 2414
    check-cast p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    .line 2415
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    .line 2416
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    .line 2417
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->velocity_:F

    const/4 v0, 0x0

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_e

    move v3, v2

    goto :goto_6

    :cond_e
    move v3, v1

    :goto_6
    iget v4, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->velocity_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_f

    move v5, v2

    goto :goto_7

    :cond_f
    move v5, v1

    :goto_7
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->velocity_:F

    .line 2419
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->epsangle_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_10

    move v3, v2

    goto :goto_8

    :cond_10
    move v3, v1

    :goto_8
    iget v4, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->epsangle_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_11

    move v5, v2

    goto :goto_9

    :cond_11
    move v5, v1

    :goto_9
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->epsangle_:F

    .line 2421
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->odometer_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_12

    move v3, v2

    goto :goto_a

    :cond_12
    move v3, v1

    :goto_a
    iget v4, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->odometer_:F

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_13

    move v0, v2

    goto :goto_b

    :cond_13
    move v0, v1

    :goto_b
    invoke-interface {p2, v3, p1, v0, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->odometer_:F

    .line 2423
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->index_:I

    if-eqz p1, :cond_14

    move v0, v2

    goto :goto_c

    :cond_14
    move v0, v1

    :goto_c
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->index_:I

    if-eqz v3, :cond_15

    move v4, v2

    goto :goto_d

    :cond_15
    move v4, v1

    :goto_d
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->index_:I

    .line 2425
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->isMapPos_:I

    if-eqz p1, :cond_16

    move v0, v2

    goto :goto_e

    :cond_16
    move v0, v1

    :goto_e
    iget p3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->isMapPos_:I

    if-eqz p3, :cond_17

    move v1, v2

    :cond_17
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->isMapPos_:I

    .line 2427
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 2410
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;-><init>(Landroid/car/hardware/xpu/XpuApEssentialMsg$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 2404
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    return-object p1

    .line 2401
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;-><init>()V

    return-object p1

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

.method public getEpsangle()F
    .locals 1

    .line 1959
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->epsangle_:F

    return v0
.end method

.method public getIndex()I
    .locals 1

    .line 2005
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->index_:I

    return v0
.end method

.method public getIsMapPos()I
    .locals 1

    .line 2028
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->isMapPos_:I

    return v0
.end method

.method public getOdometer()F
    .locals 1

    .line 1982
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->odometer_:F

    return v0
.end method

.method public getPose()Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;
    .locals 1

    .line 1890
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;->getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPt()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;
    .locals 1

    .line 1838
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 2071
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2075
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 2077
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->getPt()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2079
    :cond_1
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 2081
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->getPose()Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2083
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->velocity_:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    .line 2085
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2087
    :cond_3
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->epsangle_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    .line 2089
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2091
    :cond_4
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->odometer_:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    .line 2093
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2095
    :cond_5
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->index_:I

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 2097
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2099
    :cond_6
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->isMapPos_:I

    if-eqz v1, :cond_7

    const/4 v2, 0x7

    .line 2101
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2103
    :cond_7
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->memoizedSerializedSize:I

    return v0
.end method

.method public getVelocity()F
    .locals 1

    .line 1936
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->velocity_:F

    return v0
.end method

.method public hasPose()Z
    .locals 1

    .line 1884
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPt()Z
    .locals 1

    .line 1832
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2047
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2048
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->getPt()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 2050
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 2051
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->getPose()Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 2053
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->velocity_:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 2054
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 2056
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->epsangle_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    .line 2057
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 2059
    :cond_3
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->odometer_:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    .line 2060
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 2062
    :cond_4
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->index_:I

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 2063
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2065
    :cond_5
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->isMapPos_:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 2066
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_6
    return-void
.end method

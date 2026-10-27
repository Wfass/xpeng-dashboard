.class public final Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ForbiddenInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

.field public static final LINK_INDEX_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEG_INDEX_FIELD_NUMBER:I = 0x3

.field public static final TIME_DESCRIPTION_FIELD_NUMBER:I = 0x5

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final VEHICLE_TYPE_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private linkIndex_:J

.field private segIndex_:J

.field private timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

.field private type_:I

.field private vehicleType_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14305
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    .line 14306
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 13732
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 13733
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->type_:I

    .line 13734
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->vehicleType_:I

    const-wide/16 v0, 0x0

    .line 13735
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->segIndex_:J

    .line 13736
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->linkIndex_:J

    .line 13737
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-void
.end method

.method static synthetic access$30900()Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;
    .locals 1

    .line 13727
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    return-object v0
.end method

.method static synthetic access$31000(Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;I)V
    .locals 0

    .line 13727
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->setType(I)V

    return-void
.end method

.method static synthetic access$31100(Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;)V
    .locals 0

    .line 13727
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->clearType()V

    return-void
.end method

.method static synthetic access$31200(Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;I)V
    .locals 0

    .line 13727
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->setVehicleType(I)V

    return-void
.end method

.method static synthetic access$31300(Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;)V
    .locals 0

    .line 13727
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->clearVehicleType()V

    return-void
.end method

.method static synthetic access$31400(Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;J)V
    .locals 0

    .line 13727
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->setSegIndex(J)V

    return-void
.end method

.method static synthetic access$31500(Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;)V
    .locals 0

    .line 13727
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->clearSegIndex()V

    return-void
.end method

.method static synthetic access$31600(Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;J)V
    .locals 0

    .line 13727
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->setLinkIndex(J)V

    return-void
.end method

.method static synthetic access$31700(Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;)V
    .locals 0

    .line 13727
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->clearLinkIndex()V

    return-void
.end method

.method static synthetic access$31800(Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;II)V
    .locals 0

    .line 13727
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->setTimeDescription(II)V

    return-void
.end method

.method static synthetic access$31900(Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;I)V
    .locals 0

    .line 13727
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->addTimeDescription(I)V

    return-void
.end method

.method static synthetic access$32000(Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 13727
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->addAllTimeDescription(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$32100(Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;)V
    .locals 0

    .line 13727
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->clearTimeDescription()V

    return-void
.end method

.method private addAllTimeDescription(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 13879
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->ensureTimeDescriptionIsMutable()V

    .line 13880
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addTimeDescription(I)V
    .locals 1

    .line 13871
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->ensureTimeDescriptionIsMutable()V

    .line 13872
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private clearLinkIndex()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 13829
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->linkIndex_:J

    return-void
.end method

.method private clearSegIndex()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 13806
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->segIndex_:J

    return-void
.end method

.method private clearTimeDescription()V
    .locals 1

    .line 13887
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-void
.end method

.method private clearType()V
    .locals 1

    const/4 v0, 0x0

    .line 13760
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->type_:I

    return-void
.end method

.method private clearVehicleType()V
    .locals 1

    const/4 v0, 0x0

    .line 13783
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->vehicleType_:I

    return-void
.end method

.method private ensureTimeDescriptionIsMutable()V
    .locals 1

    .line 13854
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13855
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 13856
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;
    .locals 1

    .line 14310
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;
    .locals 1

    .line 14006
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;)Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;
    .locals 1

    .line 14009
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13983
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13989
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13947
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13954
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13994
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14001
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13971
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13978
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13959
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13966
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;",
            ">;"
        }
    .end annotation

    .line 14316
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setLinkIndex(J)V
    .locals 0

    .line 13822
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->linkIndex_:J

    return-void
.end method

.method private setSegIndex(J)V
    .locals 0

    .line 13799
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->segIndex_:J

    return-void
.end method

.method private setTimeDescription(II)V
    .locals 1

    .line 13864
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->ensureTimeDescriptionIsMutable()V

    .line 13865
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setType(I)V
    .locals 0

    .line 13753
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->type_:I

    return-void
.end method

.method private setVehicleType(I)V
    .locals 0

    .line 13776
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->vehicleType_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 14182
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 14298
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 14289
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    monitor-enter p1

    .line 14290
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 14291
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 14293
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 14295
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 14215
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 14217
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_d

    .line 14222
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_c

    const/16 p3, 0x8

    if-eq p1, p3, :cond_b

    const/16 p3, 0x10

    if-eq p1, p3, :cond_a

    const/16 p3, 0x18

    if-eq p1, p3, :cond_9

    const/16 p3, 0x20

    if-eq p1, p3, :cond_8

    const/16 p3, 0x28

    if-eq p1, p3, :cond_6

    const/16 p3, 0x2a

    if-eq p1, p3, :cond_3

    .line 14228
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 14262
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p1

    .line 14263
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p1

    .line 14264
    iget-object p3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p3}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result p3

    if-nez p3, :cond_4

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result p3

    if-lez p3, :cond_4

    .line 14265
    iget-object p3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 14266
    invoke-static {p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p3

    iput-object p3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 14268
    :cond_4
    :goto_2
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result p3

    if-lez p3, :cond_5

    .line 14269
    iget-object p3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    invoke-interface {p3, v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_2

    .line 14271
    :cond_5
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_1

    .line 14254
    :cond_6
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_7

    .line 14255
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 14256
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 14258
    :cond_7
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p3

    invoke-interface {p1, p3}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_1

    .line 14250
    :cond_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->linkIndex_:J

    goto :goto_1

    .line 14245
    :cond_9
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->segIndex_:J

    goto/16 :goto_1

    .line 14240
    :cond_a
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->vehicleType_:I

    goto/16 :goto_1

    .line 14235
    :cond_b
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->type_:I
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_c
    :goto_3
    move v1, v2

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 14279
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 14281
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 14277
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14282
    :goto_4
    throw p1

    .line 14286
    :cond_d
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    return-object p1

    .line 14197
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 14198
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    .line 14199
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->type_:I

    if-eqz p1, :cond_e

    move v0, v2

    goto :goto_5

    :cond_e
    move v0, v1

    :goto_5
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->type_:I

    if-eqz v3, :cond_f

    move v4, v2

    goto :goto_6

    :cond_f
    move v4, v1

    :goto_6
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->type_:I

    .line 14201
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->vehicleType_:I

    if-eqz p1, :cond_10

    move v0, v2

    goto :goto_7

    :cond_10
    move v0, v1

    :goto_7
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->vehicleType_:I

    if-eqz v3, :cond_11

    move v4, v2

    goto :goto_8

    :cond_11
    move v4, v1

    :goto_8
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->vehicleType_:I

    .line 14203
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->segIndex_:J

    const-wide/16 v10, 0x0

    cmp-long p1, v5, v10

    if-eqz p1, :cond_12

    move v4, v2

    goto :goto_9

    :cond_12
    move v4, v1

    :goto_9
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->segIndex_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_13

    move v7, v2

    goto :goto_a

    :cond_13
    move v7, v1

    :goto_a
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->segIndex_:J

    .line 14205
    iget-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->linkIndex_:J

    cmp-long p1, v3, v10

    if-eqz p1, :cond_14

    move p1, v2

    goto :goto_b

    :cond_14
    move p1, v1

    :goto_b
    iget-wide v5, p3, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->linkIndex_:J

    cmp-long v0, v5, v10

    if-eqz v0, :cond_15

    move v7, v2

    goto :goto_c

    :cond_15
    move v7, v1

    :goto_c
    move-object v0, p2

    move v1, p1

    move-wide v2, v3

    move v4, v7

    invoke-interface/range {v0 .. v6}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->linkIndex_:J

    .line 14207
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/android/carsdk/protobuf/Internal$IntList;Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 14208
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_16

    .line 14210
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->bitField0_:I

    :cond_16
    return-object p0

    .line 14194
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V

    return-object p1

    .line 14190
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->makeImmutable()V

    return-object v0

    .line 14187
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    return-object p1

    .line 14184
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;-><init>()V

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

.method public getLinkIndex()J
    .locals 2

    .line 13815
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->linkIndex_:J

    return-wide v0
.end method

.method public getSegIndex()J
    .locals 2

    .line 13792
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->segIndex_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 8

    .line 13911
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 13915
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->type_:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 13917
    invoke-static {v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    .line 13919
    :goto_0
    iget v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->vehicleType_:I

    if-eqz v3, :cond_2

    const/4 v4, 0x2

    .line 13921
    invoke-static {v4, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 13923
    :cond_2
    iget-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->segIndex_:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    const/4 v7, 0x3

    .line 13925
    invoke-static {v7, v3, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v0, v3

    .line 13927
    :cond_3
    iget-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->linkIndex_:J

    cmp-long v5, v3, v5

    if-eqz v5, :cond_4

    const/4 v5, 0x4

    .line 13929
    invoke-static {v5, v3, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v0, v3

    :cond_4
    move v3, v2

    .line 13933
    :goto_1
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v4}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 13934
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 13935
    invoke-interface {v4, v2}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    add-int/2addr v0, v3

    .line 13938
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->getTimeDescriptionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 13940
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->memoizedSerializedSize:I

    return v0
.end method

.method public getTimeDescription(I)I
    .locals 1

    .line 13851
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getTimeDescriptionCount()I
    .locals 1

    .line 13845
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public getTimeDescriptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 13839
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 13746
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->type_:I

    return v0
.end method

.method public getVehicleType()I
    .locals 1

    .line 13769
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->vehicleType_:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13892
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->getSerializedSize()I

    .line 13893
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->type_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 13894
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 13896
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->vehicleType_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 13897
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 13899
    :cond_1
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->segIndex_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    .line 13900
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 13902
    :cond_2
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->linkIndex_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    .line 13903
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_3
    const/4 v0, 0x0

    .line 13905
    :goto_0
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    const/4 v1, 0x5

    .line 13906
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

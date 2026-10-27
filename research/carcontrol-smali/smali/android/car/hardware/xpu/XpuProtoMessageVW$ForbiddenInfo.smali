.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ForbiddenInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

.field public static final LINK_INDEX_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;",
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

    .line 14692
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    .line 14693
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 14119
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 14120
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->type_:I

    .line 14121
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->vehicleType_:I

    const-wide/16 v0, 0x0

    .line 14122
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->segIndex_:J

    .line 14123
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->linkIndex_:J

    .line 14124
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-void
.end method

.method static synthetic access$32200()Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;
    .locals 1

    .line 14114
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    return-object v0
.end method

.method static synthetic access$32300(Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;I)V
    .locals 0

    .line 14114
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->setType(I)V

    return-void
.end method

.method static synthetic access$32400(Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;)V
    .locals 0

    .line 14114
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->clearType()V

    return-void
.end method

.method static synthetic access$32500(Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;I)V
    .locals 0

    .line 14114
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->setVehicleType(I)V

    return-void
.end method

.method static synthetic access$32600(Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;)V
    .locals 0

    .line 14114
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->clearVehicleType()V

    return-void
.end method

.method static synthetic access$32700(Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;J)V
    .locals 0

    .line 14114
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->setSegIndex(J)V

    return-void
.end method

.method static synthetic access$32800(Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;)V
    .locals 0

    .line 14114
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->clearSegIndex()V

    return-void
.end method

.method static synthetic access$32900(Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;J)V
    .locals 0

    .line 14114
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->setLinkIndex(J)V

    return-void
.end method

.method static synthetic access$33000(Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;)V
    .locals 0

    .line 14114
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->clearLinkIndex()V

    return-void
.end method

.method static synthetic access$33100(Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;II)V
    .locals 0

    .line 14114
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->setTimeDescription(II)V

    return-void
.end method

.method static synthetic access$33200(Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;I)V
    .locals 0

    .line 14114
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->addTimeDescription(I)V

    return-void
.end method

.method static synthetic access$33300(Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 14114
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->addAllTimeDescription(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$33400(Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;)V
    .locals 0

    .line 14114
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->clearTimeDescription()V

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

    .line 14266
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->ensureTimeDescriptionIsMutable()V

    .line 14267
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addTimeDescription(I)V
    .locals 1

    .line 14258
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->ensureTimeDescriptionIsMutable()V

    .line 14259
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private clearLinkIndex()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 14216
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->linkIndex_:J

    return-void
.end method

.method private clearSegIndex()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 14193
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->segIndex_:J

    return-void
.end method

.method private clearTimeDescription()V
    .locals 1

    .line 14274
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-void
.end method

.method private clearType()V
    .locals 1

    const/4 v0, 0x0

    .line 14147
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->type_:I

    return-void
.end method

.method private clearVehicleType()V
    .locals 1

    const/4 v0, 0x0

    .line 14170
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->vehicleType_:I

    return-void
.end method

.method private ensureTimeDescriptionIsMutable()V
    .locals 1

    .line 14241
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 14242
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 14243
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;
    .locals 1

    .line 14697
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;
    .locals 1

    .line 14393
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;)Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;
    .locals 1

    .line 14396
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14370
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14376
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14334
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14341
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14381
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14388
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14358
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14365
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14346
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14353
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;",
            ">;"
        }
    .end annotation

    .line 14703
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setLinkIndex(J)V
    .locals 0

    .line 14209
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->linkIndex_:J

    return-void
.end method

.method private setSegIndex(J)V
    .locals 0

    .line 14186
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->segIndex_:J

    return-void
.end method

.method private setTimeDescription(II)V
    .locals 1

    .line 14251
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->ensureTimeDescriptionIsMutable()V

    .line 14252
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setType(I)V
    .locals 0

    .line 14140
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->type_:I

    return-void
.end method

.method private setVehicleType(I)V
    .locals 0

    .line 14163
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->vehicleType_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 14569
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 14685
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 14676
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    monitor-enter p1

    .line 14677
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 14678
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 14680
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 14682
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 14602
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 14604
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_d

    .line 14609
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

    .line 14615
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 14649
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p1

    .line 14650
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p1

    .line 14651
    iget-object p3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p3}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result p3

    if-nez p3, :cond_4

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result p3

    if-lez p3, :cond_4

    .line 14652
    iget-object p3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 14653
    invoke-static {p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p3

    iput-object p3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 14655
    :cond_4
    :goto_2
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result p3

    if-lez p3, :cond_5

    .line 14656
    iget-object p3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    invoke-interface {p3, v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_2

    .line 14658
    :cond_5
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_1

    .line 14641
    :cond_6
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_7

    .line 14642
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 14643
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 14645
    :cond_7
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p3

    invoke-interface {p1, p3}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_1

    .line 14637
    :cond_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->linkIndex_:J

    goto :goto_1

    .line 14632
    :cond_9
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->segIndex_:J

    goto/16 :goto_1

    .line 14627
    :cond_a
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->vehicleType_:I

    goto/16 :goto_1

    .line 14622
    :cond_b
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->type_:I
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

    .line 14666
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 14668
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 14664
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14669
    :goto_4
    throw p1

    .line 14673
    :cond_d
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    return-object p1

    .line 14584
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 14585
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    .line 14586
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->type_:I

    if-eqz p1, :cond_e

    move v0, v2

    goto :goto_5

    :cond_e
    move v0, v1

    :goto_5
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->type_:I

    if-eqz v3, :cond_f

    move v4, v2

    goto :goto_6

    :cond_f
    move v4, v1

    :goto_6
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->type_:I

    .line 14588
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->vehicleType_:I

    if-eqz p1, :cond_10

    move v0, v2

    goto :goto_7

    :cond_10
    move v0, v1

    :goto_7
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->vehicleType_:I

    if-eqz v3, :cond_11

    move v4, v2

    goto :goto_8

    :cond_11
    move v4, v1

    :goto_8
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->vehicleType_:I

    .line 14590
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->segIndex_:J

    const-wide/16 v10, 0x0

    cmp-long p1, v5, v10

    if-eqz p1, :cond_12

    move v4, v2

    goto :goto_9

    :cond_12
    move v4, v1

    :goto_9
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->segIndex_:J

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

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->segIndex_:J

    .line 14592
    iget-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->linkIndex_:J

    cmp-long p1, v3, v10

    if-eqz p1, :cond_14

    move p1, v2

    goto :goto_b

    :cond_14
    move p1, v1

    :goto_b
    iget-wide v5, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->linkIndex_:J

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

    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->linkIndex_:J

    .line 14594
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/android/carsdk/protobuf/Internal$IntList;Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 14595
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_16

    .line 14597
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->bitField0_:I

    :cond_16
    return-object p0

    .line 14581
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V

    return-object p1

    .line 14577
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->makeImmutable()V

    return-object v0

    .line 14574
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    return-object p1

    .line 14571
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;-><init>()V

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

    .line 14202
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->linkIndex_:J

    return-wide v0
.end method

.method public getSegIndex()J
    .locals 2

    .line 14179
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->segIndex_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 8

    .line 14298
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 14302
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->type_:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 14304
    invoke-static {v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    .line 14306
    :goto_0
    iget v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->vehicleType_:I

    if-eqz v3, :cond_2

    const/4 v4, 0x2

    .line 14308
    invoke-static {v4, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 14310
    :cond_2
    iget-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->segIndex_:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    const/4 v7, 0x3

    .line 14312
    invoke-static {v7, v3, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v0, v3

    .line 14314
    :cond_3
    iget-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->linkIndex_:J

    cmp-long v5, v3, v5

    if-eqz v5, :cond_4

    const/4 v5, 0x4

    .line 14316
    invoke-static {v5, v3, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v3

    add-int/2addr v0, v3

    :cond_4
    move v3, v2

    .line 14320
    :goto_1
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v4}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 14321
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 14322
    invoke-interface {v4, v2}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    add-int/2addr v0, v3

    .line 14325
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->getTimeDescriptionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 14327
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->memoizedSerializedSize:I

    return v0
.end method

.method public getTimeDescription(I)I
    .locals 1

    .line 14238
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getTimeDescriptionCount()I
    .locals 1

    .line 14232
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

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

    .line 14226
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 14133
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->type_:I

    return v0
.end method

.method public getVehicleType()I
    .locals 1

    .line 14156
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->vehicleType_:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14279
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->getSerializedSize()I

    .line 14280
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->type_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 14281
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 14283
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->vehicleType_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 14284
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 14286
    :cond_1
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->segIndex_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    .line 14287
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 14289
    :cond_2
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->linkIndex_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    .line 14290
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_3
    const/4 v0, 0x0

    .line 14292
    :goto_0
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    const/4 v1, 0x5

    .line 14293
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->timeDescription_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

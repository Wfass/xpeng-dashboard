.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$CameraOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Camera"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$CameraOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

.field public static final DISTANCE_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSITION_FIELD_NUMBER:I = 0x2

.field public static final SPEED_FIELD_NUMBER:I = 0x4

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private distance_:J

.field private position_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

.field private speed_:I

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15357
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    .line 15358
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 14763
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 14764
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->type_:I

    const-wide/16 v1, 0x0

    .line 14765
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->distance_:J

    .line 14766
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->speed_:I

    return-void
.end method

.method static synthetic access$33600()Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;
    .locals 1

    .line 14758
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    return-object v0
.end method

.method static synthetic access$33700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;I)V
    .locals 0

    .line 14758
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->setType(I)V

    return-void
.end method

.method static synthetic access$33800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)V
    .locals 0

    .line 14758
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->clearType()V

    return-void
.end method

.method static synthetic access$33900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 0

    .line 14758
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->setPosition(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-void
.end method

.method static synthetic access$34000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V
    .locals 0

    .line 14758
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->setPosition(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$34100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 0

    .line 14758
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->mergePosition(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-void
.end method

.method static synthetic access$34200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)V
    .locals 0

    .line 14758
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->clearPosition()V

    return-void
.end method

.method static synthetic access$34300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;J)V
    .locals 0

    .line 14758
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->setDistance(J)V

    return-void
.end method

.method static synthetic access$34400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)V
    .locals 0

    .line 14758
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->clearDistance()V

    return-void
.end method

.method static synthetic access$34500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;I)V
    .locals 0

    .line 14758
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->setSpeed(I)V

    return-void
.end method

.method static synthetic access$34600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)V
    .locals 0

    .line 14758
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->clearSpeed()V

    return-void
.end method

.method private clearDistance()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 14911
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->distance_:J

    return-void
.end method

.method private clearPosition()V
    .locals 1

    const/4 v0, 0x0

    .line 14875
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-void
.end method

.method private clearSpeed()V
    .locals 1

    const/4 v0, 0x0

    .line 14946
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->speed_:I

    return-void
.end method

.method private clearType()V
    .locals 1

    const/4 v0, 0x0

    .line 14800
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->type_:I

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;
    .locals 1

    .line 15362
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    return-object v0
.end method

.method private mergePosition(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 2

    .line 14859
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz v0, :cond_0

    .line 14860
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 14861
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    .line 14862
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    goto :goto_0

    .line 14864
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;
    .locals 1

    .line 15052
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;
    .locals 1

    .line 15055
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15029
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15035
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14993
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15000
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15040
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15047
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15017
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15024
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15005
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15012
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;",
            ">;"
        }
    .end annotation

    .line 15368
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDistance(J)V
    .locals 0

    .line 14900
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->distance_:J

    return-void
.end method

.method private setPosition(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V
    .locals 0

    .line 14848
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-void
.end method

.method private setPosition(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 0

    .line 14834
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14836
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-void
.end method

.method private setSpeed(I)V
    .locals 0

    .line 14935
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->speed_:I

    return-void
.end method

.method private setType(I)V
    .locals 0

    .line 14789
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->type_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 15251
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 15350
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 15341
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    monitor-enter p1

    .line 15342
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 15343
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 15345
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 15347
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 15280
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 15282
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_9

    .line 15287
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_8

    const/16 v3, 0x8

    if-eq p1, v3, :cond_7

    const/16 v3, 0x12

    if-eq p1, v3, :cond_5

    const/16 v3, 0x18

    if-eq p1, v3, :cond_4

    const/16 v3, 0x20

    if-eq p1, v3, :cond_3

    .line 15293
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 15323
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->speed_:I

    goto :goto_1

    .line 15318
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->distance_:J

    goto :goto_1

    .line 15305
    :cond_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz p1, :cond_6

    .line 15306
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;

    goto :goto_2

    :cond_6
    move-object p1, v0

    .line 15308
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz p1, :cond_2

    .line 15310
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 15311
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    goto :goto_1

    .line 15300
    :cond_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->type_:I
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_8
    :goto_3
    move v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 15331
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 15333
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 15329
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15334
    :goto_4
    throw p1

    .line 15338
    :cond_9
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    return-object p1

    .line 15265
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 15266
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    .line 15267
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->type_:I

    if-eqz p1, :cond_a

    move v0, v2

    goto :goto_5

    :cond_a
    move v0, v1

    :goto_5
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->type_:I

    if-eqz v3, :cond_b

    move v4, v2

    goto :goto_6

    :cond_b
    move v4, v1

    :goto_6
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->type_:I

    .line 15269
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    .line 15270
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->distance_:J

    const-wide/16 v3, 0x0

    cmp-long p1, v5, v3

    if-eqz p1, :cond_c

    move p1, v2

    goto :goto_7

    :cond_c
    move p1, v1

    :goto_7
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->distance_:J

    cmp-long v0, v8, v3

    if-eqz v0, :cond_d

    move v7, v2

    goto :goto_8

    :cond_d
    move v7, v1

    :goto_8
    move-object v3, p2

    move v4, p1

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->distance_:J

    .line 15272
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->speed_:I

    if-eqz p1, :cond_e

    move v0, v2

    goto :goto_9

    :cond_e
    move v0, v1

    :goto_9
    iget p3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->speed_:I

    if-eqz p3, :cond_f

    move v1, v2

    :cond_f
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->speed_:I

    .line 15274
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 15262
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 15256
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    return-object p1

    .line 15253
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;-><init>()V

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

.method public getDistance()J
    .locals 2

    .line 14889
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->distance_:J

    return-wide v0
.end method

.method public getPosition()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
    .locals 1

    .line 14823
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 14966
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 14970
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->type_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 14972
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14974
    :cond_1
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 14976
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->getPosition()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14978
    :cond_2
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->distance_:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    .line 14980
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14982
    :cond_3
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->speed_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 14984
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14986
    :cond_4
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->memoizedSerializedSize:I

    return v0
.end method

.method public getSpeed()I
    .locals 1

    .line 14924
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->speed_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 14778
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->type_:I

    return v0
.end method

.method public hasPosition()Z
    .locals 1

    .line 14813
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14951
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->type_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 14952
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 14954
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 14955
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->getPosition()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 14957
    :cond_1
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->distance_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 14958
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 14960
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->speed_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 14961
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_3
    return-void
.end method

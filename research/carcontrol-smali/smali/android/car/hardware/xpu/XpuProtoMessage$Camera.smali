.class public final Landroid/car/hardware/xpu/XpuProtoMessage$Camera;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$CameraOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Camera"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$Camera;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$CameraOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

.field public static final DISTANCE_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Camera;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSITION_FIELD_NUMBER:I = 0x2

.field public static final SPEED_FIELD_NUMBER:I = 0x4

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private distance_:J

.field private position_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

.field private speed_:I

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14830
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    .line 14831
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 14356
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 14357
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->type_:I

    const-wide/16 v1, 0x0

    .line 14358
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->distance_:J

    .line 14359
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->speed_:I

    return-void
.end method

.method static synthetic access$32300()Landroid/car/hardware/xpu/XpuProtoMessage$Camera;
    .locals 1

    .line 14351
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    return-object v0
.end method

.method static synthetic access$32400(Landroid/car/hardware/xpu/XpuProtoMessage$Camera;I)V
    .locals 0

    .line 14351
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->setType(I)V

    return-void
.end method

.method static synthetic access$32500(Landroid/car/hardware/xpu/XpuProtoMessage$Camera;)V
    .locals 0

    .line 14351
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->clearType()V

    return-void
.end method

.method static synthetic access$32600(Landroid/car/hardware/xpu/XpuProtoMessage$Camera;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 14351
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->setPosition(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-void
.end method

.method static synthetic access$32700(Landroid/car/hardware/xpu/XpuProtoMessage$Camera;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 0

    .line 14351
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->setPosition(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$32800(Landroid/car/hardware/xpu/XpuProtoMessage$Camera;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 14351
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->mergePosition(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-void
.end method

.method static synthetic access$32900(Landroid/car/hardware/xpu/XpuProtoMessage$Camera;)V
    .locals 0

    .line 14351
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->clearPosition()V

    return-void
.end method

.method static synthetic access$33000(Landroid/car/hardware/xpu/XpuProtoMessage$Camera;J)V
    .locals 0

    .line 14351
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->setDistance(J)V

    return-void
.end method

.method static synthetic access$33100(Landroid/car/hardware/xpu/XpuProtoMessage$Camera;)V
    .locals 0

    .line 14351
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->clearDistance()V

    return-void
.end method

.method static synthetic access$33200(Landroid/car/hardware/xpu/XpuProtoMessage$Camera;I)V
    .locals 0

    .line 14351
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->setSpeed(I)V

    return-void
.end method

.method static synthetic access$33300(Landroid/car/hardware/xpu/XpuProtoMessage$Camera;)V
    .locals 0

    .line 14351
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->clearSpeed()V

    return-void
.end method

.method private clearDistance()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 14456
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->distance_:J

    return-void
.end method

.method private clearPosition()V
    .locals 1

    const/4 v0, 0x0

    .line 14432
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    return-void
.end method

.method private clearSpeed()V
    .locals 1

    const/4 v0, 0x0

    .line 14479
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->speed_:I

    return-void
.end method

.method private clearType()V
    .locals 1

    const/4 v0, 0x0

    .line 14381
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->type_:I

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$Camera;
    .locals 1

    .line 14835
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    return-object v0
.end method

.method private mergePosition(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 2

    .line 14420
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v0, :cond_0

    .line 14421
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 14422
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    .line 14423
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    goto :goto_0

    .line 14425
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;
    .locals 1

    .line 14585
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$Camera;)Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;
    .locals 1

    .line 14588
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$Camera;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14562
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$Camera;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14568
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessage$Camera;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14526
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$Camera;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14533
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$Camera;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14573
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$Camera;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14580
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$Camera;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14550
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$Camera;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14557
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessage$Camera;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14538
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$Camera;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14545
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Camera;",
            ">;"
        }
    .end annotation

    .line 14841
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDistance(J)V
    .locals 0

    .line 14449
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->distance_:J

    return-void
.end method

.method private setPosition(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 0

    .line 14413
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    return-void
.end method

.method private setPosition(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 14403
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14405
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    return-void
.end method

.method private setSpeed(I)V
    .locals 0

    .line 14472
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->speed_:I

    return-void
.end method

.method private setType(I)V
    .locals 0

    .line 14374
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->type_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 14724
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 14823
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 14814
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    monitor-enter p1

    .line 14815
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 14816
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 14818
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 14820
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 14753
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 14755
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_9

    .line 14760
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

    .line 14766
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 14796
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->speed_:I

    goto :goto_1

    .line 14791
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->distance_:J

    goto :goto_1

    .line 14778
    :cond_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz p1, :cond_6

    .line 14779
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;

    goto :goto_2

    :cond_6
    move-object p1, v0

    .line 14781
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz p1, :cond_2

    .line 14783
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 14784
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    goto :goto_1

    .line 14773
    :cond_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->type_:I
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

    .line 14804
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 14806
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 14802
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14807
    :goto_4
    throw p1

    .line 14811
    :cond_9
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    return-object p1

    .line 14738
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 14739
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    .line 14740
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->type_:I

    if-eqz p1, :cond_a

    move v0, v2

    goto :goto_5

    :cond_a
    move v0, v1

    :goto_5
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->type_:I

    if-eqz v3, :cond_b

    move v4, v2

    goto :goto_6

    :cond_b
    move v4, v1

    :goto_6
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->type_:I

    .line 14742
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    .line 14743
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->distance_:J

    const-wide/16 v3, 0x0

    cmp-long p1, v5, v3

    if-eqz p1, :cond_c

    move p1, v2

    goto :goto_7

    :cond_c
    move p1, v1

    :goto_7
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->distance_:J

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

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->distance_:J

    .line 14745
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->speed_:I

    if-eqz p1, :cond_e

    move v0, v2

    goto :goto_9

    :cond_e
    move v0, v1

    :goto_9
    iget p3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->speed_:I

    if-eqz p3, :cond_f

    move v1, v2

    :cond_f
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->speed_:I

    .line 14747
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 14735
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 14729
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    return-object p1

    .line 14726
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;-><init>()V

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

    .line 14442
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->distance_:J

    return-wide v0
.end method

.method public getPosition()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
    .locals 1

    .line 14396
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 14499
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 14503
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->type_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 14505
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14507
    :cond_1
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 14509
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->getPosition()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14511
    :cond_2
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->distance_:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    .line 14513
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14515
    :cond_3
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->speed_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 14517
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14519
    :cond_4
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->memoizedSerializedSize:I

    return v0
.end method

.method public getSpeed()I
    .locals 1

    .line 14465
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->speed_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 14367
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->type_:I

    return v0
.end method

.method public hasPosition()Z
    .locals 1

    .line 14390
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

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

    .line 14484
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->type_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 14485
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 14487
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->position_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 14488
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->getPosition()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 14490
    :cond_1
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->distance_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 14491
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 14493
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->speed_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 14494
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_3
    return-void
.end method

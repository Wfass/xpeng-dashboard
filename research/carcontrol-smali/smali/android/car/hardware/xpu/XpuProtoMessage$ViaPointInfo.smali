.class public final Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViaPointInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

.field public static final DIRECTION_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROJECTIVE_FIELD_NUMBER:I = 0x2

.field public static final SHOW_FIELD_NUMBER:I = 0x1


# instance fields
.field private direction_:I

.field private projective_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

.field private show_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15350
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    .line 15351
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 14880
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 14881
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->direction_:I

    return-void
.end method

.method static synthetic access$33500()Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;
    .locals 1

    .line 14875
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    return-object v0
.end method

.method static synthetic access$33600(Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 14875
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->setShow(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-void
.end method

.method static synthetic access$33700(Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 0

    .line 14875
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->setShow(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$33800(Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 14875
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->mergeShow(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-void
.end method

.method static synthetic access$33900(Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;)V
    .locals 0

    .line 14875
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->clearShow()V

    return-void
.end method

.method static synthetic access$34000(Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 14875
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->setProjective(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-void
.end method

.method static synthetic access$34100(Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 0

    .line 14875
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->setProjective(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$34200(Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 14875
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->mergeProjective(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-void
.end method

.method static synthetic access$34300(Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;)V
    .locals 0

    .line 14875
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->clearProjective()V

    return-void
.end method

.method static synthetic access$34400(Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;I)V
    .locals 0

    .line 14875
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->setDirection(I)V

    return-void
.end method

.method static synthetic access$34500(Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;)V
    .locals 0

    .line 14875
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->clearDirection()V

    return-void
.end method

.method private clearDirection()V
    .locals 1

    const/4 v0, 0x0

    .line 15007
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->direction_:I

    return-void
.end method

.method private clearProjective()V
    .locals 1

    const/4 v0, 0x0

    .line 14983
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    return-void
.end method

.method private clearShow()V
    .locals 1

    const/4 v0, 0x0

    .line 14931
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;
    .locals 1

    .line 15355
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    return-object v0
.end method

.method private mergeProjective(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 2

    .line 14971
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v0, :cond_0

    .line 14972
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 14973
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    .line 14974
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    goto :goto_0

    .line 14976
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    :goto_0
    return-void
.end method

.method private mergeShow(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 2

    .line 14919
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v0, :cond_0

    .line 14920
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 14921
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    .line 14922
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    goto :goto_0

    .line 14924
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;
    .locals 1

    .line 15106
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;)Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;
    .locals 1

    .line 15109
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15083
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15089
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15047
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15054
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15094
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15101
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15071
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15078
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15059
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15066
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;",
            ">;"
        }
    .end annotation

    .line 15361
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDirection(I)V
    .locals 0

    .line 15000
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->direction_:I

    return-void
.end method

.method private setProjective(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 0

    .line 14964
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    return-void
.end method

.method private setProjective(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 14954
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14956
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    return-void
.end method

.method private setShow(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 0

    .line 14912
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    return-void
.end method

.method private setShow(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 14902
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14904
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 15244
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 15343
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 15334
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    monitor-enter p1

    .line 15335
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 15336
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 15338
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 15340
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 15270
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 15272
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v0, :cond_9

    .line 15277
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_8

    const/16 v3, 0xa

    if-eq p1, v3, :cond_6

    const/16 v3, 0x12

    if-eq p1, v3, :cond_4

    const/16 v3, 0x18

    if-eq p1, v3, :cond_3

    .line 15283
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_4

    .line 15316
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->direction_:I

    goto :goto_1

    .line 15303
    :cond_4
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz p1, :cond_5

    .line 15304
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;

    goto :goto_2

    :cond_5
    move-object p1, v2

    .line 15306
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz p1, :cond_2

    .line 15308
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 15309
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    goto :goto_1

    .line 15290
    :cond_6
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz p1, :cond_7

    .line 15291
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;

    goto :goto_3

    :cond_7
    move-object p1, v2

    .line 15293
    :goto_3
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz p1, :cond_2

    .line 15295
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 15296
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_8
    :goto_4
    move v0, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 15324
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 15326
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 15322
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15327
    :goto_5
    throw p1

    .line 15331
    :cond_9
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    return-object p1

    .line 15258
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 15259
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    .line 15260
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iget-object v2, p3, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    invoke-interface {p2, p1, v2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    .line 15261
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iget-object v2, p3, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    invoke-interface {p2, p1, v2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    .line 15262
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->direction_:I

    if-eqz p1, :cond_a

    move v2, v1

    goto :goto_6

    :cond_a
    move v2, v0

    :goto_6
    iget p3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->direction_:I

    if-eqz p3, :cond_b

    move v0, v1

    :cond_b
    invoke-interface {p2, v2, p1, v0, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->direction_:I

    .line 15264
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 15255
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;

    invoke-direct {p1, v2}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V

    return-object p1

    :pswitch_5
    return-object v2

    .line 15249
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    return-object p1

    .line 15246
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;-><init>()V

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

.method public getDirection()I
    .locals 1

    .line 14993
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->direction_:I

    return v0
.end method

.method public getProjective()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
    .locals 1

    .line 14947
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 15024
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 15028
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 15030
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->getShow()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15032
    :cond_1
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 15034
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->getProjective()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15036
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->direction_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 15038
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15040
    :cond_3
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->memoizedSerializedSize:I

    return v0
.end method

.method public getShow()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
    .locals 1

    .line 14895
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasProjective()Z
    .locals 1

    .line 14941
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasShow()Z
    .locals 1

    .line 14889
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15012
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 15013
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->getShow()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 15015
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 15016
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->getProjective()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 15018
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->direction_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 15019
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_2
    return-void
.end method

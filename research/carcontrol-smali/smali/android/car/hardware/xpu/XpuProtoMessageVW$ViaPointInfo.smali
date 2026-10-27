.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViaPointInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

.field public static final DIRECTION_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROJECTIVE_FIELD_NUMBER:I = 0x2

.field public static final SHOW_FIELD_NUMBER:I = 0x1


# instance fields
.field private direction_:I

.field private projective_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

.field private show_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15877
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    .line 15878
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 15407
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 15408
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->direction_:I

    return-void
.end method

.method static synthetic access$34800()Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;
    .locals 1

    .line 15402
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    return-object v0
.end method

.method static synthetic access$34900(Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 0

    .line 15402
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->setShow(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-void
.end method

.method static synthetic access$35000(Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V
    .locals 0

    .line 15402
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->setShow(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$35100(Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 0

    .line 15402
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->mergeShow(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-void
.end method

.method static synthetic access$35200(Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;)V
    .locals 0

    .line 15402
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->clearShow()V

    return-void
.end method

.method static synthetic access$35300(Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 0

    .line 15402
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->setProjective(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-void
.end method

.method static synthetic access$35400(Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V
    .locals 0

    .line 15402
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->setProjective(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$35500(Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 0

    .line 15402
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->mergeProjective(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-void
.end method

.method static synthetic access$35600(Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;)V
    .locals 0

    .line 15402
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->clearProjective()V

    return-void
.end method

.method static synthetic access$35700(Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;I)V
    .locals 0

    .line 15402
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->setDirection(I)V

    return-void
.end method

.method static synthetic access$35800(Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;)V
    .locals 0

    .line 15402
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->clearDirection()V

    return-void
.end method

.method private clearDirection()V
    .locals 1

    const/4 v0, 0x0

    .line 15534
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->direction_:I

    return-void
.end method

.method private clearProjective()V
    .locals 1

    const/4 v0, 0x0

    .line 15510
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-void
.end method

.method private clearShow()V
    .locals 1

    const/4 v0, 0x0

    .line 15458
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;
    .locals 1

    .line 15882
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    return-object v0
.end method

.method private mergeProjective(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 2

    .line 15498
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz v0, :cond_0

    .line 15499
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 15500
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    .line 15501
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    goto :goto_0

    .line 15503
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    :goto_0
    return-void
.end method

.method private mergeShow(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 2

    .line 15446
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz v0, :cond_0

    .line 15447
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 15448
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    .line 15449
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    goto :goto_0

    .line 15451
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;
    .locals 1

    .line 15633
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;)Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;
    .locals 1

    .line 15636
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15610
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15616
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15574
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15581
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15621
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15628
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15598
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15605
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15586
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15593
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;",
            ">;"
        }
    .end annotation

    .line 15888
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDirection(I)V
    .locals 0

    .line 15527
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->direction_:I

    return-void
.end method

.method private setProjective(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V
    .locals 0

    .line 15491
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-void
.end method

.method private setProjective(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 0

    .line 15481
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15483
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-void
.end method

.method private setShow(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V
    .locals 0

    .line 15439
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-void
.end method

.method private setShow(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 0

    .line 15429
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15431
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 15771
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 15870
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 15861
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    monitor-enter p1

    .line 15862
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 15863
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 15865
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 15867
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 15797
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 15799
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v0, :cond_9

    .line 15804
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

    .line 15810
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_4

    .line 15843
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->direction_:I

    goto :goto_1

    .line 15830
    :cond_4
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz p1, :cond_5

    .line 15831
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;

    goto :goto_2

    :cond_5
    move-object p1, v2

    .line 15833
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz p1, :cond_2

    .line 15835
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 15836
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    goto :goto_1

    .line 15817
    :cond_6
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz p1, :cond_7

    .line 15818
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;

    goto :goto_3

    :cond_7
    move-object p1, v2

    .line 15820
    :goto_3
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz p1, :cond_2

    .line 15822
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 15823
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
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

    .line 15851
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 15853
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 15849
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15854
    :goto_5
    throw p1

    .line 15858
    :cond_9
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    return-object p1

    .line 15785
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 15786
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    .line 15787
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iget-object v2, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-interface {p2, p1, v2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    .line 15788
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iget-object v2, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-interface {p2, p1, v2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    .line 15789
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->direction_:I

    if-eqz p1, :cond_a

    move v2, v1

    goto :goto_6

    :cond_a
    move v2, v0

    :goto_6
    iget p3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->direction_:I

    if-eqz p3, :cond_b

    move v0, v1

    :cond_b
    invoke-interface {p2, v2, p1, v0, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->direction_:I

    .line 15791
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 15782
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;

    invoke-direct {p1, v2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V

    return-object p1

    :pswitch_5
    return-object v2

    .line 15776
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    return-object p1

    .line 15773
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;-><init>()V

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

    .line 15520
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->direction_:I

    return v0
.end method

.method public getProjective()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
    .locals 1

    .line 15474
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 15551
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 15555
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 15557
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->getShow()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15559
    :cond_1
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 15561
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->getProjective()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15563
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->direction_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 15565
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15567
    :cond_3
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->memoizedSerializedSize:I

    return v0
.end method

.method public getShow()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
    .locals 1

    .line 15422
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasProjective()Z
    .locals 1

    .line 15468
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

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

    .line 15416
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

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

    .line 15539
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->show_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 15540
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->getShow()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 15542
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->projective_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 15543
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->getProjective()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 15545
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->direction_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 15546
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_2
    return-void
.end method

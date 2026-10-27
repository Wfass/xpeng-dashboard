.class public final Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "LocParallelRoadInfoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/LocParallelRoadInfoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XPURoadConditionChange"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;",
        "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChangeOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

.field public static final FLAG_FIELD_NUMBER:I = 0x3

.field public static final HW_FLAG_FIELD_NUMBER:I = 0x4

.field public static final NAVIGATION_ID_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;",
            ">;"
        }
    .end annotation
.end field

.field public static final REFRESH_FLAG_FIELD_NUMBER:I = 0x5

.field public static final REQUEST_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private flag_:I

.field private hwFlag_:I

.field private navigationId_:J

.field private refreshFlag_:I

.field private requestId_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2308
    new-instance v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    invoke-direct {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    .line 2309
    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1658
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 1659
    iput v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->requestId_:I

    const-wide/16 v1, 0x0

    .line 1660
    iput-wide v1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->navigationId_:J

    .line 1661
    iput v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->flag_:I

    .line 1662
    iput v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->hwFlag_:I

    .line 1663
    iput v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->refreshFlag_:I

    return-void
.end method

.method static synthetic access$2900()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;
    .locals 1

    .line 1653
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;I)V
    .locals 0

    .line 1653
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->setRequestId(I)V

    return-void
.end method

.method static synthetic access$3100(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;)V
    .locals 0

    .line 1653
    invoke-direct {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->clearRequestId()V

    return-void
.end method

.method static synthetic access$3200(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;J)V
    .locals 0

    .line 1653
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->setNavigationId(J)V

    return-void
.end method

.method static synthetic access$3300(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;)V
    .locals 0

    .line 1653
    invoke-direct {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->clearNavigationId()V

    return-void
.end method

.method static synthetic access$3400(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;I)V
    .locals 0

    .line 1653
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->setFlag(I)V

    return-void
.end method

.method static synthetic access$3500(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;)V
    .locals 0

    .line 1653
    invoke-direct {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->clearFlag()V

    return-void
.end method

.method static synthetic access$3600(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;I)V
    .locals 0

    .line 1653
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->setHwFlag(I)V

    return-void
.end method

.method static synthetic access$3700(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;)V
    .locals 0

    .line 1653
    invoke-direct {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->clearHwFlag()V

    return-void
.end method

.method static synthetic access$3800(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;I)V
    .locals 0

    .line 1653
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->setRefreshFlag(I)V

    return-void
.end method

.method static synthetic access$3900(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;)V
    .locals 0

    .line 1653
    invoke-direct {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->clearRefreshFlag()V

    return-void
.end method

.method private clearFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 1776
    iput v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->flag_:I

    return-void
.end method

.method private clearHwFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 1820
    iput v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->hwFlag_:I

    return-void
.end method

.method private clearNavigationId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1732
    iput-wide v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->navigationId_:J

    return-void
.end method

.method private clearRefreshFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 1861
    iput v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->refreshFlag_:I

    return-void
.end method

.method private clearRequestId()V
    .locals 1

    const/4 v0, 0x0

    .line 1697
    iput v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->requestId_:I

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;
    .locals 1

    .line 2313
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;
    .locals 1

    .line 1974
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;
    .locals 1

    .line 1977
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1951
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1957
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1915
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1922
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1962
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1969
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1939
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1946
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1927
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1934
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;",
            ">;"
        }
    .end annotation

    .line 2319
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setFlag(I)V
    .locals 0

    .line 1762
    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->flag_:I

    return-void
.end method

.method private setHwFlag(I)V
    .locals 0

    .line 1806
    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->hwFlag_:I

    return-void
.end method

.method private setNavigationId(J)V
    .locals 0

    .line 1721
    iput-wide p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->navigationId_:J

    return-void
.end method

.method private setRefreshFlag(I)V
    .locals 0

    .line 1848
    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->refreshFlag_:I

    return-void
.end method

.method private setRequestId(I)V
    .locals 0

    .line 1686
    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->requestId_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 2202
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 2301
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 2292
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    monitor-enter p1

    .line 2293
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 2294
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 2296
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 2298
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 2234
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 2236
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_9

    .line 2241
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_8

    const/16 p3, 0x8

    if-eq p1, p3, :cond_7

    const/16 p3, 0x10

    if-eq p1, p3, :cond_6

    const/16 p3, 0x18

    if-eq p1, p3, :cond_5

    const/16 p3, 0x20

    if-eq p1, p3, :cond_4

    const/16 p3, 0x28

    if-eq p1, p3, :cond_3

    .line 2247
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 2274
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->refreshFlag_:I

    goto :goto_1

    .line 2269
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->hwFlag_:I

    goto :goto_1

    .line 2264
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->flag_:I

    goto :goto_1

    .line 2259
    :cond_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->navigationId_:J

    goto :goto_1

    .line 2254
    :cond_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->requestId_:I
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_8
    :goto_2
    move v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 2282
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 2284
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 2280
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2285
    :goto_3
    throw p1

    .line 2289
    :cond_9
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    return-object p1

    .line 2216
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 2217
    check-cast p3, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    .line 2218
    iget p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->requestId_:I

    if-eqz p1, :cond_a

    move v0, v2

    goto :goto_4

    :cond_a
    move v0, v1

    :goto_4
    iget v3, p3, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->requestId_:I

    if-eqz v3, :cond_b

    move v4, v2

    goto :goto_5

    :cond_b
    move v4, v1

    :goto_5
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->requestId_:I

    .line 2220
    iget-wide v5, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->navigationId_:J

    const-wide/16 v3, 0x0

    cmp-long p1, v5, v3

    if-eqz p1, :cond_c

    move p1, v2

    goto :goto_6

    :cond_c
    move p1, v1

    :goto_6
    iget-wide v8, p3, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->navigationId_:J

    cmp-long v0, v8, v3

    if-eqz v0, :cond_d

    move v7, v2

    goto :goto_7

    :cond_d
    move v7, v1

    :goto_7
    move-object v3, p2

    move v4, p1

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->navigationId_:J

    .line 2222
    iget p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->flag_:I

    if-eqz p1, :cond_e

    move v0, v2

    goto :goto_8

    :cond_e
    move v0, v1

    :goto_8
    iget v3, p3, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->flag_:I

    if-eqz v3, :cond_f

    move v4, v2

    goto :goto_9

    :cond_f
    move v4, v1

    :goto_9
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->flag_:I

    .line 2224
    iget p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->hwFlag_:I

    if-eqz p1, :cond_10

    move v0, v2

    goto :goto_a

    :cond_10
    move v0, v1

    :goto_a
    iget v3, p3, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->hwFlag_:I

    if-eqz v3, :cond_11

    move v4, v2

    goto :goto_b

    :cond_11
    move v4, v1

    :goto_b
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->hwFlag_:I

    .line 2226
    iget p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->refreshFlag_:I

    if-eqz p1, :cond_12

    move v0, v2

    goto :goto_c

    :cond_12
    move v0, v1

    :goto_c
    iget p3, p3, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->refreshFlag_:I

    if-eqz p3, :cond_13

    move v1, v2

    :cond_13
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->refreshFlag_:I

    .line 2228
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 2213
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange$Builder;-><init>(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 2207
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    return-object p1

    .line 2204
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;

    invoke-direct {p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;-><init>()V

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

.method public getFlag()I
    .locals 1

    .line 1748
    iget v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->flag_:I

    return v0
.end method

.method public getHwFlag()I
    .locals 1

    .line 1792
    iget v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->hwFlag_:I

    return v0
.end method

.method public getNavigationId()J
    .locals 2

    .line 1710
    iget-wide v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->navigationId_:J

    return-wide v0
.end method

.method public getRefreshFlag()I
    .locals 1

    .line 1835
    iget v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->refreshFlag_:I

    return v0
.end method

.method public getRequestId()I
    .locals 1

    .line 1675
    iget v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->requestId_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 1884
    iget v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1888
    iget v1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->requestId_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 1890
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1892
    :cond_1
    iget-wide v1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->navigationId_:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    .line 1894
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1896
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->flag_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 1898
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1900
    :cond_3
    iget v1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->hwFlag_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 1902
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1904
    :cond_4
    iget v1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->refreshFlag_:I

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 1906
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1908
    :cond_5
    iput v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->memoizedSerializedSize:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1866
    iget v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->requestId_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1867
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1869
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->navigationId_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 1870
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1872
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->flag_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 1873
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1875
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->hwFlag_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 1876
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1878
    :cond_3
    iget v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$XPURoadConditionChange;->refreshFlag_:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 1879
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_4
    return-void
.end method

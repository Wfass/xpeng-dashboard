.class public final Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeightDiffData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffDataOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

.field public static final DIST_TO_LINK_START_FIELD_NUMBER:I = 0x1

.field public static final HEIGHT_DIFF_DIST_FIELD_NUMBER:I = 0x2

.field public static final HEIGHT_DIFF_PARELLEL_FIELD_NUMBER:I = 0x4

.field public static final HEIGHT_DIFF_STRAIGHT_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private distToLinkStart_:I

.field private heightDiffDist_:I

.field private heightDiffParellel_:I

.field private heightDiffStraight_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5106
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    .line 5107
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4689
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 4690
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->distToLinkStart_:I

    .line 4691
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->heightDiffDist_:I

    .line 4692
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->heightDiffStraight_:I

    .line 4693
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->heightDiffParellel_:I

    return-void
.end method

.method static synthetic access$7300()Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;
    .locals 1

    .line 4684
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    return-object v0
.end method

.method static synthetic access$7400(Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;I)V
    .locals 0

    .line 4684
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->setDistToLinkStart(I)V

    return-void
.end method

.method static synthetic access$7500(Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;)V
    .locals 0

    .line 4684
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->clearDistToLinkStart()V

    return-void
.end method

.method static synthetic access$7600(Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;I)V
    .locals 0

    .line 4684
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->setHeightDiffDist(I)V

    return-void
.end method

.method static synthetic access$7700(Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;)V
    .locals 0

    .line 4684
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->clearHeightDiffDist()V

    return-void
.end method

.method static synthetic access$7800(Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;I)V
    .locals 0

    .line 4684
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->setHeightDiffStraight(I)V

    return-void
.end method

.method static synthetic access$7900(Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;)V
    .locals 0

    .line 4684
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->clearHeightDiffStraight()V

    return-void
.end method

.method static synthetic access$8000(Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;I)V
    .locals 0

    .line 4684
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->setHeightDiffParellel(I)V

    return-void
.end method

.method static synthetic access$8100(Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;)V
    .locals 0

    .line 4684
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->clearHeightDiffParellel()V

    return-void
.end method

.method private clearDistToLinkStart()V
    .locals 1

    const/4 v0, 0x0

    .line 4715
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->distToLinkStart_:I

    return-void
.end method

.method private clearHeightDiffDist()V
    .locals 1

    const/4 v0, 0x0

    .line 4738
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->heightDiffDist_:I

    return-void
.end method

.method private clearHeightDiffParellel()V
    .locals 1

    const/4 v0, 0x0

    .line 4784
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->heightDiffParellel_:I

    return-void
.end method

.method private clearHeightDiffStraight()V
    .locals 1

    const/4 v0, 0x0

    .line 4761
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->heightDiffStraight_:I

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;
    .locals 1

    .line 5111
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;
    .locals 1

    .line 4890
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;)Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;
    .locals 1

    .line 4893
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4867
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4873
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4831
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4838
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4878
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4885
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4855
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4862
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4843
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4850
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;",
            ">;"
        }
    .end annotation

    .line 5117
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDistToLinkStart(I)V
    .locals 0

    .line 4708
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->distToLinkStart_:I

    return-void
.end method

.method private setHeightDiffDist(I)V
    .locals 0

    .line 4731
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->heightDiffDist_:I

    return-void
.end method

.method private setHeightDiffParellel(I)V
    .locals 0

    .line 4777
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->heightDiffParellel_:I

    return-void
.end method

.method private setHeightDiffStraight(I)V
    .locals 0

    .line 4754
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->heightDiffStraight_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 5007
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 5099
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 5090
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    monitor-enter p1

    .line 5091
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5092
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 5094
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 5096
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 5037
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 5039
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_8

    .line 5044
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_7

    const/16 p3, 0x8

    if-eq p1, p3, :cond_6

    const/16 p3, 0x10

    if-eq p1, p3, :cond_5

    const/16 p3, 0x18

    if-eq p1, p3, :cond_4

    const/16 p3, 0x20

    if-eq p1, p3, :cond_3

    .line 5050
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 5072
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->heightDiffParellel_:I

    goto :goto_1

    .line 5067
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->heightDiffStraight_:I

    goto :goto_1

    .line 5062
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->heightDiffDist_:I

    goto :goto_1

    .line 5057
    :cond_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->distToLinkStart_:I
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_7
    :goto_2
    move v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 5080
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 5082
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 5078
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5083
    :goto_3
    throw p1

    .line 5087
    :cond_8
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    return-object p1

    .line 5021
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 5022
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    .line 5023
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->distToLinkStart_:I

    if-eqz p1, :cond_9

    move v0, v2

    goto :goto_4

    :cond_9
    move v0, v1

    :goto_4
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->distToLinkStart_:I

    if-eqz v3, :cond_a

    move v4, v2

    goto :goto_5

    :cond_a
    move v4, v1

    :goto_5
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->distToLinkStart_:I

    .line 5025
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->heightDiffDist_:I

    if-eqz p1, :cond_b

    move v0, v2

    goto :goto_6

    :cond_b
    move v0, v1

    :goto_6
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->heightDiffDist_:I

    if-eqz v3, :cond_c

    move v4, v2

    goto :goto_7

    :cond_c
    move v4, v1

    :goto_7
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->heightDiffDist_:I

    .line 5027
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->heightDiffStraight_:I

    if-eqz p1, :cond_d

    move v0, v2

    goto :goto_8

    :cond_d
    move v0, v1

    :goto_8
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->heightDiffStraight_:I

    if-eqz v3, :cond_e

    move v4, v2

    goto :goto_9

    :cond_e
    move v4, v1

    :goto_9
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->heightDiffStraight_:I

    .line 5029
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->heightDiffParellel_:I

    if-eqz p1, :cond_f

    move v0, v2

    goto :goto_a

    :cond_f
    move v0, v1

    :goto_a
    iget p3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->heightDiffParellel_:I

    if-eqz p3, :cond_10

    move v1, v2

    :cond_10
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->heightDiffParellel_:I

    .line 5031
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 5018
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 5012
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    return-object p1

    .line 5009
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;-><init>()V

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

.method public getDistToLinkStart()I
    .locals 1

    .line 4701
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->distToLinkStart_:I

    return v0
.end method

.method public getHeightDiffDist()I
    .locals 1

    .line 4724
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->heightDiffDist_:I

    return v0
.end method

.method public getHeightDiffParellel()I
    .locals 1

    .line 4770
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->heightDiffParellel_:I

    return v0
.end method

.method public getHeightDiffStraight()I
    .locals 1

    .line 4747
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->heightDiffStraight_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 4804
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 4808
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->distToLinkStart_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 4810
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4812
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->heightDiffDist_:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 4814
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4816
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->heightDiffStraight_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 4818
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4820
    :cond_3
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->heightDiffParellel_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 4822
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4824
    :cond_4
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->memoizedSerializedSize:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4789
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->distToLinkStart_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 4790
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4792
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->heightDiffDist_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4793
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4795
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->heightDiffStraight_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 4796
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4798
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->heightDiffParellel_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 4799
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_3
    return-void
.end method

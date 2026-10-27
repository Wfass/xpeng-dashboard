.class public final Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;,
        Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

.field public static final INDEX_FIELD_NUMBER:I = 0x4

.field public static final MSGDATA_FIELD_NUMBER:I = 0x5

.field public static final MSGTYPE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SATAUS_FIELD_NUMBER:I = 0x3

.field public static final VER_FIELD_NUMBER:I = 0x1


# instance fields
.field private index_:I

.field private msgData_:Lcom/android/carsdk/protobuf/ByteString;

.field private msgType_:I

.field private sataus_:I

.field private ver_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14701
    new-instance v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    .line 14702
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 14039
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 14040
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->ver_:Ljava/lang/String;

    const/4 v0, 0x0

    .line 14041
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->msgType_:I

    .line 14042
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->sataus_:I

    .line 14043
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->index_:I

    .line 14044
    sget-object v0, Lcom/android/carsdk/protobuf/ByteString;->EMPTY:Lcom/android/carsdk/protobuf/ByteString;

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->msgData_:Lcom/android/carsdk/protobuf/ByteString;

    return-void
.end method

.method static synthetic access$34600()Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;
    .locals 1

    .line 14034
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    return-object v0
.end method

.method static synthetic access$34700(Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;Ljava/lang/String;)V
    .locals 0

    .line 14034
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->setVer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$34800(Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;)V
    .locals 0

    .line 14034
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->clearVer()V

    return-void
.end method

.method static synthetic access$34900(Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 14034
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->setVerBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$35000(Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;I)V
    .locals 0

    .line 14034
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->setMsgTypeValue(I)V

    return-void
.end method

.method static synthetic access$35100(Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;)V
    .locals 0

    .line 14034
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->setMsgType(Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;)V

    return-void
.end method

.method static synthetic access$35200(Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;)V
    .locals 0

    .line 14034
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->clearMsgType()V

    return-void
.end method

.method static synthetic access$35300(Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;I)V
    .locals 0

    .line 14034
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->setSataus(I)V

    return-void
.end method

.method static synthetic access$35400(Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;)V
    .locals 0

    .line 14034
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->clearSataus()V

    return-void
.end method

.method static synthetic access$35500(Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;I)V
    .locals 0

    .line 14034
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->setIndex(I)V

    return-void
.end method

.method static synthetic access$35600(Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;)V
    .locals 0

    .line 14034
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->clearIndex()V

    return-void
.end method

.method static synthetic access$35700(Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 14034
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->setMsgData(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$35800(Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;)V
    .locals 0

    .line 14034
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->clearMsgData()V

    return-void
.end method

.method private clearIndex()V
    .locals 1

    const/4 v0, 0x0

    .line 14284
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->index_:I

    return-void
.end method

.method private clearMsgData()V
    .locals 1

    .line 14310
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->getMsgData()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->msgData_:Lcom/android/carsdk/protobuf/ByteString;

    return-void
.end method

.method private clearMsgType()V
    .locals 1

    const/4 v0, 0x0

    .line 14238
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->msgType_:I

    return-void
.end method

.method private clearSataus()V
    .locals 1

    const/4 v0, 0x0

    .line 14261
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->sataus_:I

    return-void
.end method

.method private clearVer()V
    .locals 1

    .line 14187
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->getVer()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->ver_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;
    .locals 1

    .line 14706
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;
    .locals 1

    .line 14423
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;)Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;
    .locals 1

    .line 14426
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14400
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14406
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14364
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14371
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14411
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14418
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14388
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14395
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14376
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14383
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;",
            ">;"
        }
    .end annotation

    .line 14712
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setIndex(I)V
    .locals 0

    .line 14277
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->index_:I

    return-void
.end method

.method private setMsgData(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 14300
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14303
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->msgData_:Lcom/android/carsdk/protobuf/ByteString;

    return-void
.end method

.method private setMsgType(Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;)V
    .locals 0

    .line 14228
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14231
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->msgType_:I

    return-void
.end method

.method private setMsgTypeValue(I)V
    .locals 0

    .line 14221
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->msgType_:I

    return-void
.end method

.method private setSataus(I)V
    .locals 0

    .line 14254
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->sataus_:I

    return-void
.end method

.method private setVer(Ljava/lang/String;)V
    .locals 0

    .line 14177
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14180
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->ver_:Ljava/lang/String;

    return-void
.end method

.method private setVerBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 14195
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14197
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 14199
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->ver_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 14594
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 14694
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 14685
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    monitor-enter p1

    .line 14686
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 14687
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 14689
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 14691
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 14625
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 14627
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_9

    .line 14632
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_8

    const/16 p3, 0xa

    if-eq p1, p3, :cond_7

    const/16 p3, 0x10

    if-eq p1, p3, :cond_6

    const/16 p3, 0x18

    if-eq p1, p3, :cond_5

    const/16 p3, 0x20

    if-eq p1, p3, :cond_4

    const/16 p3, 0x2a

    if-eq p1, p3, :cond_3

    .line 14638
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 14667
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readBytes()Lcom/android/carsdk/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->msgData_:Lcom/android/carsdk/protobuf/ByteString;

    goto :goto_1

    .line 14662
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->index_:I

    goto :goto_1

    .line 14657
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->sataus_:I

    goto :goto_1

    .line 14650
    :cond_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 14652
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->msgType_:I

    goto :goto_1

    .line 14644
    :cond_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 14646
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->ver_:Ljava/lang/String;
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

    .line 14675
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 14677
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 14673
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14678
    :goto_3
    throw p1

    .line 14682
    :cond_9
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    return-object p1

    .line 14608
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 14609
    check-cast p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    .line 14610
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->ver_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->ver_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->ver_:Ljava/lang/String;

    .line 14611
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->ver_:Ljava/lang/String;

    .line 14610
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->ver_:Ljava/lang/String;

    .line 14612
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->msgType_:I

    if-eqz p1, :cond_a

    move v0, v2

    goto :goto_4

    :cond_a
    move v0, v1

    :goto_4
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->msgType_:I

    if-eqz v3, :cond_b

    move v4, v2

    goto :goto_5

    :cond_b
    move v4, v1

    :goto_5
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->msgType_:I

    .line 14613
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->sataus_:I

    if-eqz p1, :cond_c

    move v0, v2

    goto :goto_6

    :cond_c
    move v0, v1

    :goto_6
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->sataus_:I

    if-eqz v3, :cond_d

    move v4, v2

    goto :goto_7

    :cond_d
    move v4, v1

    :goto_7
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->sataus_:I

    .line 14615
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->index_:I

    if-eqz p1, :cond_e

    move v0, v2

    goto :goto_8

    :cond_e
    move v0, v1

    :goto_8
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->index_:I

    if-eqz v3, :cond_f

    move v4, v2

    goto :goto_9

    :cond_f
    move v4, v1

    :goto_9
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->index_:I

    .line 14617
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->msgData_:Lcom/android/carsdk/protobuf/ByteString;

    sget-object v0, Lcom/android/carsdk/protobuf/ByteString;->EMPTY:Lcom/android/carsdk/protobuf/ByteString;

    if-eq p1, v0, :cond_10

    move p1, v2

    goto :goto_a

    :cond_10
    move p1, v1

    :goto_a
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->msgData_:Lcom/android/carsdk/protobuf/ByteString;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->msgData_:Lcom/android/carsdk/protobuf/ByteString;

    sget-object v4, Lcom/android/carsdk/protobuf/ByteString;->EMPTY:Lcom/android/carsdk/protobuf/ByteString;

    if-eq v3, v4, :cond_11

    move v1, v2

    :cond_11
    iget-object p3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->msgData_:Lcom/android/carsdk/protobuf/ByteString;

    invoke-interface {p2, p1, v0, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitByteString(ZLcom/android/carsdk/protobuf/ByteString;ZLcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->msgData_:Lcom/android/carsdk/protobuf/ByteString;

    .line 14619
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 14605
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$Builder;-><init>(Landroid/car/hardware/xpu/XpuApEssentialMsg$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 14599
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    return-object p1

    .line 14596
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;-><init>()V

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

.method public getIndex()I
    .locals 1

    .line 14270
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->index_:I

    return v0
.end method

.method public getMsgData()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 14293
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->msgData_:Lcom/android/carsdk/protobuf/ByteString;

    return-object v0
.end method

.method public getMsgType()Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;
    .locals 1

    .line 14214
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->msgType_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;->forNumber(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

    move-result-object v0

    if-nez v0, :cond_0

    .line 14215
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

    :cond_0
    return-object v0
.end method

.method public getMsgTypeValue()I
    .locals 1

    .line 14208
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->msgType_:I

    return v0
.end method

.method public getSataus()I
    .locals 1

    .line 14247
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->sataus_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 14333
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 14337
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->ver_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 14339
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->getVer()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14341
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->msgType_:I

    sget-object v2, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;->Unknown:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

    invoke-virtual {v2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_2

    const/4 v1, 0x2

    .line 14342
    iget v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->msgType_:I

    .line 14343
    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14345
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->sataus_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 14347
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14349
    :cond_3
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->index_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 14351
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14353
    :cond_4
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->msgData_:Lcom/android/carsdk/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/android/carsdk/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x5

    .line 14354
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->msgData_:Lcom/android/carsdk/protobuf/ByteString;

    .line 14355
    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeBytesSize(ILcom/android/carsdk/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14357
    :cond_5
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->memoizedSerializedSize:I

    return v0
.end method

.method public getVer()Ljava/lang/String;
    .locals 1

    .line 14162
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->ver_:Ljava/lang/String;

    return-object v0
.end method

.method public getVerBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 14169
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->ver_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14315
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->ver_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 14316
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->getVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 14318
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->msgType_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;->Unknown:Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo$MsgTypedef;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    .line 14319
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->msgType_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 14321
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->sataus_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 14322
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 14324
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->index_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 14325
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 14327
    :cond_3
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->msgData_:Lcom/android/carsdk/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/android/carsdk/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 14328
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$DisplayInfo;->msgData_:Lcom/android/carsdk/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeBytes(ILcom/android/carsdk/protobuf/ByteString;)V

    :cond_4
    return-void
.end method

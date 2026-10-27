.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsgOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomStatusMsg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsgOrBuilder;"
    }
.end annotation


# static fields
.field public static final CODE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

.field public static final MESSAGE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private code_:I

.field private message_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15913
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    .line 15914
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 15573
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 15574
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->code_:I

    const-string v0, ""

    .line 15575
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->message_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$26400()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;
    .locals 1

    .line 15568
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    return-object v0
.end method

.method static synthetic access$26500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;I)V
    .locals 0

    .line 15568
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->setCode(I)V

    return-void
.end method

.method static synthetic access$26600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;)V
    .locals 0

    .line 15568
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->clearCode()V

    return-void
.end method

.method static synthetic access$26700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;Ljava/lang/String;)V
    .locals 0

    .line 15568
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->setMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$26800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;)V
    .locals 0

    .line 15568
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->clearMessage()V

    return-void
.end method

.method static synthetic access$26900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 15568
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->setMessageBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method private clearCode()V
    .locals 1

    const/4 v0, 0x0

    .line 15597
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->code_:I

    return-void
.end method

.method private clearMessage()V
    .locals 1

    .line 15631
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->message_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;
    .locals 1

    .line 15918
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;
    .locals 1

    .line 15735
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;
    .locals 1

    .line 15738
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15712
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15718
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15676
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15683
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15723
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15730
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15700
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15707
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15688
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 15695
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;",
            ">;"
        }
    .end annotation

    .line 15924
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCode(I)V
    .locals 0

    .line 15590
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->code_:I

    return-void
.end method

.method private setMessage(Ljava/lang/String;)V
    .locals 0

    .line 15621
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15624
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->message_:Ljava/lang/String;

    return-void
.end method

.method private setMessageBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 15639
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15641
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 15643
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->message_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 15827
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 15906
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 15897
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    monitor-enter p1

    .line 15898
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 15899
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 15901
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 15903
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 15853
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 15855
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_6

    .line 15860
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_5

    const/16 p3, 0x8

    if-eq p1, p3, :cond_4

    const/16 p3, 0x12

    if-eq p1, p3, :cond_3

    .line 15866
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 15877
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 15879
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->message_:Ljava/lang/String;

    goto :goto_1

    .line 15873
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->code_:I
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_5
    :goto_2
    move v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 15887
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 15889
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 15885
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15890
    :goto_3
    throw p1

    .line 15894
    :cond_6
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    return-object p1

    .line 15841
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 15842
    check-cast p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    .line 15843
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->code_:I

    if-eqz p1, :cond_7

    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v1

    :goto_4
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->code_:I

    if-eqz v3, :cond_8

    move v1, v2

    :cond_8
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->code_:I

    .line 15845
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->message_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->message_:Ljava/lang/String;

    iget-object v1, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->message_:Ljava/lang/String;

    .line 15846
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    iget-object p3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->message_:Ljava/lang/String;

    .line 15845
    invoke-interface {p2, p1, v0, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->message_:Ljava/lang/String;

    .line 15847
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 15838
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;-><init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 15832
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    return-object p1

    .line 15829
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;-><init>()V

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

.method public getCode()I
    .locals 1

    .line 15583
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->code_:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 15606
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->message_:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 15613
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->message_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 15657
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 15661
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->code_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 15663
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 15665
    :cond_1
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->message_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 15667
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15669
    :cond_2
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->memoizedSerializedSize:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15648
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->code_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 15649
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 15651
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->message_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 15652
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

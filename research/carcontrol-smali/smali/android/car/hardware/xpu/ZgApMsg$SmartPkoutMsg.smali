.class public final Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "ZgApMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsgOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/ZgApMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SmartPkoutMsg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;",
        "Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsgOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

.field public static final ETH_XPU_CDU_AIDRIVE_PKOUTSELDIR_FIELD_NUMBER:I = 0x1

.field public static final ETH_XPU_CDU_APPOINTMENTENDTIME_FIELD_NUMBER:I = 0x3

.field public static final ETH_XPU_CDU_REMOTEPKOUTTIPS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private eTHXPUCDUAIDrivePkOutSelDir_:I

.field private eTHXPUCDUAppointmentEndTime_:I

.field private eTHXPUCDURemotePkOutTips_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 394
    new-instance v0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    invoke-direct {v0}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    .line 395
    invoke-virtual {v0}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->eTHXPUCDUAIDrivePkOutSelDir_:I

    .line 40
    iput v0, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->eTHXPUCDURemotePkOutTips_:I

    .line 41
    iput v0, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->eTHXPUCDUAppointmentEndTime_:I

    return-void
.end method

.method static synthetic access$000()Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;
    .locals 1

    .line 33
    sget-object v0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    return-object v0
.end method

.method static synthetic access$100(Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->setETHXPUCDUAIDrivePkOutSelDir(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->clearETHXPUCDUAIDrivePkOutSelDir()V

    return-void
.end method

.method static synthetic access$300(Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->setETHXPUCDURemotePkOutTips(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->clearETHXPUCDURemotePkOutTips()V

    return-void
.end method

.method static synthetic access$500(Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->setETHXPUCDUAppointmentEndTime(I)V

    return-void
.end method

.method static synthetic access$600(Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->clearETHXPUCDUAppointmentEndTime()V

    return-void
.end method

.method private clearETHXPUCDUAIDrivePkOutSelDir()V
    .locals 1

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->eTHXPUCDUAIDrivePkOutSelDir_:I

    return-void
.end method

.method private clearETHXPUCDUAppointmentEndTime()V
    .locals 1

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->eTHXPUCDUAppointmentEndTime_:I

    return-void
.end method

.method private clearETHXPUCDURemotePkOutTips()V
    .locals 1

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->eTHXPUCDURemotePkOutTips_:I

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;
    .locals 1

    .line 399
    sget-object v0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;
    .locals 1

    .line 208
    sget-object v0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;)Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;
    .locals 1

    .line 211
    sget-object v0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    sget-object v0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    sget-object v0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 149
    sget-object v0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 156
    sget-object v0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    sget-object v0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    sget-object v0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    sget-object v0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    sget-object v0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 161
    sget-object v0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 168
    sget-object v0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;",
            ">;"
        }
    .end annotation

    .line 405
    sget-object v0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setETHXPUCDUAIDrivePkOutSelDir(I)V
    .locals 0

    .line 56
    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->eTHXPUCDUAIDrivePkOutSelDir_:I

    return-void
.end method

.method private setETHXPUCDUAppointmentEndTime(I)V
    .locals 0

    .line 102
    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->eTHXPUCDUAppointmentEndTime_:I

    return-void
.end method

.method private setETHXPUCDURemotePkOutTips(I)V
    .locals 0

    .line 79
    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->eTHXPUCDURemotePkOutTips_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 302
    sget-object v0, Landroid/car/hardware/xpu/ZgApMsg$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 387
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 378
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    monitor-enter p1

    .line 379
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 380
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 382
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 384
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 330
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 332
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_7

    .line 337
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_6

    const/16 p3, 0x8

    if-eq p1, p3, :cond_5

    const/16 p3, 0x10

    if-eq p1, p3, :cond_4

    const/16 p3, 0x18

    if-eq p1, p3, :cond_3

    .line 343
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 360
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->eTHXPUCDUAppointmentEndTime_:I

    goto :goto_1

    .line 355
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->eTHXPUCDURemotePkOutTips_:I

    goto :goto_1

    .line 350
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->eTHXPUCDUAIDrivePkOutSelDir_:I
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_6
    :goto_2
    move v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 368
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 370
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 366
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 371
    :goto_3
    throw p1

    .line 375
    :cond_7
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    return-object p1

    .line 316
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 317
    check-cast p3, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    .line 318
    iget p1, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->eTHXPUCDUAIDrivePkOutSelDir_:I

    if-eqz p1, :cond_8

    move v0, v2

    goto :goto_4

    :cond_8
    move v0, v1

    :goto_4
    iget v3, p3, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->eTHXPUCDUAIDrivePkOutSelDir_:I

    if-eqz v3, :cond_9

    move v4, v2

    goto :goto_5

    :cond_9
    move v4, v1

    :goto_5
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->eTHXPUCDUAIDrivePkOutSelDir_:I

    .line 320
    iget p1, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->eTHXPUCDURemotePkOutTips_:I

    if-eqz p1, :cond_a

    move v0, v2

    goto :goto_6

    :cond_a
    move v0, v1

    :goto_6
    iget v3, p3, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->eTHXPUCDURemotePkOutTips_:I

    if-eqz v3, :cond_b

    move v4, v2

    goto :goto_7

    :cond_b
    move v4, v1

    :goto_7
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->eTHXPUCDURemotePkOutTips_:I

    .line 322
    iget p1, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->eTHXPUCDUAppointmentEndTime_:I

    if-eqz p1, :cond_c

    move v0, v2

    goto :goto_8

    :cond_c
    move v0, v1

    :goto_8
    iget p3, p3, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->eTHXPUCDUAppointmentEndTime_:I

    if-eqz p3, :cond_d

    move v1, v2

    :cond_d
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->eTHXPUCDUAppointmentEndTime_:I

    .line 324
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 313
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;-><init>(Landroid/car/hardware/xpu/ZgApMsg$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 307
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    return-object p1

    .line 304
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    invoke-direct {p1}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;-><init>()V

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

.method public getETHXPUCDUAIDrivePkOutSelDir()I
    .locals 1

    .line 49
    iget v0, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->eTHXPUCDUAIDrivePkOutSelDir_:I

    return v0
.end method

.method public getETHXPUCDUAppointmentEndTime()I
    .locals 1

    .line 95
    iget v0, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->eTHXPUCDUAppointmentEndTime_:I

    return v0
.end method

.method public getETHXPUCDURemotePkOutTips()I
    .locals 1

    .line 72
    iget v0, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->eTHXPUCDURemotePkOutTips_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 126
    iget v0, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 130
    iget v1, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->eTHXPUCDUAIDrivePkOutSelDir_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 132
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 134
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->eTHXPUCDURemotePkOutTips_:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 136
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 138
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->eTHXPUCDUAppointmentEndTime_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 140
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 142
    :cond_3
    iput v0, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->memoizedSerializedSize:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget v0, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->eTHXPUCDUAIDrivePkOutSelDir_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 115
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 117
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->eTHXPUCDURemotePkOutTips_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 118
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 120
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->eTHXPUCDUAppointmentEndTime_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 121
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_2
    return-void
.end method

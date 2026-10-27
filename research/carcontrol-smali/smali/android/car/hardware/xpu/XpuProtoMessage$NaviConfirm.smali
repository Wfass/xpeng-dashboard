.class public final Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirmOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NaviConfirm"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirmOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

.field public static final NAVIGATION_ID_FIELD_NUMBER:I = 0x1

.field public static final NAVI_ACTION_FIELD_NUMBER:I = 0x3

.field public static final ODD_FLAG_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private naviAction_:I

.field private navigationId_:J

.field private oddFlag_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4310
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    .line 4311
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 3878
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const-wide/16 v0, 0x0

    .line 3879
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->navigationId_:J

    const/4 v0, 0x0

    .line 3880
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->oddFlag_:I

    .line 3881
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->naviAction_:I

    return-void
.end method

.method static synthetic access$5900()Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;
    .locals 1

    .line 3873
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    return-object v0
.end method

.method static synthetic access$6000(Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;J)V
    .locals 0

    .line 3873
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->setNavigationId(J)V

    return-void
.end method

.method static synthetic access$6100(Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;)V
    .locals 0

    .line 3873
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->clearNavigationId()V

    return-void
.end method

.method static synthetic access$6200(Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;I)V
    .locals 0

    .line 3873
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->setOddFlag(I)V

    return-void
.end method

.method static synthetic access$6300(Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;)V
    .locals 0

    .line 3873
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->clearOddFlag()V

    return-void
.end method

.method static synthetic access$6400(Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;I)V
    .locals 0

    .line 3873
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->setNaviAction(I)V

    return-void
.end method

.method static synthetic access$6500(Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;)V
    .locals 0

    .line 3873
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->clearNaviAction()V

    return-void
.end method

.method private clearNaviAction()V
    .locals 1

    const/4 v0, 0x0

    .line 3985
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->naviAction_:I

    return-void
.end method

.method private clearNavigationId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3915
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->navigationId_:J

    return-void
.end method

.method private clearOddFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 3950
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->oddFlag_:I

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;
    .locals 1

    .line 4315
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;
    .locals 1

    .line 4084
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;
    .locals 1

    .line 4087
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4061
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4067
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4025
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4032
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4072
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4079
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4049
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4056
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4037
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4044
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;",
            ">;"
        }
    .end annotation

    .line 4321
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setNaviAction(I)V
    .locals 0

    .line 3974
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->naviAction_:I

    return-void
.end method

.method private setNavigationId(J)V
    .locals 0

    .line 3904
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->navigationId_:J

    return-void
.end method

.method private setOddFlag(I)V
    .locals 0

    .line 3939
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->oddFlag_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 4218
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 4303
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 4294
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    monitor-enter p1

    .line 4295
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 4296
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 4298
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 4300
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 4246
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 4248
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_7

    .line 4253
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

    .line 4259
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 4276
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->naviAction_:I

    goto :goto_1

    .line 4271
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->oddFlag_:I

    goto :goto_1

    .line 4266
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->navigationId_:J
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

    .line 4284
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 4286
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 4282
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4287
    :goto_3
    throw p1

    .line 4291
    :cond_7
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    return-object p1

    .line 4232
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 4233
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    .line 4234
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->navigationId_:J

    const-wide/16 v3, 0x0

    cmp-long p1, v5, v3

    if-eqz p1, :cond_8

    move p1, v2

    goto :goto_4

    :cond_8
    move p1, v1

    :goto_4
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->navigationId_:J

    cmp-long v0, v8, v3

    if-eqz v0, :cond_9

    move v7, v2

    goto :goto_5

    :cond_9
    move v7, v1

    :goto_5
    move-object v3, p2

    move v4, p1

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->navigationId_:J

    .line 4236
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->oddFlag_:I

    if-eqz p1, :cond_a

    move v0, v2

    goto :goto_6

    :cond_a
    move v0, v1

    :goto_6
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->oddFlag_:I

    if-eqz v3, :cond_b

    move v4, v2

    goto :goto_7

    :cond_b
    move v4, v1

    :goto_7
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->oddFlag_:I

    .line 4238
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->naviAction_:I

    if-eqz p1, :cond_c

    move v0, v2

    goto :goto_8

    :cond_c
    move v0, v1

    :goto_8
    iget p3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->naviAction_:I

    if-eqz p3, :cond_d

    move v1, v2

    :cond_d
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->naviAction_:I

    .line 4240
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 4229
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 4223
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    return-object p1

    .line 4220
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;-><init>()V

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

.method public getNaviAction()I
    .locals 1

    .line 3963
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->naviAction_:I

    return v0
.end method

.method public getNavigationId()J
    .locals 2

    .line 3893
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->navigationId_:J

    return-wide v0
.end method

.method public getOddFlag()I
    .locals 1

    .line 3928
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->oddFlag_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 4002
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 4006
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->navigationId_:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 4008
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4010
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->oddFlag_:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 4012
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4014
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->naviAction_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 4016
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4018
    :cond_3
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->memoizedSerializedSize:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3990
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->navigationId_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 3991
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 3993
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->oddFlag_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 3994
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 3996
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviConfirm;->naviAction_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 3997
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_2
    return-void
.end method

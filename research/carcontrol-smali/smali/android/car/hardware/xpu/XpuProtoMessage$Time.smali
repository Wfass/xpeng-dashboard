.class public final Landroid/car/hardware/xpu/XpuProtoMessage$Time;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$TimeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Time"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$Time;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$TimeOrBuilder;"
    }
.end annotation


# static fields
.field public static final DAY_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

.field public static final HOUR_FIELD_NUMBER:I = 0x5

.field public static final MIN_FIELD_NUMBER:I = 0x6

.field public static final MONTH_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Time;",
            ">;"
        }
    .end annotation
.end field

.field public static final WEEK_FIELD_NUMBER:I = 0x4

.field public static final YEAR_FIELD_NUMBER:I = 0x1


# instance fields
.field private day_:I

.field private hour_:I

.field private min_:I

.field private month_:I

.field private week_:I

.field private year_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6713
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    .line 6714
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6174
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 6175
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->year_:I

    .line 6176
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->month_:I

    .line 6177
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->day_:I

    .line 6178
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->week_:I

    .line 6179
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->hour_:I

    .line 6180
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->min_:I

    return-void
.end method

.method static synthetic access$11000()Landroid/car/hardware/xpu/XpuProtoMessage$Time;
    .locals 1

    .line 6169
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    return-object v0
.end method

.method static synthetic access$11100(Landroid/car/hardware/xpu/XpuProtoMessage$Time;I)V
    .locals 0

    .line 6169
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->setYear(I)V

    return-void
.end method

.method static synthetic access$11200(Landroid/car/hardware/xpu/XpuProtoMessage$Time;)V
    .locals 0

    .line 6169
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->clearYear()V

    return-void
.end method

.method static synthetic access$11300(Landroid/car/hardware/xpu/XpuProtoMessage$Time;I)V
    .locals 0

    .line 6169
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->setMonth(I)V

    return-void
.end method

.method static synthetic access$11400(Landroid/car/hardware/xpu/XpuProtoMessage$Time;)V
    .locals 0

    .line 6169
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->clearMonth()V

    return-void
.end method

.method static synthetic access$11500(Landroid/car/hardware/xpu/XpuProtoMessage$Time;I)V
    .locals 0

    .line 6169
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->setDay(I)V

    return-void
.end method

.method static synthetic access$11600(Landroid/car/hardware/xpu/XpuProtoMessage$Time;)V
    .locals 0

    .line 6169
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->clearDay()V

    return-void
.end method

.method static synthetic access$11700(Landroid/car/hardware/xpu/XpuProtoMessage$Time;I)V
    .locals 0

    .line 6169
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->setWeek(I)V

    return-void
.end method

.method static synthetic access$11800(Landroid/car/hardware/xpu/XpuProtoMessage$Time;)V
    .locals 0

    .line 6169
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->clearWeek()V

    return-void
.end method

.method static synthetic access$11900(Landroid/car/hardware/xpu/XpuProtoMessage$Time;I)V
    .locals 0

    .line 6169
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->setHour(I)V

    return-void
.end method

.method static synthetic access$12000(Landroid/car/hardware/xpu/XpuProtoMessage$Time;)V
    .locals 0

    .line 6169
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->clearHour()V

    return-void
.end method

.method static synthetic access$12100(Landroid/car/hardware/xpu/XpuProtoMessage$Time;I)V
    .locals 0

    .line 6169
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->setMin(I)V

    return-void
.end method

.method static synthetic access$12200(Landroid/car/hardware/xpu/XpuProtoMessage$Time;)V
    .locals 0

    .line 6169
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->clearMin()V

    return-void
.end method

.method private clearDay()V
    .locals 1

    const/4 v0, 0x0

    .line 6248
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->day_:I

    return-void
.end method

.method private clearHour()V
    .locals 1

    const/4 v0, 0x0

    .line 6294
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->hour_:I

    return-void
.end method

.method private clearMin()V
    .locals 1

    const/4 v0, 0x0

    .line 6317
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->min_:I

    return-void
.end method

.method private clearMonth()V
    .locals 1

    const/4 v0, 0x0

    .line 6225
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->month_:I

    return-void
.end method

.method private clearWeek()V
    .locals 1

    const/4 v0, 0x0

    .line 6271
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->week_:I

    return-void
.end method

.method private clearYear()V
    .locals 1

    const/4 v0, 0x0

    .line 6202
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->year_:I

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$Time;
    .locals 1

    .line 6718
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;
    .locals 1

    .line 6437
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$Time;)Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;
    .locals 1

    .line 6440
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$Time;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6414
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$Time;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6420
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessage$Time;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6378
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$Time;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6385
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$Time;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6425
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$Time;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6432
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$Time;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6402
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$Time;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6409
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessage$Time;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6390
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$Time;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6397
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Time;",
            ">;"
        }
    .end annotation

    .line 6724
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDay(I)V
    .locals 0

    .line 6241
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->day_:I

    return-void
.end method

.method private setHour(I)V
    .locals 0

    .line 6287
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->hour_:I

    return-void
.end method

.method private setMin(I)V
    .locals 0

    .line 6310
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->min_:I

    return-void
.end method

.method private setMonth(I)V
    .locals 0

    .line 6218
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->month_:I

    return-void
.end method

.method private setWeek(I)V
    .locals 0

    .line 6264
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->week_:I

    return-void
.end method

.method private setYear(I)V
    .locals 0

    .line 6195
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->year_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 6600
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 6706
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 6697
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    monitor-enter p1

    .line 6698
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 6699
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 6701
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 6703
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 6634
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 6636
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_a

    .line 6641
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_9

    const/16 p3, 0x8

    if-eq p1, p3, :cond_8

    const/16 p3, 0x10

    if-eq p1, p3, :cond_7

    const/16 p3, 0x18

    if-eq p1, p3, :cond_6

    const/16 p3, 0x20

    if-eq p1, p3, :cond_5

    const/16 p3, 0x28

    if-eq p1, p3, :cond_4

    const/16 p3, 0x30

    if-eq p1, p3, :cond_3

    .line 6647
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 6679
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->min_:I

    goto :goto_1

    .line 6674
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->hour_:I

    goto :goto_1

    .line 6669
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->week_:I

    goto :goto_1

    .line 6664
    :cond_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->day_:I

    goto :goto_1

    .line 6659
    :cond_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->month_:I

    goto :goto_1

    .line 6654
    :cond_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->year_:I
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_9
    :goto_2
    move v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 6687
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 6689
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 6685
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6690
    :goto_3
    throw p1

    .line 6694
    :cond_a
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    return-object p1

    .line 6614
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 6615
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    .line 6616
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->year_:I

    if-eqz p1, :cond_b

    move v0, v2

    goto :goto_4

    :cond_b
    move v0, v1

    :goto_4
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->year_:I

    if-eqz v3, :cond_c

    move v4, v2

    goto :goto_5

    :cond_c
    move v4, v1

    :goto_5
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->year_:I

    .line 6618
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->month_:I

    if-eqz p1, :cond_d

    move v0, v2

    goto :goto_6

    :cond_d
    move v0, v1

    :goto_6
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->month_:I

    if-eqz v3, :cond_e

    move v4, v2

    goto :goto_7

    :cond_e
    move v4, v1

    :goto_7
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->month_:I

    .line 6620
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->day_:I

    if-eqz p1, :cond_f

    move v0, v2

    goto :goto_8

    :cond_f
    move v0, v1

    :goto_8
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->day_:I

    if-eqz v3, :cond_10

    move v4, v2

    goto :goto_9

    :cond_10
    move v4, v1

    :goto_9
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->day_:I

    .line 6622
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->week_:I

    if-eqz p1, :cond_11

    move v0, v2

    goto :goto_a

    :cond_11
    move v0, v1

    :goto_a
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->week_:I

    if-eqz v3, :cond_12

    move v4, v2

    goto :goto_b

    :cond_12
    move v4, v1

    :goto_b
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->week_:I

    .line 6624
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->hour_:I

    if-eqz p1, :cond_13

    move v0, v2

    goto :goto_c

    :cond_13
    move v0, v1

    :goto_c
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->hour_:I

    if-eqz v3, :cond_14

    move v4, v2

    goto :goto_d

    :cond_14
    move v4, v1

    :goto_d
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->hour_:I

    .line 6626
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->min_:I

    if-eqz p1, :cond_15

    move v0, v2

    goto :goto_e

    :cond_15
    move v0, v1

    :goto_e
    iget p3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->min_:I

    if-eqz p3, :cond_16

    move v1, v2

    :cond_16
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->min_:I

    .line 6628
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 6611
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Time$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 6605
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    return-object p1

    .line 6602
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$Time;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Time;-><init>()V

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

.method public getDay()I
    .locals 1

    .line 6234
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->day_:I

    return v0
.end method

.method public getHour()I
    .locals 1

    .line 6280
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->hour_:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .line 6303
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->min_:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .line 6211
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->month_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 6343
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 6347
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->year_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 6349
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6351
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->month_:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 6353
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6355
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->day_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 6357
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6359
    :cond_3
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->week_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 6361
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6363
    :cond_4
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->hour_:I

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 6365
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6367
    :cond_5
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->min_:I

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 6369
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6371
    :cond_6
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->memoizedSerializedSize:I

    return v0
.end method

.method public getWeek()I
    .locals 1

    .line 6257
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->week_:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 6188
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->year_:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6322
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->year_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 6323
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6325
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->month_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 6326
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6328
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->day_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 6329
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6331
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->week_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 6332
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6334
    :cond_3
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->hour_:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 6335
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6337
    :cond_4
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Time;->min_:I

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 6338
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_5
    return-void
.end method

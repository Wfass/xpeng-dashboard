.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Time"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$TimeOrBuilder;"
    }
.end annotation


# static fields
.field public static final DAY_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

.field public static final HOUR_FIELD_NUMBER:I = 0x5

.field public static final MIN_FIELD_NUMBER:I = 0x6

.field public static final MONTH_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;",
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

    .line 6452
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    .line 6453
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5913
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 5914
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->year_:I

    .line 5915
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->month_:I

    .line 5916
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->day_:I

    .line 5917
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->week_:I

    .line 5918
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->hour_:I

    .line 5919
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->min_:I

    return-void
.end method

.method static synthetic access$10800()Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;
    .locals 1

    .line 5908
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    return-object v0
.end method

.method static synthetic access$10900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;I)V
    .locals 0

    .line 5908
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->setYear(I)V

    return-void
.end method

.method static synthetic access$11000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)V
    .locals 0

    .line 5908
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->clearYear()V

    return-void
.end method

.method static synthetic access$11100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;I)V
    .locals 0

    .line 5908
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->setMonth(I)V

    return-void
.end method

.method static synthetic access$11200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)V
    .locals 0

    .line 5908
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->clearMonth()V

    return-void
.end method

.method static synthetic access$11300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;I)V
    .locals 0

    .line 5908
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->setDay(I)V

    return-void
.end method

.method static synthetic access$11400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)V
    .locals 0

    .line 5908
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->clearDay()V

    return-void
.end method

.method static synthetic access$11500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;I)V
    .locals 0

    .line 5908
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->setWeek(I)V

    return-void
.end method

.method static synthetic access$11600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)V
    .locals 0

    .line 5908
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->clearWeek()V

    return-void
.end method

.method static synthetic access$11700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;I)V
    .locals 0

    .line 5908
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->setHour(I)V

    return-void
.end method

.method static synthetic access$11800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)V
    .locals 0

    .line 5908
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->clearHour()V

    return-void
.end method

.method static synthetic access$11900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;I)V
    .locals 0

    .line 5908
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->setMin(I)V

    return-void
.end method

.method static synthetic access$12000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)V
    .locals 0

    .line 5908
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->clearMin()V

    return-void
.end method

.method private clearDay()V
    .locals 1

    const/4 v0, 0x0

    .line 5987
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->day_:I

    return-void
.end method

.method private clearHour()V
    .locals 1

    const/4 v0, 0x0

    .line 6033
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->hour_:I

    return-void
.end method

.method private clearMin()V
    .locals 1

    const/4 v0, 0x0

    .line 6056
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->min_:I

    return-void
.end method

.method private clearMonth()V
    .locals 1

    const/4 v0, 0x0

    .line 5964
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->month_:I

    return-void
.end method

.method private clearWeek()V
    .locals 1

    const/4 v0, 0x0

    .line 6010
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->week_:I

    return-void
.end method

.method private clearYear()V
    .locals 1

    const/4 v0, 0x0

    .line 5941
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->year_:I

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;
    .locals 1

    .line 6457
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;
    .locals 1

    .line 6176
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;
    .locals 1

    .line 6179
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6153
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6159
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6117
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6124
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6164
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6171
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6141
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6148
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6129
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6136
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;",
            ">;"
        }
    .end annotation

    .line 6463
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDay(I)V
    .locals 0

    .line 5980
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->day_:I

    return-void
.end method

.method private setHour(I)V
    .locals 0

    .line 6026
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->hour_:I

    return-void
.end method

.method private setMin(I)V
    .locals 0

    .line 6049
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->min_:I

    return-void
.end method

.method private setMonth(I)V
    .locals 0

    .line 5957
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->month_:I

    return-void
.end method

.method private setWeek(I)V
    .locals 0

    .line 6003
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->week_:I

    return-void
.end method

.method private setYear(I)V
    .locals 0

    .line 5934
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->year_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 6339
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 6445
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 6436
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    monitor-enter p1

    .line 6437
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 6438
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 6440
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 6442
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 6373
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 6375
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_a

    .line 6380
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

    .line 6386
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 6418
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->min_:I

    goto :goto_1

    .line 6413
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->hour_:I

    goto :goto_1

    .line 6408
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->week_:I

    goto :goto_1

    .line 6403
    :cond_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->day_:I

    goto :goto_1

    .line 6398
    :cond_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->month_:I

    goto :goto_1

    .line 6393
    :cond_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->year_:I
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

    .line 6426
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 6428
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 6424
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6429
    :goto_3
    throw p1

    .line 6433
    :cond_a
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    return-object p1

    .line 6353
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 6354
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    .line 6355
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->year_:I

    if-eqz p1, :cond_b

    move v0, v2

    goto :goto_4

    :cond_b
    move v0, v1

    :goto_4
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->year_:I

    if-eqz v3, :cond_c

    move v4, v2

    goto :goto_5

    :cond_c
    move v4, v1

    :goto_5
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->year_:I

    .line 6357
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->month_:I

    if-eqz p1, :cond_d

    move v0, v2

    goto :goto_6

    :cond_d
    move v0, v1

    :goto_6
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->month_:I

    if-eqz v3, :cond_e

    move v4, v2

    goto :goto_7

    :cond_e
    move v4, v1

    :goto_7
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->month_:I

    .line 6359
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->day_:I

    if-eqz p1, :cond_f

    move v0, v2

    goto :goto_8

    :cond_f
    move v0, v1

    :goto_8
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->day_:I

    if-eqz v3, :cond_10

    move v4, v2

    goto :goto_9

    :cond_10
    move v4, v1

    :goto_9
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->day_:I

    .line 6361
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->week_:I

    if-eqz p1, :cond_11

    move v0, v2

    goto :goto_a

    :cond_11
    move v0, v1

    :goto_a
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->week_:I

    if-eqz v3, :cond_12

    move v4, v2

    goto :goto_b

    :cond_12
    move v4, v1

    :goto_b
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->week_:I

    .line 6363
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->hour_:I

    if-eqz p1, :cond_13

    move v0, v2

    goto :goto_c

    :cond_13
    move v0, v1

    :goto_c
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->hour_:I

    if-eqz v3, :cond_14

    move v4, v2

    goto :goto_d

    :cond_14
    move v4, v1

    :goto_d
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->hour_:I

    .line 6365
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->min_:I

    if-eqz p1, :cond_15

    move v0, v2

    goto :goto_e

    :cond_15
    move v0, v1

    :goto_e
    iget p3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->min_:I

    if-eqz p3, :cond_16

    move v1, v2

    :cond_16
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->min_:I

    .line 6367
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 6350
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 6344
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    return-object p1

    .line 6341
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;-><init>()V

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

    .line 5973
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->day_:I

    return v0
.end method

.method public getHour()I
    .locals 1

    .line 6019
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->hour_:I

    return v0
.end method

.method public getMin()I
    .locals 1

    .line 6042
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->min_:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .line 5950
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->month_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 6082
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 6086
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->year_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 6088
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6090
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->month_:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 6092
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6094
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->day_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 6096
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6098
    :cond_3
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->week_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 6100
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6102
    :cond_4
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->hour_:I

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 6104
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6106
    :cond_5
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->min_:I

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 6108
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6110
    :cond_6
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->memoizedSerializedSize:I

    return v0
.end method

.method public getWeek()I
    .locals 1

    .line 5996
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->week_:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .line 5927
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->year_:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6061
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->year_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 6062
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6064
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->month_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 6065
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6067
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->day_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 6068
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6070
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->week_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 6071
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6073
    :cond_3
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->hour_:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 6074
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6076
    :cond_4
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Time;->min_:I

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 6077
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_5
    return-void
.end method

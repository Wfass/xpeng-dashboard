.class public final Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMappingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SlotIdMapping"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMappingOrBuilder;"
    }
.end annotation


# static fields
.field public static final AVMSLOTID_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

.field public static final PARKSLOTID_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private avmSlotId_:I

.field private parkSlotId_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11175
    new-instance v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    .line 11176
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 10880
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 10881
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->avmSlotId_:I

    .line 10882
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->parkSlotId_:I

    return-void
.end method

.method static synthetic access$25400()Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;
    .locals 1

    .line 10875
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    return-object v0
.end method

.method static synthetic access$25500(Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;I)V
    .locals 0

    .line 10875
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->setAvmSlotId(I)V

    return-void
.end method

.method static synthetic access$25600(Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;)V
    .locals 0

    .line 10875
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->clearAvmSlotId()V

    return-void
.end method

.method static synthetic access$25700(Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;I)V
    .locals 0

    .line 10875
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->setParkSlotId(I)V

    return-void
.end method

.method static synthetic access$25800(Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;)V
    .locals 0

    .line 10875
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->clearParkSlotId()V

    return-void
.end method

.method private clearAvmSlotId()V
    .locals 1

    const/4 v0, 0x0

    .line 10904
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->avmSlotId_:I

    return-void
.end method

.method private clearParkSlotId()V
    .locals 1

    const/4 v0, 0x0

    .line 10927
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->parkSlotId_:I

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;
    .locals 1

    .line 11180
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;
    .locals 1

    .line 11019
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;)Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;
    .locals 1

    .line 11022
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10996
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11002
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10960
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10967
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11007
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11014
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10984
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10991
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10972
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10979
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;",
            ">;"
        }
    .end annotation

    .line 11186
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAvmSlotId(I)V
    .locals 0

    .line 10897
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->avmSlotId_:I

    return-void
.end method

.method private setParkSlotId(I)V
    .locals 0

    .line 10920
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->parkSlotId_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 11090
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 11168
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 11159
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    monitor-enter p1

    .line 11160
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 11161
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 11163
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 11165
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 11116
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 11118
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_6

    .line 11123
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_5

    const/16 p3, 0x8

    if-eq p1, p3, :cond_4

    const/16 p3, 0x10

    if-eq p1, p3, :cond_3

    .line 11129
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 11141
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->parkSlotId_:I

    goto :goto_1

    .line 11136
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->avmSlotId_:I
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

    .line 11149
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 11151
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 11147
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11152
    :goto_3
    throw p1

    .line 11156
    :cond_6
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    return-object p1

    .line 11104
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 11105
    check-cast p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    .line 11106
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->avmSlotId_:I

    if-eqz p1, :cond_7

    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v1

    :goto_4
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->avmSlotId_:I

    if-eqz v3, :cond_8

    move v4, v2

    goto :goto_5

    :cond_8
    move v4, v1

    :goto_5
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->avmSlotId_:I

    .line 11108
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->parkSlotId_:I

    if-eqz p1, :cond_9

    move v0, v2

    goto :goto_6

    :cond_9
    move v0, v1

    :goto_6
    iget p3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->parkSlotId_:I

    if-eqz p3, :cond_a

    move v1, v2

    :cond_a
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->parkSlotId_:I

    .line 11110
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 11101
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;-><init>(Landroid/car/hardware/xpu/XpuApEssentialMsg$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 11095
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    return-object p1

    .line 11092
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;-><init>()V

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

.method public getAvmSlotId()I
    .locals 1

    .line 10890
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->avmSlotId_:I

    return v0
.end method

.method public getParkSlotId()I
    .locals 1

    .line 10913
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->parkSlotId_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 10941
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 10945
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->avmSlotId_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 10947
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10949
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->parkSlotId_:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 10951
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10953
    :cond_2
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->memoizedSerializedSize:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10932
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->avmSlotId_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 10933
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 10935
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->parkSlotId_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 10936
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_1
    return-void
.end method

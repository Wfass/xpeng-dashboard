.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Slot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotOrBuilder;"
    }
.end annotation


# static fields
.field public static final CHARACTER_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

.field public static final ENTRY_LINE_FIELD_NUMBER:I = 0x3

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final IS_FAVOR_SLOT_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;",
            ">;"
        }
    .end annotation
.end field

.field public static final POLYGON_FIELD_NUMBER:I = 0x2


# instance fields
.field private character_:Ljava/lang/String;

.field private entryLine_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

.field private id_:Ljava/lang/String;

.field private isFavorSlot_:Z

.field private polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23671
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    .line 23672
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22793
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 22794
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->id_:Ljava/lang/String;

    .line 22795
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->character_:Ljava/lang/String;

    const/4 v0, 0x0

    .line 22796
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->isFavorSlot_:Z

    return-void
.end method

.method static synthetic access$39600()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;
    .locals 1

    .line 22788
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    return-object v0
.end method

.method static synthetic access$39700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;Ljava/lang/String;)V
    .locals 0

    .line 22788
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->setId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$39800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;)V
    .locals 0

    .line 22788
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->clearId()V

    return-void
.end method

.method static synthetic access$39900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 22788
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->setIdBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$40000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;)V
    .locals 0

    .line 22788
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->setPolygon(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;)V

    return-void
.end method

.method static synthetic access$40100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;)V
    .locals 0

    .line 22788
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->setPolygon(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;)V

    return-void
.end method

.method static synthetic access$40200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;)V
    .locals 0

    .line 22788
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->mergePolygon(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;)V

    return-void
.end method

.method static synthetic access$40300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;)V
    .locals 0

    .line 22788
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->clearPolygon()V

    return-void
.end method

.method static synthetic access$40400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;)V
    .locals 0

    .line 22788
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->setEntryLine(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;)V

    return-void
.end method

.method static synthetic access$40500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;)V
    .locals 0

    .line 22788
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->setEntryLine(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;)V

    return-void
.end method

.method static synthetic access$40600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;)V
    .locals 0

    .line 22788
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->mergeEntryLine(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;)V

    return-void
.end method

.method static synthetic access$40700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;)V
    .locals 0

    .line 22788
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->clearEntryLine()V

    return-void
.end method

.method static synthetic access$40800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;Ljava/lang/String;)V
    .locals 0

    .line 22788
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->setCharacter(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$40900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;)V
    .locals 0

    .line 22788
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->clearCharacter()V

    return-void
.end method

.method static synthetic access$41000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 22788
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->setCharacterBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$41100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;Z)V
    .locals 0

    .line 22788
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->setIsFavorSlot(Z)V

    return-void
.end method

.method static synthetic access$41200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;)V
    .locals 0

    .line 22788
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->clearIsFavorSlot()V

    return-void
.end method

.method private clearCharacter()V
    .locals 1

    .line 23063
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->getCharacter()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->character_:Ljava/lang/String;

    return-void
.end method

.method private clearEntryLine()V
    .locals 1

    const/4 v0, 0x0

    .line 23012
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->entryLine_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    return-void
.end method

.method private clearId()V
    .locals 1

    .line 22845
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->id_:Ljava/lang/String;

    return-void
.end method

.method private clearIsFavorSlot()V
    .locals 1

    const/4 v0, 0x0

    .line 23114
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->isFavorSlot_:Z

    return-void
.end method

.method private clearPolygon()V
    .locals 1

    const/4 v0, 0x0

    .line 22936
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;
    .locals 1

    .line 23676
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    return-object v0
.end method

.method private mergeEntryLine(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;)V
    .locals 2

    .line 22996
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->entryLine_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    if-eqz v0, :cond_0

    .line 22997
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 22998
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->entryLine_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    .line 22999
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->entryLine_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    goto :goto_0

    .line 23001
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->entryLine_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    :goto_0
    return-void
.end method

.method private mergePolygon(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;)V
    .locals 2

    .line 22920
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    if-eqz v0, :cond_0

    .line 22921
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 22922
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    .line 22923
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;->newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    goto :goto_0

    .line 22925
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;
    .locals 1

    .line 23227
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;
    .locals 1

    .line 23230
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23204
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23210
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 23168
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 23175
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23215
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23222
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23192
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23199
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 23180
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 23187
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;",
            ">;"
        }
    .end annotation

    .line 23682
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCharacter(Ljava/lang/String;)V
    .locals 0

    .line 23049
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23052
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->character_:Ljava/lang/String;

    return-void
.end method

.method private setCharacterBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 23075
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23077
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 23079
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->character_:Ljava/lang/String;

    return-void
.end method

.method private setEntryLine(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;)V
    .locals 0

    .line 22985
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->entryLine_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    return-void
.end method

.method private setEntryLine(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;)V
    .locals 0

    .line 22971
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22973
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->entryLine_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    return-void
.end method

.method private setId(Ljava/lang/String;)V
    .locals 0

    .line 22831
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22834
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->id_:Ljava/lang/String;

    return-void
.end method

.method private setIdBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 22857
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22859
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 22861
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->id_:Ljava/lang/String;

    return-void
.end method

.method private setIsFavorSlot(Z)V
    .locals 0

    .line 23103
    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->isFavorSlot_:Z

    return-void
.end method

.method private setPolygon(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;)V
    .locals 0

    .line 22909
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    return-void
.end method

.method private setPolygon(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;)V
    .locals 0

    .line 22895
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22897
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 23549
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 23664
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 23655
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    monitor-enter p1

    .line 23656
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 23657
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 23659
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 23661
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 23579
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 23581
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_b

    .line 23586
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result v2

    if-eqz v2, :cond_a

    const/16 v3, 0xa

    if-eq v2, v3, :cond_9

    const/16 v3, 0x12

    if-eq v2, v3, :cond_7

    const/16 v3, 0x1a

    if-eq v2, v3, :cond_5

    const/16 v3, 0x22

    if-eq v2, v3, :cond_4

    const/16 v3, 0x28

    if-eq v2, v3, :cond_3

    .line 23592
    invoke-virtual {p2, v2}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_4

    .line 23637
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->isFavorSlot_:Z

    goto :goto_1

    .line 23630
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 23632
    iput-object v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->character_:Ljava/lang/String;

    goto :goto_1

    .line 23618
    :cond_5
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->entryLine_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    if-eqz v2, :cond_6

    .line 23619
    invoke-virtual {v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;

    goto :goto_2

    :cond_6
    move-object v2, v0

    .line 23621
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->entryLine_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    if-eqz v2, :cond_2

    .line 23623
    invoke-virtual {v2, v3}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 23624
    invoke-virtual {v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    iput-object v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->entryLine_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    goto :goto_1

    .line 23605
    :cond_7
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    if-eqz v2, :cond_8

    .line 23606
    invoke-virtual {v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;

    goto :goto_3

    :cond_8
    move-object v2, v0

    .line 23608
    :goto_3
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    if-eqz v2, :cond_2

    .line 23610
    invoke-virtual {v2, v3}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 23611
    invoke-virtual {v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    iput-object v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    goto :goto_1

    .line 23598
    :cond_9
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 23600
    iput-object v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->id_:Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_a
    :goto_4
    move p1, v1

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 23645
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 23647
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 23643
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 23648
    :goto_5
    throw p1

    .line 23652
    :cond_b
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    return-object p1

    .line 23563
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 23564
    check-cast p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    .line 23565
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->id_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->id_:Ljava/lang/String;

    iget-object v2, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->id_:Ljava/lang/String;

    .line 23566
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v1

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->id_:Ljava/lang/String;

    .line 23565
    invoke-interface {p2, p1, v0, v2, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->id_:Ljava/lang/String;

    .line 23567
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    .line 23568
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->entryLine_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->entryLine_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->entryLine_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    .line 23569
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->character_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->character_:Ljava/lang/String;

    iget-object v2, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->character_:Ljava/lang/String;

    .line 23570
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    iget-object v2, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->character_:Ljava/lang/String;

    .line 23569
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->character_:Ljava/lang/String;

    .line 23571
    iget-boolean p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->isFavorSlot_:Z

    iget-boolean p3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->isFavorSlot_:Z

    invoke-interface {p2, p1, p1, p3, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->isFavorSlot_:Z

    .line 23573
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 23560
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;-><init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 23554
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    return-object p1

    .line 23551
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;-><init>()V

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

.method public getCharacter()Ljava/lang/String;
    .locals 1

    .line 23026
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->character_:Ljava/lang/String;

    return-object v0
.end method

.method public getCharacterBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 23037
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->character_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEntryLine()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;
    .locals 1

    .line 22960
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->entryLine_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 22808
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 22819
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->id_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIsFavorSlot()Z
    .locals 1

    .line 23092
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->isFavorSlot_:Z

    return v0
.end method

.method public getPolygon()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;
    .locals 1

    .line 22884
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 23137
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 23141
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->id_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 23143
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23145
    :cond_1
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 23147
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->getPolygon()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23149
    :cond_2
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->entryLine_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 23151
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->getEntryLine()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23153
    :cond_3
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->character_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 23155
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->getCharacter()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23157
    :cond_4
    iget-boolean v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->isFavorSlot_:Z

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 23159
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 23161
    :cond_5
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->memoizedSerializedSize:I

    return v0
.end method

.method public hasEntryLine()Z
    .locals 1

    .line 22950
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->entryLine_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPolygon()Z
    .locals 1

    .line 22874
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

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

    .line 23119
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->id_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 23120
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 23122
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 23123
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->getPolygon()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 23125
    :cond_1
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->entryLine_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 23126
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->getEntryLine()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 23128
    :cond_2
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->character_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 23129
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->getCharacter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 23131
    :cond_3
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->isFavorSlot_:Z

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 23132
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_4
    return-void
.end method

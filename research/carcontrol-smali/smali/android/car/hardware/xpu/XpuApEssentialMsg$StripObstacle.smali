.class public final Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacleOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StripObstacle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacleOrBuilder;"
    }
.end annotation


# static fields
.field public static final ATTRI_FIELD_NUMBER:I = 0x6

.field public static final COLOR_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

.field public static final ID_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEGMENT_FIELD_NUMBER:I = 0x1

.field public static final SIZE_FIELD_NUMBER:I = 0x3

.field public static final TYPE_FIELD_NUMBER:I = 0x2


# instance fields
.field private attri_:I

.field private bitField0_:I

.field private color_:I

.field private id_:I

.field private segment_:Lcom/android/carsdk/protobuf/Internal$FloatList;

.field private size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5158
    new-instance v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    .line 5159
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4273
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    .line 4274
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->emptyFloatList()Lcom/android/carsdk/protobuf/Internal$FloatList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->segment_:Lcom/android/carsdk/protobuf/Internal$FloatList;

    const/4 v0, 0x0

    .line 4275
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->type_:I

    .line 4276
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->color_:I

    .line 4277
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->id_:I

    .line 4278
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->attri_:I

    return-void
.end method

.method static synthetic access$10000(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;)V
    .locals 0

    .line 4268
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->clearType()V

    return-void
.end method

.method static synthetic access$10100(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;)V
    .locals 0

    .line 4268
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->setSize(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;)V

    return-void
.end method

.method static synthetic access$10200(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;)V
    .locals 0

    .line 4268
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->setSize(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;)V

    return-void
.end method

.method static synthetic access$10300(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;)V
    .locals 0

    .line 4268
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->mergeSize(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;)V

    return-void
.end method

.method static synthetic access$10400(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;)V
    .locals 0

    .line 4268
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->clearSize()V

    return-void
.end method

.method static synthetic access$10500(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;I)V
    .locals 0

    .line 4268
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->setColor(I)V

    return-void
.end method

.method static synthetic access$10600(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;)V
    .locals 0

    .line 4268
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->clearColor()V

    return-void
.end method

.method static synthetic access$10700(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;I)V
    .locals 0

    .line 4268
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->setId(I)V

    return-void
.end method

.method static synthetic access$10800(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;)V
    .locals 0

    .line 4268
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->clearId()V

    return-void
.end method

.method static synthetic access$10900(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;I)V
    .locals 0

    .line 4268
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->setAttri(I)V

    return-void
.end method

.method static synthetic access$11000(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;)V
    .locals 0

    .line 4268
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->clearAttri()V

    return-void
.end method

.method static synthetic access$9400()Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;
    .locals 1

    .line 4268
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    return-object v0
.end method

.method static synthetic access$9500(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;IF)V
    .locals 0

    .line 4268
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->setSegment(IF)V

    return-void
.end method

.method static synthetic access$9600(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;F)V
    .locals 0

    .line 4268
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->addSegment(F)V

    return-void
.end method

.method static synthetic access$9700(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;Ljava/lang/Iterable;)V
    .locals 0

    .line 4268
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->addAllSegment(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$9800(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;)V
    .locals 0

    .line 4268
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->clearSegment()V

    return-void
.end method

.method static synthetic access$9900(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;I)V
    .locals 0

    .line 4268
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->setType(I)V

    return-void
.end method

.method private addAllSegment(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 4352
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->ensureSegmentIsMutable()V

    .line 4353
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->segment_:Lcom/android/carsdk/protobuf/Internal$FloatList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addSegment(F)V
    .locals 1

    .line 4340
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->ensureSegmentIsMutable()V

    .line 4341
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->segment_:Lcom/android/carsdk/protobuf/Internal$FloatList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$FloatList;->addFloat(F)V

    return-void
.end method

.method private clearAttri()V
    .locals 1

    const/4 v0, 0x0

    .line 4580
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->attri_:I

    return-void
.end method

.method private clearColor()V
    .locals 1

    const/4 v0, 0x0

    .line 4510
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->color_:I

    return-void
.end method

.method private clearId()V
    .locals 1

    const/4 v0, 0x0

    .line 4545
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->id_:I

    return-void
.end method

.method private clearSegment()V
    .locals 1

    .line 4364
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->emptyFloatList()Lcom/android/carsdk/protobuf/Internal$FloatList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->segment_:Lcom/android/carsdk/protobuf/Internal$FloatList;

    return-void
.end method

.method private clearSize()V
    .locals 1

    const/4 v0, 0x0

    .line 4474
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    return-void
.end method

.method private clearType()V
    .locals 1

    const/4 v0, 0x0

    .line 4399
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->type_:I

    return-void
.end method

.method private ensureSegmentIsMutable()V
    .locals 1

    .line 4315
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->segment_:Lcom/android/carsdk/protobuf/Internal$FloatList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$FloatList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4316
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->segment_:Lcom/android/carsdk/protobuf/Internal$FloatList;

    .line 4317
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$FloatList;)Lcom/android/carsdk/protobuf/Internal$FloatList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->segment_:Lcom/android/carsdk/protobuf/Internal$FloatList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;
    .locals 1

    .line 5163
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    return-object v0
.end method

.method private mergeSize(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;)V
    .locals 2

    .line 4458
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    if-eqz v0, :cond_0

    .line 4459
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4460
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    .line 4461
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->newBuilder(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    goto :goto_0

    .line 4463
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;
    .locals 1

    .line 4703
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;)Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;
    .locals 1

    .line 4706
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4680
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4686
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4644
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4651
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4691
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4698
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4668
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4675
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4656
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4663
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;",
            ">;"
        }
    .end annotation

    .line 5169
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAttri(I)V
    .locals 0

    .line 4569
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->attri_:I

    return-void
.end method

.method private setColor(I)V
    .locals 0

    .line 4499
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->color_:I

    return-void
.end method

.method private setId(I)V
    .locals 0

    .line 4534
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->id_:I

    return-void
.end method

.method private setSegment(IF)V
    .locals 1

    .line 4329
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->ensureSegmentIsMutable()V

    .line 4330
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->segment_:Lcom/android/carsdk/protobuf/Internal$FloatList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$FloatList;->setFloat(IF)F

    return-void
.end method

.method private setSize(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;)V
    .locals 0

    .line 4447
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    return-void
.end method

.method private setSize(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;)V
    .locals 0

    .line 4433
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4435
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    return-void
.end method

.method private setType(I)V
    .locals 0

    .line 4388
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->type_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 5020
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 5151
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 5142
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    monitor-enter p1

    .line 5143
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5144
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 5146
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 5148
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 5054
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 5056
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_f

    .line 5061
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_e

    const/16 v3, 0xa

    if-eq p1, v3, :cond_b

    const/16 v3, 0xd

    if-eq p1, v3, :cond_9

    const/16 v3, 0x10

    if-eq p1, v3, :cond_8

    const/16 v3, 0x1a

    if-eq p1, v3, :cond_6

    const/16 v3, 0x20

    if-eq p1, v3, :cond_5

    const/16 v3, 0x28

    if-eq p1, v3, :cond_4

    const/16 v3, 0x30

    if-eq p1, v3, :cond_3

    .line 5067
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_4

    .line 5124
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->attri_:I

    goto :goto_1

    .line 5119
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->id_:I

    goto :goto_1

    .line 5114
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->color_:I

    goto :goto_1

    .line 5101
    :cond_6
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    if-eqz p1, :cond_7

    .line 5102
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;

    goto :goto_2

    :cond_7
    move-object p1, v0

    .line 5104
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    if-eqz p1, :cond_2

    .line 5106
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 5107
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    goto :goto_1

    .line 5096
    :cond_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->type_:I

    goto :goto_1

    .line 5073
    :cond_9
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->segment_:Lcom/android/carsdk/protobuf/Internal$FloatList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$FloatList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_a

    .line 5074
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->segment_:Lcom/android/carsdk/protobuf/Internal$FloatList;

    .line 5075
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$FloatList;)Lcom/android/carsdk/protobuf/Internal$FloatList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->segment_:Lcom/android/carsdk/protobuf/Internal$FloatList;

    .line 5077
    :cond_a
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->segment_:Lcom/android/carsdk/protobuf/Internal$FloatList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/carsdk/protobuf/Internal$FloatList;->addFloat(F)V

    goto/16 :goto_1

    .line 5081
    :cond_b
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p1

    .line 5082
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v3

    .line 5083
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->segment_:Lcom/android/carsdk/protobuf/Internal$FloatList;

    invoke-interface {v4}, Lcom/android/carsdk/protobuf/Internal$FloatList;->isModifiable()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v4

    if-lez v4, :cond_c

    .line 5084
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->segment_:Lcom/android/carsdk/protobuf/Internal$FloatList;

    invoke-interface {v4}, Lcom/android/carsdk/protobuf/Internal$FloatList;->size()I

    move-result v4

    .line 5085
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->segment_:Lcom/android/carsdk/protobuf/Internal$FloatList;

    div-int/lit8 p1, p1, 0x4

    add-int/2addr v4, p1

    invoke-interface {v5, v4}, Lcom/android/carsdk/protobuf/Internal$FloatList;->mutableCopyWithCapacity(I)Lcom/android/carsdk/protobuf/Internal$FloatList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->segment_:Lcom/android/carsdk/protobuf/Internal$FloatList;

    .line 5088
    :cond_c
    :goto_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result p1

    if-lez p1, :cond_d

    .line 5089
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->segment_:Lcom/android/carsdk/protobuf/Internal$FloatList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result v4

    invoke-interface {p1, v4}, Lcom/android/carsdk/protobuf/Internal$FloatList;->addFloat(F)V

    goto :goto_3

    .line 5091
    :cond_d
    invoke-virtual {p2, v3}, Lcom/android/carsdk/protobuf/CodedInputStream;->popLimit(I)V
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_e
    :goto_4
    move v1, v2

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 5132
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 5134
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 5130
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5135
    :goto_5
    throw p1

    .line 5139
    :cond_f
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    return-object p1

    .line 5035
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 5036
    check-cast p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    .line 5037
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->segment_:Lcom/android/carsdk/protobuf/Internal$FloatList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->segment_:Lcom/android/carsdk/protobuf/Internal$FloatList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloatList(Lcom/android/carsdk/protobuf/Internal$FloatList;Lcom/android/carsdk/protobuf/Internal$FloatList;)Lcom/android/carsdk/protobuf/Internal$FloatList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->segment_:Lcom/android/carsdk/protobuf/Internal$FloatList;

    .line 5038
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->type_:I

    if-eqz p1, :cond_10

    move v0, v2

    goto :goto_6

    :cond_10
    move v0, v1

    :goto_6
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->type_:I

    if-eqz v3, :cond_11

    move v4, v2

    goto :goto_7

    :cond_11
    move v4, v1

    :goto_7
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->type_:I

    .line 5040
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    .line 5041
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->color_:I

    if-eqz p1, :cond_12

    move v0, v2

    goto :goto_8

    :cond_12
    move v0, v1

    :goto_8
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->color_:I

    if-eqz v3, :cond_13

    move v4, v2

    goto :goto_9

    :cond_13
    move v4, v1

    :goto_9
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->color_:I

    .line 5043
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->id_:I

    if-eqz p1, :cond_14

    move v0, v2

    goto :goto_a

    :cond_14
    move v0, v1

    :goto_a
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->id_:I

    if-eqz v3, :cond_15

    move v4, v2

    goto :goto_b

    :cond_15
    move v4, v1

    :goto_b
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->id_:I

    .line 5045
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->attri_:I

    if-eqz p1, :cond_16

    move v0, v2

    goto :goto_c

    :cond_16
    move v0, v1

    :goto_c
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->attri_:I

    if-eqz v3, :cond_17

    move v1, v2

    :cond_17
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->attri_:I

    .line 5047
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_18

    .line 5049
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->bitField0_:I

    :cond_18
    return-object p0

    .line 5032
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;-><init>(Landroid/car/hardware/xpu/XpuApEssentialMsg$1;)V

    return-object p1

    .line 5028
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->segment_:Lcom/android/carsdk/protobuf/Internal$FloatList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$FloatList;->makeImmutable()V

    return-object v0

    .line 5025
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    return-object p1

    .line 5022
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;-><init>()V

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

.method public getAttri()I
    .locals 1

    .line 4558
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->attri_:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .line 4488
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->color_:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 4523
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->id_:I

    return v0
.end method

.method public getSegment(I)F
    .locals 1

    .line 4312
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->segment_:Lcom/android/carsdk/protobuf/Internal$FloatList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$FloatList;->getFloat(I)F

    move-result p1

    return p1
.end method

.method public getSegmentCount()I
    .locals 1

    .line 4302
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->segment_:Lcom/android/carsdk/protobuf/Internal$FloatList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$FloatList;->size()I

    move-result v0

    return v0
.end method

.method public getSegmentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 4292
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->segment_:Lcom/android/carsdk/protobuf/Internal$FloatList;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 4607
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 4613
    :cond_0
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->getSegmentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x0

    .line 4615
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->getSegmentList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 4617
    iget v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->type_:I

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    .line 4619
    invoke-static {v3, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 4621
    :cond_1
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 4623
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->getSize()Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 4625
    :cond_2
    iget v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->color_:I

    if-eqz v2, :cond_3

    .line 4627
    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4629
    :cond_3
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->id_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 4631
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4633
    :cond_4
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->attri_:I

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 4635
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4637
    :cond_5
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->memoizedSerializedSize:I

    return v0
.end method

.method public getSize()Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;
    .locals 1

    .line 4422
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 4377
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->type_:I

    return v0
.end method

.method public hasSize()Z
    .locals 1

    .line 4412
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4585
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->getSerializedSize()I

    const/4 v0, 0x0

    .line 4586
    :goto_0
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->segment_:Lcom/android/carsdk/protobuf/Internal$FloatList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$FloatList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4587
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->segment_:Lcom/android/carsdk/protobuf/Internal$FloatList;

    invoke-interface {v1, v0}, Lcom/android/carsdk/protobuf/Internal$FloatList;->getFloat(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4589
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->type_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 4590
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4592
    :cond_1
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 4593
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->getSize()Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 4595
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->color_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 4596
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4598
    :cond_3
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->id_:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 4599
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 4601
    :cond_4
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->attri_:I

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 4602
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_5
    return-void
.end method

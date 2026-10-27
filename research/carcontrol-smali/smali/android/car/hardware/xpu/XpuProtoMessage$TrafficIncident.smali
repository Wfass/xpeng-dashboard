.class public final Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncidentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrafficIncident"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncidentOrBuilder;"
    }
.end annotation


# static fields
.field public static final CREDIBILITY_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

.field public static final DESC_FIELD_NUMBER:I = 0x3

.field public static final EVENT_TYPE_FIELD_NUMBER:I = 0x9

.field public static final ID_FIELD_NUMBER:I = 0x8

.field public static final LANE_FIELD_NUMBER:I = 0x10

.field public static final LAYER_ID_FIELD_NUMBER:I = 0xa

.field public static final LAYER_TAG_FIELD_NUMBER:I = 0xb

.field public static final LINK_INDEX_FIELD_NUMBER:I = 0xd

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;",
            ">;"
        }
    .end annotation
.end field

.field public static final POS_FIELD_NUMBER:I = 0x1

.field public static final PRIORITY_FIELD_NUMBER:I = 0x5

.field public static final REVERSED_FIELD_NUMBER:I = 0xf

.field public static final ROAD_CLASS_FIELD_NUMBER:I = 0x11

.field public static final SEG_INDEX_FIELD_NUMBER:I = 0xc

.field public static final SOURCE_FIELD_NUMBER:I = 0x7

.field public static final TITLE_FIELD_NUMBER:I = 0x2

.field public static final TITLE_TYPE_FIELD_NUMBER:I = 0xe

.field public static final TYPE_FIELD_NUMBER:I = 0x4


# instance fields
.field private credibility_:I

.field private desc_:Ljava/lang/String;

.field private eventType_:J

.field private id_:J

.field private lane_:I

.field private layerId_:J

.field private layerTag_:J

.field private linkIndex_:I

.field private pos_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

.field private priority_:I

.field private reversed_:I

.field private roadClass_:I

.field private segIndex_:I

.field private source_:I

.field private titleType_:I

.field private title_:Ljava/lang/String;

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13668
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    .line 13669
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 12315
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 12316
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->title_:Ljava/lang/String;

    .line 12317
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->desc_:Ljava/lang/String;

    const/4 v0, 0x0

    .line 12318
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->type_:I

    .line 12319
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->priority_:I

    .line 12320
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->credibility_:I

    .line 12321
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->source_:I

    const-wide/16 v1, 0x0

    .line 12322
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->id_:J

    .line 12323
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->eventType_:J

    .line 12324
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->layerId_:J

    .line 12325
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->layerTag_:J

    .line 12326
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->segIndex_:I

    .line 12327
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->linkIndex_:I

    .line 12328
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->titleType_:I

    .line 12329
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->reversed_:I

    .line 12330
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->lane_:I

    .line 12331
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->roadClass_:I

    return-void
.end method

.method static synthetic access$26900()Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;
    .locals 1

    .line 12310
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    return-object v0
.end method

.method static synthetic access$27000(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 12310
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->setPos(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-void
.end method

.method static synthetic access$27100(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 0

    .line 12310
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->setPos(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$27200(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 12310
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->mergePos(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-void
.end method

.method static synthetic access$27300(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V
    .locals 0

    .line 12310
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->clearPos()V

    return-void
.end method

.method static synthetic access$27400(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;Ljava/lang/String;)V
    .locals 0

    .line 12310
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$27500(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V
    .locals 0

    .line 12310
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->clearTitle()V

    return-void
.end method

.method static synthetic access$27600(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 12310
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->setTitleBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$27700(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;Ljava/lang/String;)V
    .locals 0

    .line 12310
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->setDesc(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$27800(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V
    .locals 0

    .line 12310
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->clearDesc()V

    return-void
.end method

.method static synthetic access$27900(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 12310
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->setDescBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$28000(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;I)V
    .locals 0

    .line 12310
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->setType(I)V

    return-void
.end method

.method static synthetic access$28100(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V
    .locals 0

    .line 12310
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->clearType()V

    return-void
.end method

.method static synthetic access$28200(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;I)V
    .locals 0

    .line 12310
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->setPriority(I)V

    return-void
.end method

.method static synthetic access$28300(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V
    .locals 0

    .line 12310
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->clearPriority()V

    return-void
.end method

.method static synthetic access$28400(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;I)V
    .locals 0

    .line 12310
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->setCredibility(I)V

    return-void
.end method

.method static synthetic access$28500(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V
    .locals 0

    .line 12310
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->clearCredibility()V

    return-void
.end method

.method static synthetic access$28600(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;I)V
    .locals 0

    .line 12310
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->setSource(I)V

    return-void
.end method

.method static synthetic access$28700(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V
    .locals 0

    .line 12310
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->clearSource()V

    return-void
.end method

.method static synthetic access$28800(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;J)V
    .locals 0

    .line 12310
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->setId(J)V

    return-void
.end method

.method static synthetic access$28900(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V
    .locals 0

    .line 12310
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->clearId()V

    return-void
.end method

.method static synthetic access$29000(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;J)V
    .locals 0

    .line 12310
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->setEventType(J)V

    return-void
.end method

.method static synthetic access$29100(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V
    .locals 0

    .line 12310
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->clearEventType()V

    return-void
.end method

.method static synthetic access$29200(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;J)V
    .locals 0

    .line 12310
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->setLayerId(J)V

    return-void
.end method

.method static synthetic access$29300(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V
    .locals 0

    .line 12310
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->clearLayerId()V

    return-void
.end method

.method static synthetic access$29400(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;J)V
    .locals 0

    .line 12310
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->setLayerTag(J)V

    return-void
.end method

.method static synthetic access$29500(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V
    .locals 0

    .line 12310
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->clearLayerTag()V

    return-void
.end method

.method static synthetic access$29600(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;I)V
    .locals 0

    .line 12310
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->setSegIndex(I)V

    return-void
.end method

.method static synthetic access$29700(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V
    .locals 0

    .line 12310
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->clearSegIndex()V

    return-void
.end method

.method static synthetic access$29800(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;I)V
    .locals 0

    .line 12310
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->setLinkIndex(I)V

    return-void
.end method

.method static synthetic access$29900(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V
    .locals 0

    .line 12310
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->clearLinkIndex()V

    return-void
.end method

.method static synthetic access$30000(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;I)V
    .locals 0

    .line 12310
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->setTitleType(I)V

    return-void
.end method

.method static synthetic access$30100(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V
    .locals 0

    .line 12310
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->clearTitleType()V

    return-void
.end method

.method static synthetic access$30200(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;I)V
    .locals 0

    .line 12310
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->setReversed(I)V

    return-void
.end method

.method static synthetic access$30300(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V
    .locals 0

    .line 12310
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->clearReversed()V

    return-void
.end method

.method static synthetic access$30400(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;I)V
    .locals 0

    .line 12310
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->setLane(I)V

    return-void
.end method

.method static synthetic access$30500(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V
    .locals 0

    .line 12310
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->clearLane()V

    return-void
.end method

.method static synthetic access$30600(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;I)V
    .locals 0

    .line 12310
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->setRoadClass(I)V

    return-void
.end method

.method static synthetic access$30700(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V
    .locals 0

    .line 12310
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->clearRoadClass()V

    return-void
.end method

.method private clearCredibility()V
    .locals 1

    const/4 v0, 0x0

    .line 12543
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->credibility_:I

    return-void
.end method

.method private clearDesc()V
    .locals 1

    .line 12462
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->getDesc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->desc_:Ljava/lang/String;

    return-void
.end method

.method private clearEventType()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 12612
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->eventType_:J

    return-void
.end method

.method private clearId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 12589
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->id_:J

    return-void
.end method

.method private clearLane()V
    .locals 1

    const/4 v0, 0x0

    .line 12773
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->lane_:I

    return-void
.end method

.method private clearLayerId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 12635
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->layerId_:J

    return-void
.end method

.method private clearLayerTag()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 12658
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->layerTag_:J

    return-void
.end method

.method private clearLinkIndex()V
    .locals 1

    const/4 v0, 0x0

    .line 12704
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->linkIndex_:I

    return-void
.end method

.method private clearPos()V
    .locals 1

    const/4 v0, 0x0

    .line 12381
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    return-void
.end method

.method private clearPriority()V
    .locals 1

    const/4 v0, 0x0

    .line 12520
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->priority_:I

    return-void
.end method

.method private clearReversed()V
    .locals 1

    const/4 v0, 0x0

    .line 12750
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->reversed_:I

    return-void
.end method

.method private clearRoadClass()V
    .locals 1

    const/4 v0, 0x0

    .line 12796
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->roadClass_:I

    return-void
.end method

.method private clearSegIndex()V
    .locals 1

    const/4 v0, 0x0

    .line 12681
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->segIndex_:I

    return-void
.end method

.method private clearSource()V
    .locals 1

    const/4 v0, 0x0

    .line 12566
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->source_:I

    return-void
.end method

.method private clearTitle()V
    .locals 1

    .line 12416
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->title_:Ljava/lang/String;

    return-void
.end method

.method private clearTitleType()V
    .locals 1

    const/4 v0, 0x0

    .line 12727
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->titleType_:I

    return-void
.end method

.method private clearType()V
    .locals 1

    const/4 v0, 0x0

    .line 12497
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->type_:I

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;
    .locals 1

    .line 13673
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    return-object v0
.end method

.method private mergePos(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 2

    .line 12369
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v0, :cond_0

    .line 12370
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 12371
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    .line 12372
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    goto :goto_0

    .line 12374
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 12993
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;
    .locals 1

    .line 12996
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12970
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12976
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12934
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12941
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12981
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12988
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12958
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12965
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12946
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12953
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;",
            ">;"
        }
    .end annotation

    .line 13679
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCredibility(I)V
    .locals 0

    .line 12536
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->credibility_:I

    return-void
.end method

.method private setDesc(Ljava/lang/String;)V
    .locals 0

    .line 12452
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12455
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->desc_:Ljava/lang/String;

    return-void
.end method

.method private setDescBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 12470
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12472
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 12474
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->desc_:Ljava/lang/String;

    return-void
.end method

.method private setEventType(J)V
    .locals 0

    .line 12605
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->eventType_:J

    return-void
.end method

.method private setId(J)V
    .locals 0

    .line 12582
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->id_:J

    return-void
.end method

.method private setLane(I)V
    .locals 0

    .line 12766
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->lane_:I

    return-void
.end method

.method private setLayerId(J)V
    .locals 0

    .line 12628
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->layerId_:J

    return-void
.end method

.method private setLayerTag(J)V
    .locals 0

    .line 12651
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->layerTag_:J

    return-void
.end method

.method private setLinkIndex(I)V
    .locals 0

    .line 12697
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->linkIndex_:I

    return-void
.end method

.method private setPos(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 0

    .line 12362
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    return-void
.end method

.method private setPos(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 12352
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12354
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    return-void
.end method

.method private setPriority(I)V
    .locals 0

    .line 12513
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->priority_:I

    return-void
.end method

.method private setReversed(I)V
    .locals 0

    .line 12743
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->reversed_:I

    return-void
.end method

.method private setRoadClass(I)V
    .locals 0

    .line 12789
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->roadClass_:I

    return-void
.end method

.method private setSegIndex(I)V
    .locals 0

    .line 12674
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->segIndex_:I

    return-void
.end method

.method private setSource(I)V
    .locals 0

    .line 12559
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->source_:I

    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 0

    .line 12406
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12409
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->title_:Ljava/lang/String;

    return-void
.end method

.method private setTitleBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 12424
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12426
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 12428
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->title_:Ljava/lang/String;

    return-void
.end method

.method private setTitleType(I)V
    .locals 0

    .line 12720
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->titleType_:I

    return-void
.end method

.method private setType(I)V
    .locals 0

    .line 12490
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->type_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 13469
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 13661
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 13652
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    monitor-enter p1

    .line 13653
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 13654
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 13656
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 13658
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 13524
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 13526
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_4

    .line 13531
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 13537
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    goto/16 :goto_4

    .line 13634
    :sswitch_0
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->roadClass_:I

    goto :goto_1

    .line 13629
    :sswitch_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->lane_:I

    goto :goto_1

    .line 13624
    :sswitch_2
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->reversed_:I

    goto :goto_1

    .line 13619
    :sswitch_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->titleType_:I

    goto :goto_1

    .line 13614
    :sswitch_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->linkIndex_:I

    goto :goto_1

    .line 13609
    :sswitch_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->segIndex_:I

    goto :goto_1

    .line 13604
    :sswitch_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->layerTag_:J

    goto :goto_1

    .line 13599
    :sswitch_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->layerId_:J

    goto :goto_1

    .line 13594
    :sswitch_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->eventType_:J

    goto :goto_1

    .line 13589
    :sswitch_9
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->id_:J

    goto :goto_1

    .line 13584
    :sswitch_a
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->source_:I

    goto :goto_1

    .line 13579
    :sswitch_b
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->credibility_:I

    goto :goto_1

    .line 13574
    :sswitch_c
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->priority_:I

    goto :goto_1

    .line 13569
    :sswitch_d
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->type_:I

    goto :goto_1

    .line 13562
    :sswitch_e
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 13564
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->desc_:Ljava/lang/String;

    goto :goto_1

    .line 13556
    :sswitch_f
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 13558
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->title_:Ljava/lang/String;

    goto :goto_1

    .line 13544
    :sswitch_10
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz p1, :cond_3

    .line 13545
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;

    goto :goto_2

    :cond_3
    move-object p1, v0

    .line 13547
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz p1, :cond_2

    .line 13549
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 13550
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_3
    :sswitch_11
    move v1, v2

    goto/16 :goto_1

    :goto_4
    if-nez p1, :cond_2

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 13642
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 13644
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 13640
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13645
    :goto_5
    throw p1

    .line 13649
    :cond_4
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    return-object p1

    .line 13483
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 13484
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    .line 13485
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    .line 13486
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->title_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->title_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->title_:Ljava/lang/String;

    .line 13487
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->title_:Ljava/lang/String;

    .line 13486
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->title_:Ljava/lang/String;

    .line 13488
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->desc_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->desc_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->desc_:Ljava/lang/String;

    .line 13489
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->desc_:Ljava/lang/String;

    .line 13488
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->desc_:Ljava/lang/String;

    .line 13490
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->type_:I

    if-eqz p1, :cond_5

    move v0, v2

    goto :goto_6

    :cond_5
    move v0, v1

    :goto_6
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->type_:I

    if-eqz v3, :cond_6

    move v4, v2

    goto :goto_7

    :cond_6
    move v4, v1

    :goto_7
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->type_:I

    .line 13492
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->priority_:I

    if-eqz p1, :cond_7

    move v0, v2

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->priority_:I

    if-eqz v3, :cond_8

    move v4, v2

    goto :goto_9

    :cond_8
    move v4, v1

    :goto_9
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->priority_:I

    .line 13494
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->credibility_:I

    if-eqz p1, :cond_9

    move v0, v2

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->credibility_:I

    if-eqz v3, :cond_a

    move v4, v2

    goto :goto_b

    :cond_a
    move v4, v1

    :goto_b
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->credibility_:I

    .line 13496
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->source_:I

    if-eqz p1, :cond_b

    move v0, v2

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->source_:I

    if-eqz v3, :cond_c

    move v4, v2

    goto :goto_d

    :cond_c
    move v4, v1

    :goto_d
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->source_:I

    .line 13498
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->id_:J

    const-wide/16 v10, 0x0

    cmp-long p1, v5, v10

    if-eqz p1, :cond_d

    move v4, v2

    goto :goto_e

    :cond_d
    move v4, v1

    :goto_e
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->id_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_e

    move v7, v2

    goto :goto_f

    :cond_e
    move v7, v1

    :goto_f
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->id_:J

    .line 13500
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->eventType_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_f

    move v4, v2

    goto :goto_10

    :cond_f
    move v4, v1

    :goto_10
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->eventType_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_10

    move v7, v2

    goto :goto_11

    :cond_10
    move v7, v1

    :goto_11
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->eventType_:J

    .line 13502
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->layerId_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_11

    move v4, v2

    goto :goto_12

    :cond_11
    move v4, v1

    :goto_12
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->layerId_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_12

    move v7, v2

    goto :goto_13

    :cond_12
    move v7, v1

    :goto_13
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->layerId_:J

    .line 13504
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->layerTag_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_13

    move v4, v2

    goto :goto_14

    :cond_13
    move v4, v1

    :goto_14
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->layerTag_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_14

    move v7, v2

    goto :goto_15

    :cond_14
    move v7, v1

    :goto_15
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->layerTag_:J

    .line 13506
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->segIndex_:I

    if-eqz p1, :cond_15

    move v0, v2

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->segIndex_:I

    if-eqz v3, :cond_16

    move v4, v2

    goto :goto_17

    :cond_16
    move v4, v1

    :goto_17
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->segIndex_:I

    .line 13508
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->linkIndex_:I

    if-eqz p1, :cond_17

    move v0, v2

    goto :goto_18

    :cond_17
    move v0, v1

    :goto_18
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->linkIndex_:I

    if-eqz v3, :cond_18

    move v4, v2

    goto :goto_19

    :cond_18
    move v4, v1

    :goto_19
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->linkIndex_:I

    .line 13510
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->titleType_:I

    if-eqz p1, :cond_19

    move v0, v2

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->titleType_:I

    if-eqz v3, :cond_1a

    move v4, v2

    goto :goto_1b

    :cond_1a
    move v4, v1

    :goto_1b
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->titleType_:I

    .line 13512
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->reversed_:I

    if-eqz p1, :cond_1b

    move v0, v2

    goto :goto_1c

    :cond_1b
    move v0, v1

    :goto_1c
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->reversed_:I

    if-eqz v3, :cond_1c

    move v4, v2

    goto :goto_1d

    :cond_1c
    move v4, v1

    :goto_1d
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->reversed_:I

    .line 13514
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->lane_:I

    if-eqz p1, :cond_1d

    move v0, v2

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->lane_:I

    if-eqz v3, :cond_1e

    move v4, v2

    goto :goto_1f

    :cond_1e
    move v4, v1

    :goto_1f
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->lane_:I

    .line 13516
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->roadClass_:I

    if-eqz p1, :cond_1f

    move v0, v2

    goto :goto_20

    :cond_1f
    move v0, v1

    :goto_20
    iget p3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->roadClass_:I

    if-eqz p3, :cond_20

    move v1, v2

    :cond_20
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->roadClass_:I

    .line 13518
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 13480
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 13474
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    return-object p1

    .line 13471
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;-><init>()V

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

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_11
        0xa -> :sswitch_10
        0x12 -> :sswitch_f
        0x1a -> :sswitch_e
        0x20 -> :sswitch_d
        0x28 -> :sswitch_c
        0x30 -> :sswitch_b
        0x38 -> :sswitch_a
        0x40 -> :sswitch_9
        0x48 -> :sswitch_8
        0x50 -> :sswitch_7
        0x58 -> :sswitch_6
        0x60 -> :sswitch_5
        0x68 -> :sswitch_4
        0x70 -> :sswitch_3
        0x78 -> :sswitch_2
        0x80 -> :sswitch_1
        0x88 -> :sswitch_0
    .end sparse-switch
.end method

.method public getCredibility()I
    .locals 1

    .line 12529
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->credibility_:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 12437
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->desc_:Ljava/lang/String;

    return-object v0
.end method

.method public getDescBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 12444
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->desc_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEventType()J
    .locals 2

    .line 12598
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->eventType_:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .line 12575
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->id_:J

    return-wide v0
.end method

.method public getLane()I
    .locals 1

    .line 12759
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->lane_:I

    return v0
.end method

.method public getLayerId()J
    .locals 2

    .line 12621
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->layerId_:J

    return-wide v0
.end method

.method public getLayerTag()J
    .locals 2

    .line 12644
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->layerTag_:J

    return-wide v0
.end method

.method public getLinkIndex()I
    .locals 1

    .line 12690
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->linkIndex_:I

    return v0
.end method

.method public getPos()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
    .locals 1

    .line 12345
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 12506
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->priority_:I

    return v0
.end method

.method public getReversed()I
    .locals 1

    .line 12736
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->reversed_:I

    return v0
.end method

.method public getRoadClass()I
    .locals 1

    .line 12782
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->roadClass_:I

    return v0
.end method

.method public getSegIndex()I
    .locals 1

    .line 12667
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->segIndex_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 12855
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 12859
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 12861
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->getPos()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12863
    :cond_1
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->title_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 12865
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12867
    :cond_2
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->desc_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 12869
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 12871
    :cond_3
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->type_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 12873
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12875
    :cond_4
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->priority_:I

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 12877
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12879
    :cond_5
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->credibility_:I

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 12881
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12883
    :cond_6
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->source_:I

    if-eqz v1, :cond_7

    const/4 v2, 0x7

    .line 12885
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12887
    :cond_7
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->id_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_8

    const/16 v5, 0x8

    .line 12889
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12891
    :cond_8
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->eventType_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_9

    const/16 v5, 0x9

    .line 12893
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12895
    :cond_9
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->layerId_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_a

    const/16 v5, 0xa

    .line 12897
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12899
    :cond_a
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->layerTag_:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_b

    const/16 v3, 0xb

    .line 12901
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 12903
    :cond_b
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->segIndex_:I

    if-eqz v1, :cond_c

    const/16 v2, 0xc

    .line 12905
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12907
    :cond_c
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->linkIndex_:I

    if-eqz v1, :cond_d

    const/16 v2, 0xd

    .line 12909
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12911
    :cond_d
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->titleType_:I

    if-eqz v1, :cond_e

    const/16 v2, 0xe

    .line 12913
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12915
    :cond_e
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->reversed_:I

    if-eqz v1, :cond_f

    const/16 v2, 0xf

    .line 12917
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12919
    :cond_f
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->lane_:I

    if-eqz v1, :cond_10

    const/16 v2, 0x10

    .line 12921
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12923
    :cond_10
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->roadClass_:I

    if-eqz v1, :cond_11

    const/16 v2, 0x11

    .line 12925
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 12927
    :cond_11
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->memoizedSerializedSize:I

    return v0
.end method

.method public getSource()I
    .locals 1

    .line 12552
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->source_:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 12391
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 12398
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->title_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTitleType()I
    .locals 1

    .line 12713
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->titleType_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 12483
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->type_:I

    return v0
.end method

.method public hasPos()Z
    .locals 1

    .line 12339
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12801
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 12802
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->getPos()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 12804
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->title_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 12805
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 12807
    :cond_1
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->desc_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 12808
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 12810
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->type_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 12811
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 12813
    :cond_3
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->priority_:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 12814
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 12816
    :cond_4
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->credibility_:I

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 12817
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 12819
    :cond_5
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->source_:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 12820
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 12822
    :cond_6
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->id_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    const/16 v4, 0x8

    .line 12823
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 12825
    :cond_7
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->eventType_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_8

    const/16 v4, 0x9

    .line 12826
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 12828
    :cond_8
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->layerId_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    const/16 v4, 0xa

    .line 12829
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 12831
    :cond_9
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->layerTag_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_a

    const/16 v2, 0xb

    .line 12832
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 12834
    :cond_a
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->segIndex_:I

    if-eqz v0, :cond_b

    const/16 v1, 0xc

    .line 12835
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 12837
    :cond_b
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->linkIndex_:I

    if-eqz v0, :cond_c

    const/16 v1, 0xd

    .line 12838
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 12840
    :cond_c
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->titleType_:I

    if-eqz v0, :cond_d

    const/16 v1, 0xe

    .line 12841
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 12843
    :cond_d
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->reversed_:I

    if-eqz v0, :cond_e

    const/16 v1, 0xf

    .line 12844
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 12846
    :cond_e
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->lane_:I

    if-eqz v0, :cond_f

    const/16 v1, 0x10

    .line 12847
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 12849
    :cond_f
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->roadClass_:I

    if-eqz v0, :cond_10

    const/16 v1, 0x11

    .line 12850
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_10
    return-void
.end method

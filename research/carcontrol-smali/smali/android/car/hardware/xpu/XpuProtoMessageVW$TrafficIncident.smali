.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncidentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrafficIncident"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncidentOrBuilder;"
    }
.end annotation


# static fields
.field public static final CREDIBILITY_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

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
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;",
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

.field private pos_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

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

    .line 14055
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    .line 14056
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 12702
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 12703
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->title_:Ljava/lang/String;

    .line 12704
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->desc_:Ljava/lang/String;

    const/4 v0, 0x0

    .line 12705
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->type_:I

    .line 12706
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->priority_:I

    .line 12707
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->credibility_:I

    .line 12708
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->source_:I

    const-wide/16 v1, 0x0

    .line 12709
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->id_:J

    .line 12710
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->eventType_:J

    .line 12711
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->layerId_:J

    .line 12712
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->layerTag_:J

    .line 12713
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->segIndex_:I

    .line 12714
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->linkIndex_:I

    .line 12715
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->titleType_:I

    .line 12716
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->reversed_:I

    .line 12717
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->lane_:I

    .line 12718
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->roadClass_:I

    return-void
.end method

.method static synthetic access$28200()Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;
    .locals 1

    .line 12697
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    return-object v0
.end method

.method static synthetic access$28300(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 0

    .line 12697
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->setPos(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-void
.end method

.method static synthetic access$28400(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V
    .locals 0

    .line 12697
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->setPos(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$28500(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 0

    .line 12697
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->mergePos(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-void
.end method

.method static synthetic access$28600(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V
    .locals 0

    .line 12697
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->clearPos()V

    return-void
.end method

.method static synthetic access$28700(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;Ljava/lang/String;)V
    .locals 0

    .line 12697
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$28800(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V
    .locals 0

    .line 12697
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->clearTitle()V

    return-void
.end method

.method static synthetic access$28900(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 12697
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->setTitleBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$29000(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;Ljava/lang/String;)V
    .locals 0

    .line 12697
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->setDesc(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$29100(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V
    .locals 0

    .line 12697
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->clearDesc()V

    return-void
.end method

.method static synthetic access$29200(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 12697
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->setDescBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$29300(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;I)V
    .locals 0

    .line 12697
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->setType(I)V

    return-void
.end method

.method static synthetic access$29400(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V
    .locals 0

    .line 12697
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->clearType()V

    return-void
.end method

.method static synthetic access$29500(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;I)V
    .locals 0

    .line 12697
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->setPriority(I)V

    return-void
.end method

.method static synthetic access$29600(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V
    .locals 0

    .line 12697
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->clearPriority()V

    return-void
.end method

.method static synthetic access$29700(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;I)V
    .locals 0

    .line 12697
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->setCredibility(I)V

    return-void
.end method

.method static synthetic access$29800(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V
    .locals 0

    .line 12697
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->clearCredibility()V

    return-void
.end method

.method static synthetic access$29900(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;I)V
    .locals 0

    .line 12697
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->setSource(I)V

    return-void
.end method

.method static synthetic access$30000(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V
    .locals 0

    .line 12697
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->clearSource()V

    return-void
.end method

.method static synthetic access$30100(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;J)V
    .locals 0

    .line 12697
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->setId(J)V

    return-void
.end method

.method static synthetic access$30200(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V
    .locals 0

    .line 12697
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->clearId()V

    return-void
.end method

.method static synthetic access$30300(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;J)V
    .locals 0

    .line 12697
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->setEventType(J)V

    return-void
.end method

.method static synthetic access$30400(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V
    .locals 0

    .line 12697
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->clearEventType()V

    return-void
.end method

.method static synthetic access$30500(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;J)V
    .locals 0

    .line 12697
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->setLayerId(J)V

    return-void
.end method

.method static synthetic access$30600(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V
    .locals 0

    .line 12697
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->clearLayerId()V

    return-void
.end method

.method static synthetic access$30700(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;J)V
    .locals 0

    .line 12697
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->setLayerTag(J)V

    return-void
.end method

.method static synthetic access$30800(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V
    .locals 0

    .line 12697
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->clearLayerTag()V

    return-void
.end method

.method static synthetic access$30900(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;I)V
    .locals 0

    .line 12697
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->setSegIndex(I)V

    return-void
.end method

.method static synthetic access$31000(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V
    .locals 0

    .line 12697
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->clearSegIndex()V

    return-void
.end method

.method static synthetic access$31100(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;I)V
    .locals 0

    .line 12697
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->setLinkIndex(I)V

    return-void
.end method

.method static synthetic access$31200(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V
    .locals 0

    .line 12697
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->clearLinkIndex()V

    return-void
.end method

.method static synthetic access$31300(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;I)V
    .locals 0

    .line 12697
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->setTitleType(I)V

    return-void
.end method

.method static synthetic access$31400(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V
    .locals 0

    .line 12697
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->clearTitleType()V

    return-void
.end method

.method static synthetic access$31500(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;I)V
    .locals 0

    .line 12697
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->setReversed(I)V

    return-void
.end method

.method static synthetic access$31600(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V
    .locals 0

    .line 12697
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->clearReversed()V

    return-void
.end method

.method static synthetic access$31700(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;I)V
    .locals 0

    .line 12697
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->setLane(I)V

    return-void
.end method

.method static synthetic access$31800(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V
    .locals 0

    .line 12697
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->clearLane()V

    return-void
.end method

.method static synthetic access$31900(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;I)V
    .locals 0

    .line 12697
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->setRoadClass(I)V

    return-void
.end method

.method static synthetic access$32000(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V
    .locals 0

    .line 12697
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->clearRoadClass()V

    return-void
.end method

.method private clearCredibility()V
    .locals 1

    const/4 v0, 0x0

    .line 12930
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->credibility_:I

    return-void
.end method

.method private clearDesc()V
    .locals 1

    .line 12849
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->getDesc()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->desc_:Ljava/lang/String;

    return-void
.end method

.method private clearEventType()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 12999
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->eventType_:J

    return-void
.end method

.method private clearId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 12976
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->id_:J

    return-void
.end method

.method private clearLane()V
    .locals 1

    const/4 v0, 0x0

    .line 13160
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->lane_:I

    return-void
.end method

.method private clearLayerId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 13022
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->layerId_:J

    return-void
.end method

.method private clearLayerTag()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 13045
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->layerTag_:J

    return-void
.end method

.method private clearLinkIndex()V
    .locals 1

    const/4 v0, 0x0

    .line 13091
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->linkIndex_:I

    return-void
.end method

.method private clearPos()V
    .locals 1

    const/4 v0, 0x0

    .line 12768
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-void
.end method

.method private clearPriority()V
    .locals 1

    const/4 v0, 0x0

    .line 12907
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->priority_:I

    return-void
.end method

.method private clearReversed()V
    .locals 1

    const/4 v0, 0x0

    .line 13137
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->reversed_:I

    return-void
.end method

.method private clearRoadClass()V
    .locals 1

    const/4 v0, 0x0

    .line 13183
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->roadClass_:I

    return-void
.end method

.method private clearSegIndex()V
    .locals 1

    const/4 v0, 0x0

    .line 13068
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->segIndex_:I

    return-void
.end method

.method private clearSource()V
    .locals 1

    const/4 v0, 0x0

    .line 12953
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->source_:I

    return-void
.end method

.method private clearTitle()V
    .locals 1

    .line 12803
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->title_:Ljava/lang/String;

    return-void
.end method

.method private clearTitleType()V
    .locals 1

    const/4 v0, 0x0

    .line 13114
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->titleType_:I

    return-void
.end method

.method private clearType()V
    .locals 1

    const/4 v0, 0x0

    .line 12884
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->type_:I

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;
    .locals 1

    .line 14060
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    return-object v0
.end method

.method private mergePos(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 2

    .line 12756
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz v0, :cond_0

    .line 12757
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 12758
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    .line 12759
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    goto :goto_0

    .line 12761
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;
    .locals 1

    .line 13380
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;
    .locals 1

    .line 13383
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13357
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13363
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13321
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13328
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13368
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13375
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13345
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13352
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13333
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13340
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;",
            ">;"
        }
    .end annotation

    .line 14066
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCredibility(I)V
    .locals 0

    .line 12923
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->credibility_:I

    return-void
.end method

.method private setDesc(Ljava/lang/String;)V
    .locals 0

    .line 12839
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12842
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->desc_:Ljava/lang/String;

    return-void
.end method

.method private setDescBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 12857
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12859
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 12861
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->desc_:Ljava/lang/String;

    return-void
.end method

.method private setEventType(J)V
    .locals 0

    .line 12992
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->eventType_:J

    return-void
.end method

.method private setId(J)V
    .locals 0

    .line 12969
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->id_:J

    return-void
.end method

.method private setLane(I)V
    .locals 0

    .line 13153
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->lane_:I

    return-void
.end method

.method private setLayerId(J)V
    .locals 0

    .line 13015
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->layerId_:J

    return-void
.end method

.method private setLayerTag(J)V
    .locals 0

    .line 13038
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->layerTag_:J

    return-void
.end method

.method private setLinkIndex(I)V
    .locals 0

    .line 13084
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->linkIndex_:I

    return-void
.end method

.method private setPos(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V
    .locals 0

    .line 12749
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-void
.end method

.method private setPos(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 0

    .line 12739
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12741
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-void
.end method

.method private setPriority(I)V
    .locals 0

    .line 12900
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->priority_:I

    return-void
.end method

.method private setReversed(I)V
    .locals 0

    .line 13130
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->reversed_:I

    return-void
.end method

.method private setRoadClass(I)V
    .locals 0

    .line 13176
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->roadClass_:I

    return-void
.end method

.method private setSegIndex(I)V
    .locals 0

    .line 13061
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->segIndex_:I

    return-void
.end method

.method private setSource(I)V
    .locals 0

    .line 12946
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->source_:I

    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 0

    .line 12793
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12796
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->title_:Ljava/lang/String;

    return-void
.end method

.method private setTitleBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 12811
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12813
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 12815
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->title_:Ljava/lang/String;

    return-void
.end method

.method private setTitleType(I)V
    .locals 0

    .line 13107
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->titleType_:I

    return-void
.end method

.method private setType(I)V
    .locals 0

    .line 12877
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->type_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 13856
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 14048
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 14039
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    monitor-enter p1

    .line 14040
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 14041
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 14043
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 14045
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 13911
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 13913
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_4

    .line 13918
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 13924
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    goto/16 :goto_4

    .line 14021
    :sswitch_0
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->roadClass_:I

    goto :goto_1

    .line 14016
    :sswitch_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->lane_:I

    goto :goto_1

    .line 14011
    :sswitch_2
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->reversed_:I

    goto :goto_1

    .line 14006
    :sswitch_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->titleType_:I

    goto :goto_1

    .line 14001
    :sswitch_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->linkIndex_:I

    goto :goto_1

    .line 13996
    :sswitch_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->segIndex_:I

    goto :goto_1

    .line 13991
    :sswitch_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->layerTag_:J

    goto :goto_1

    .line 13986
    :sswitch_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->layerId_:J

    goto :goto_1

    .line 13981
    :sswitch_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->eventType_:J

    goto :goto_1

    .line 13976
    :sswitch_9
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->id_:J

    goto :goto_1

    .line 13971
    :sswitch_a
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->source_:I

    goto :goto_1

    .line 13966
    :sswitch_b
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->credibility_:I

    goto :goto_1

    .line 13961
    :sswitch_c
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->priority_:I

    goto :goto_1

    .line 13956
    :sswitch_d
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->type_:I

    goto :goto_1

    .line 13949
    :sswitch_e
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 13951
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->desc_:Ljava/lang/String;

    goto :goto_1

    .line 13943
    :sswitch_f
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 13945
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->title_:Ljava/lang/String;

    goto :goto_1

    .line 13931
    :sswitch_10
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz p1, :cond_3

    .line 13932
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;

    goto :goto_2

    :cond_3
    move-object p1, v0

    .line 13934
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz p1, :cond_2

    .line 13936
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 13937
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
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

    .line 14029
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 14031
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 14027
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14032
    :goto_5
    throw p1

    .line 14036
    :cond_4
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    return-object p1

    .line 13870
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 13871
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    .line 13872
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    .line 13873
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->title_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->title_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->title_:Ljava/lang/String;

    .line 13874
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->title_:Ljava/lang/String;

    .line 13873
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->title_:Ljava/lang/String;

    .line 13875
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->desc_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->desc_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->desc_:Ljava/lang/String;

    .line 13876
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->desc_:Ljava/lang/String;

    .line 13875
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->desc_:Ljava/lang/String;

    .line 13877
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->type_:I

    if-eqz p1, :cond_5

    move v0, v2

    goto :goto_6

    :cond_5
    move v0, v1

    :goto_6
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->type_:I

    if-eqz v3, :cond_6

    move v4, v2

    goto :goto_7

    :cond_6
    move v4, v1

    :goto_7
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->type_:I

    .line 13879
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->priority_:I

    if-eqz p1, :cond_7

    move v0, v2

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->priority_:I

    if-eqz v3, :cond_8

    move v4, v2

    goto :goto_9

    :cond_8
    move v4, v1

    :goto_9
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->priority_:I

    .line 13881
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->credibility_:I

    if-eqz p1, :cond_9

    move v0, v2

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->credibility_:I

    if-eqz v3, :cond_a

    move v4, v2

    goto :goto_b

    :cond_a
    move v4, v1

    :goto_b
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->credibility_:I

    .line 13883
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->source_:I

    if-eqz p1, :cond_b

    move v0, v2

    goto :goto_c

    :cond_b
    move v0, v1

    :goto_c
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->source_:I

    if-eqz v3, :cond_c

    move v4, v2

    goto :goto_d

    :cond_c
    move v4, v1

    :goto_d
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->source_:I

    .line 13885
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->id_:J

    const-wide/16 v10, 0x0

    cmp-long p1, v5, v10

    if-eqz p1, :cond_d

    move v4, v2

    goto :goto_e

    :cond_d
    move v4, v1

    :goto_e
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->id_:J

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

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->id_:J

    .line 13887
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->eventType_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_f

    move v4, v2

    goto :goto_10

    :cond_f
    move v4, v1

    :goto_10
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->eventType_:J

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

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->eventType_:J

    .line 13889
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->layerId_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_11

    move v4, v2

    goto :goto_12

    :cond_11
    move v4, v1

    :goto_12
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->layerId_:J

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

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->layerId_:J

    .line 13891
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->layerTag_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_13

    move v4, v2

    goto :goto_14

    :cond_13
    move v4, v1

    :goto_14
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->layerTag_:J

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

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->layerTag_:J

    .line 13893
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->segIndex_:I

    if-eqz p1, :cond_15

    move v0, v2

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->segIndex_:I

    if-eqz v3, :cond_16

    move v4, v2

    goto :goto_17

    :cond_16
    move v4, v1

    :goto_17
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->segIndex_:I

    .line 13895
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->linkIndex_:I

    if-eqz p1, :cond_17

    move v0, v2

    goto :goto_18

    :cond_17
    move v0, v1

    :goto_18
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->linkIndex_:I

    if-eqz v3, :cond_18

    move v4, v2

    goto :goto_19

    :cond_18
    move v4, v1

    :goto_19
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->linkIndex_:I

    .line 13897
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->titleType_:I

    if-eqz p1, :cond_19

    move v0, v2

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->titleType_:I

    if-eqz v3, :cond_1a

    move v4, v2

    goto :goto_1b

    :cond_1a
    move v4, v1

    :goto_1b
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->titleType_:I

    .line 13899
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->reversed_:I

    if-eqz p1, :cond_1b

    move v0, v2

    goto :goto_1c

    :cond_1b
    move v0, v1

    :goto_1c
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->reversed_:I

    if-eqz v3, :cond_1c

    move v4, v2

    goto :goto_1d

    :cond_1c
    move v4, v1

    :goto_1d
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->reversed_:I

    .line 13901
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->lane_:I

    if-eqz p1, :cond_1d

    move v0, v2

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->lane_:I

    if-eqz v3, :cond_1e

    move v4, v2

    goto :goto_1f

    :cond_1e
    move v4, v1

    :goto_1f
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->lane_:I

    .line 13903
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->roadClass_:I

    if-eqz p1, :cond_1f

    move v0, v2

    goto :goto_20

    :cond_1f
    move v0, v1

    :goto_20
    iget p3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->roadClass_:I

    if-eqz p3, :cond_20

    move v1, v2

    :cond_20
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->roadClass_:I

    .line 13905
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 13867
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 13861
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    return-object p1

    .line 13858
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;-><init>()V

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

    .line 12916
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->credibility_:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 12824
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->desc_:Ljava/lang/String;

    return-object v0
.end method

.method public getDescBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 12831
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->desc_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEventType()J
    .locals 2

    .line 12985
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->eventType_:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .line 12962
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->id_:J

    return-wide v0
.end method

.method public getLane()I
    .locals 1

    .line 13146
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->lane_:I

    return v0
.end method

.method public getLayerId()J
    .locals 2

    .line 13008
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->layerId_:J

    return-wide v0
.end method

.method public getLayerTag()J
    .locals 2

    .line 13031
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->layerTag_:J

    return-wide v0
.end method

.method public getLinkIndex()I
    .locals 1

    .line 13077
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->linkIndex_:I

    return v0
.end method

.method public getPos()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
    .locals 1

    .line 12732
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 12893
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->priority_:I

    return v0
.end method

.method public getReversed()I
    .locals 1

    .line 13123
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->reversed_:I

    return v0
.end method

.method public getRoadClass()I
    .locals 1

    .line 13169
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->roadClass_:I

    return v0
.end method

.method public getSegIndex()I
    .locals 1

    .line 13054
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->segIndex_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 13242
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 13246
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 13248
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->getPos()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13250
    :cond_1
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->title_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 13252
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13254
    :cond_2
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->desc_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 13256
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13258
    :cond_3
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->type_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 13260
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13262
    :cond_4
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->priority_:I

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 13264
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13266
    :cond_5
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->credibility_:I

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 13268
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13270
    :cond_6
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->source_:I

    if-eqz v1, :cond_7

    const/4 v2, 0x7

    .line 13272
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13274
    :cond_7
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->id_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_8

    const/16 v5, 0x8

    .line 13276
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 13278
    :cond_8
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->eventType_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_9

    const/16 v5, 0x9

    .line 13280
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 13282
    :cond_9
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->layerId_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_a

    const/16 v5, 0xa

    .line 13284
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 13286
    :cond_a
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->layerTag_:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_b

    const/16 v3, 0xb

    .line 13288
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 13290
    :cond_b
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->segIndex_:I

    if-eqz v1, :cond_c

    const/16 v2, 0xc

    .line 13292
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13294
    :cond_c
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->linkIndex_:I

    if-eqz v1, :cond_d

    const/16 v2, 0xd

    .line 13296
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13298
    :cond_d
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->titleType_:I

    if-eqz v1, :cond_e

    const/16 v2, 0xe

    .line 13300
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13302
    :cond_e
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->reversed_:I

    if-eqz v1, :cond_f

    const/16 v2, 0xf

    .line 13304
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13306
    :cond_f
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->lane_:I

    if-eqz v1, :cond_10

    const/16 v2, 0x10

    .line 13308
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13310
    :cond_10
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->roadClass_:I

    if-eqz v1, :cond_11

    const/16 v2, 0x11

    .line 13312
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 13314
    :cond_11
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->memoizedSerializedSize:I

    return v0
.end method

.method public getSource()I
    .locals 1

    .line 12939
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->source_:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 12778
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 12785
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->title_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTitleType()I
    .locals 1

    .line 13100
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->titleType_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 12870
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->type_:I

    return v0
.end method

.method public hasPos()Z
    .locals 1

    .line 12726
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

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

    .line 13188
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->pos_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 13189
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->getPos()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 13191
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->title_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 13192
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 13194
    :cond_1
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->desc_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 13195
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 13197
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->type_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 13198
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 13200
    :cond_3
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->priority_:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 13201
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 13203
    :cond_4
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->credibility_:I

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 13204
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 13206
    :cond_5
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->source_:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 13207
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 13209
    :cond_6
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->id_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    const/16 v4, 0x8

    .line 13210
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 13212
    :cond_7
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->eventType_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_8

    const/16 v4, 0x9

    .line 13213
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 13215
    :cond_8
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->layerId_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    const/16 v4, 0xa

    .line 13216
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 13218
    :cond_9
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->layerTag_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_a

    const/16 v2, 0xb

    .line 13219
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 13221
    :cond_a
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->segIndex_:I

    if-eqz v0, :cond_b

    const/16 v1, 0xc

    .line 13222
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 13224
    :cond_b
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->linkIndex_:I

    if-eqz v0, :cond_c

    const/16 v1, 0xd

    .line 13225
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 13227
    :cond_c
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->titleType_:I

    if-eqz v0, :cond_d

    const/16 v1, 0xe

    .line 13228
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 13230
    :cond_d
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->reversed_:I

    if-eqz v0, :cond_e

    const/16 v1, 0xf

    .line 13231
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 13233
    :cond_e
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->lane_:I

    if-eqz v0, :cond_f

    const/16 v1, 0x10

    .line 13234
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 13236
    :cond_f
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->roadClass_:I

    if-eqz v0, :cond_10

    const/16 v1, 0x11

    .line 13237
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_10
    return-void
.end method

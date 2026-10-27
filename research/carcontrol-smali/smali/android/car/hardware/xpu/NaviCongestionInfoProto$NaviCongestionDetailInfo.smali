.class public final Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "NaviCongestionInfoProto.java"

# interfaces
.implements Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/NaviCongestionInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NaviCongestionDetailInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;",
        "Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfoOrBuilder;"
    }
.end annotation


# static fields
.field public static final BEGIN_COOR_INDEX_FIELD_NUMBER:I = 0xd

.field public static final BEGIN_EXACT_LENGTH_FIELD_NUMBER:I = 0xb

.field public static final BEGIN_EXACT_POINT_FIELD_NUMBER:I = 0xc

.field public static final BEGIN_LINK_INDEX_FIELD_NUMBER:I = 0x4

.field public static final BEGIN_SECTION_INDEX_FIELD_NUMBER:I = 0x5

.field public static final BEGIN_SEGMENT_INDEX_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

.field public static final END_COOR_INDEX_FIELD_NUMBER:I = 0x10

.field public static final END_EXACT_LENGTH_FIELD_NUMBER:I = 0xe

.field public static final END_EXACT_POINT_FIELD_NUMBER:I = 0xf

.field public static final END_LINK_INDEX_FIELD_NUMBER:I = 0x7

.field public static final END_SECTION_INDEX_FIELD_NUMBER:I = 0x8

.field public static final END_SEGMENT_INDEX_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final REMAIN_DIST_FIELD_NUMBER:I = 0xa

.field public static final SCOPE_FLAG_FIELD_NUMBER:I = 0x2

.field public static final STATUS_FIELD_NUMBER:I = 0x9

.field public static final TIME_OF_SECONDS_FIELD_NUMBER:I = 0x1


# instance fields
.field private beginCoorIndex_:I

.field private beginExactLength_:I

.field private beginExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

.field private beginLinkIndex_:I

.field private beginSectionIndex_:I

.field private beginSegmentIndex_:I

.field private endCoorIndex_:I

.field private endExactLength_:I

.field private endExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

.field private endLinkIndex_:I

.field private endSectionIndex_:I

.field private endSegmentIndex_:I

.field private remainDist_:I

.field private scopeFlag_:Z

.field private status_:I

.field private timeOfSeconds_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1519
    new-instance v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-direct {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    .line 1520
    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 226
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 227
    iput v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->timeOfSeconds_:I

    .line 228
    iput-boolean v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->scopeFlag_:Z

    .line 229
    iput v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginSegmentIndex_:I

    .line 230
    iput v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginLinkIndex_:I

    .line 231
    iput v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginSectionIndex_:I

    .line 232
    iput v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endSegmentIndex_:I

    .line 233
    iput v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endLinkIndex_:I

    .line 234
    iput v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endSectionIndex_:I

    .line 235
    iput v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->status_:I

    .line 236
    iput v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->remainDist_:I

    .line 237
    iput v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginExactLength_:I

    .line 238
    iput v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginCoorIndex_:I

    .line 239
    iput v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endExactLength_:I

    .line 240
    iput v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endCoorIndex_:I

    return-void
.end method

.method static synthetic access$000()Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;
    .locals 1

    .line 221
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    return-object v0
.end method

.method static synthetic access$100(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;I)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->setTimeOfSeconds(I)V

    return-void
.end method

.method static synthetic access$1000(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V
    .locals 0

    .line 221
    invoke-direct {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->clearBeginSectionIndex()V

    return-void
.end method

.method static synthetic access$1100(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;I)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->setEndSegmentIndex(I)V

    return-void
.end method

.method static synthetic access$1200(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V
    .locals 0

    .line 221
    invoke-direct {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->clearEndSegmentIndex()V

    return-void
.end method

.method static synthetic access$1300(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;I)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->setEndLinkIndex(I)V

    return-void
.end method

.method static synthetic access$1400(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V
    .locals 0

    .line 221
    invoke-direct {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->clearEndLinkIndex()V

    return-void
.end method

.method static synthetic access$1500(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;I)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->setEndSectionIndex(I)V

    return-void
.end method

.method static synthetic access$1600(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V
    .locals 0

    .line 221
    invoke-direct {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->clearEndSectionIndex()V

    return-void
.end method

.method static synthetic access$1700(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;I)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->setStatusValue(I)V

    return-void
.end method

.method static synthetic access$1800(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->setStatus(Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V
    .locals 0

    .line 221
    invoke-direct {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->clearStatus()V

    return-void
.end method

.method static synthetic access$200(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V
    .locals 0

    .line 221
    invoke-direct {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->clearTimeOfSeconds()V

    return-void
.end method

.method static synthetic access$2000(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;I)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->setRemainDist(I)V

    return-void
.end method

.method static synthetic access$2100(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V
    .locals 0

    .line 221
    invoke-direct {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->clearRemainDist()V

    return-void
.end method

.method static synthetic access$2200(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;I)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->setBeginExactLength(I)V

    return-void
.end method

.method static synthetic access$2300(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V
    .locals 0

    .line 221
    invoke-direct {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->clearBeginExactLength()V

    return-void
.end method

.method static synthetic access$2400(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->setBeginExactPoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->setBeginExactPoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->mergeBeginExactPoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V
    .locals 0

    .line 221
    invoke-direct {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->clearBeginExactPoint()V

    return-void
.end method

.method static synthetic access$2800(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;I)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->setBeginCoorIndex(I)V

    return-void
.end method

.method static synthetic access$2900(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V
    .locals 0

    .line 221
    invoke-direct {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->clearBeginCoorIndex()V

    return-void
.end method

.method static synthetic access$300(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;Z)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->setScopeFlag(Z)V

    return-void
.end method

.method static synthetic access$3000(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;I)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->setEndExactLength(I)V

    return-void
.end method

.method static synthetic access$3100(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V
    .locals 0

    .line 221
    invoke-direct {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->clearEndExactLength()V

    return-void
.end method

.method static synthetic access$3200(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->setEndExactPoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-void
.end method

.method static synthetic access$3300(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->setEndExactPoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$3400(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->mergeEndExactPoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-void
.end method

.method static synthetic access$3500(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V
    .locals 0

    .line 221
    invoke-direct {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->clearEndExactPoint()V

    return-void
.end method

.method static synthetic access$3600(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;I)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->setEndCoorIndex(I)V

    return-void
.end method

.method static synthetic access$3700(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V
    .locals 0

    .line 221
    invoke-direct {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->clearEndCoorIndex()V

    return-void
.end method

.method static synthetic access$400(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V
    .locals 0

    .line 221
    invoke-direct {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->clearScopeFlag()V

    return-void
.end method

.method static synthetic access$500(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;I)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->setBeginSegmentIndex(I)V

    return-void
.end method

.method static synthetic access$600(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V
    .locals 0

    .line 221
    invoke-direct {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->clearBeginSegmentIndex()V

    return-void
.end method

.method static synthetic access$700(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;I)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->setBeginLinkIndex(I)V

    return-void
.end method

.method static synthetic access$800(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V
    .locals 0

    .line 221
    invoke-direct {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->clearBeginLinkIndex()V

    return-void
.end method

.method static synthetic access$900(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;I)V
    .locals 0

    .line 221
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->setBeginSectionIndex(I)V

    return-void
.end method

.method private clearBeginCoorIndex()V
    .locals 1

    const/4 v0, 0x0

    .line 583
    iput v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginCoorIndex_:I

    return-void
.end method

.method private clearBeginExactLength()V
    .locals 1

    const/4 v0, 0x0

    .line 508
    iput v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginExactLength_:I

    return-void
.end method

.method private clearBeginExactPoint()V
    .locals 1

    const/4 v0, 0x0

    .line 559
    iput-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    return-void
.end method

.method private clearBeginLinkIndex()V
    .locals 1

    const/4 v0, 0x0

    .line 331
    iput v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginLinkIndex_:I

    return-void
.end method

.method private clearBeginSectionIndex()V
    .locals 1

    const/4 v0, 0x0

    .line 354
    iput v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginSectionIndex_:I

    return-void
.end method

.method private clearBeginSegmentIndex()V
    .locals 1

    const/4 v0, 0x0

    .line 308
    iput v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginSegmentIndex_:I

    return-void
.end method

.method private clearEndCoorIndex()V
    .locals 1

    const/4 v0, 0x0

    .line 681
    iput v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endCoorIndex_:I

    return-void
.end method

.method private clearEndExactLength()V
    .locals 1

    const/4 v0, 0x0

    .line 606
    iput v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endExactLength_:I

    return-void
.end method

.method private clearEndExactPoint()V
    .locals 1

    const/4 v0, 0x0

    .line 657
    iput-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    return-void
.end method

.method private clearEndLinkIndex()V
    .locals 1

    const/4 v0, 0x0

    .line 400
    iput v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endLinkIndex_:I

    return-void
.end method

.method private clearEndSectionIndex()V
    .locals 1

    const/4 v0, 0x0

    .line 423
    iput v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endSectionIndex_:I

    return-void
.end method

.method private clearEndSegmentIndex()V
    .locals 1

    const/4 v0, 0x0

    .line 377
    iput v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endSegmentIndex_:I

    return-void
.end method

.method private clearRemainDist()V
    .locals 1

    const/4 v0, 0x0

    .line 485
    iput v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->remainDist_:I

    return-void
.end method

.method private clearScopeFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 285
    iput-boolean v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->scopeFlag_:Z

    return-void
.end method

.method private clearStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 462
    iput v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->status_:I

    return-void
.end method

.method private clearTimeOfSeconds()V
    .locals 1

    const/4 v0, 0x0

    .line 262
    iput v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->timeOfSeconds_:I

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;
    .locals 1

    .line 1524
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    return-object v0
.end method

.method private mergeBeginExactPoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 2

    .line 547
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v0, :cond_0

    .line 548
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 549
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    .line 550
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    goto :goto_0

    .line 552
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    :goto_0
    return-void
.end method

.method private mergeEndExactPoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 2

    .line 645
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v0, :cond_0

    .line 646
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 647
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    .line 648
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    goto :goto_0

    .line 650
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 871
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 874
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 848
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 854
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 812
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 819
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 859
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 866
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 836
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 843
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 824
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 831
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;",
            ">;"
        }
    .end annotation

    .line 1530
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBeginCoorIndex(I)V
    .locals 0

    .line 576
    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginCoorIndex_:I

    return-void
.end method

.method private setBeginExactLength(I)V
    .locals 0

    .line 501
    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginExactLength_:I

    return-void
.end method

.method private setBeginExactPoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 0

    .line 540
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    return-void
.end method

.method private setBeginExactPoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 530
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    iput-object p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    return-void
.end method

.method private setBeginLinkIndex(I)V
    .locals 0

    .line 324
    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginLinkIndex_:I

    return-void
.end method

.method private setBeginSectionIndex(I)V
    .locals 0

    .line 347
    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginSectionIndex_:I

    return-void
.end method

.method private setBeginSegmentIndex(I)V
    .locals 0

    .line 301
    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginSegmentIndex_:I

    return-void
.end method

.method private setEndCoorIndex(I)V
    .locals 0

    .line 674
    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endCoorIndex_:I

    return-void
.end method

.method private setEndExactLength(I)V
    .locals 0

    .line 599
    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endExactLength_:I

    return-void
.end method

.method private setEndExactPoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 0

    .line 638
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    return-void
.end method

.method private setEndExactPoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 628
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    iput-object p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    return-void
.end method

.method private setEndLinkIndex(I)V
    .locals 0

    .line 393
    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endLinkIndex_:I

    return-void
.end method

.method private setEndSectionIndex(I)V
    .locals 0

    .line 416
    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endSectionIndex_:I

    return-void
.end method

.method private setEndSegmentIndex(I)V
    .locals 0

    .line 370
    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endSegmentIndex_:I

    return-void
.end method

.method private setRemainDist(I)V
    .locals 0

    .line 478
    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->remainDist_:I

    return-void
.end method

.method private setScopeFlag(Z)V
    .locals 0

    .line 278
    iput-boolean p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->scopeFlag_:Z

    return-void
.end method

.method private setStatus(Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;)V
    .locals 0

    .line 452
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    invoke-virtual {p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->status_:I

    return-void
.end method

.method private setStatusValue(I)V
    .locals 0

    .line 445
    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->status_:I

    return-void
.end method

.method private setTimeOfSeconds(I)V
    .locals 0

    .line 255
    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->timeOfSeconds_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1322
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1512
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 1503
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    monitor-enter p1

    .line 1504
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 1505
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 1507
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 1509
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 1373
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 1375
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_5

    .line 1380
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 1386
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    goto/16 :goto_5

    .line 1485
    :sswitch_0
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endCoorIndex_:I

    goto :goto_1

    .line 1472
    :sswitch_1
    iget-object p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz p1, :cond_3

    .line 1473
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;

    goto :goto_2

    :cond_3
    move-object p1, v0

    .line 1475
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object v3, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz p1, :cond_2

    .line 1477
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 1478
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    goto :goto_1

    .line 1467
    :sswitch_2
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endExactLength_:I

    goto :goto_1

    .line 1462
    :sswitch_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginCoorIndex_:I

    goto :goto_1

    .line 1449
    :sswitch_4
    iget-object p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz p1, :cond_4

    .line 1450
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;

    goto :goto_3

    :cond_4
    move-object p1, v0

    .line 1452
    :goto_3
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object v3, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz p1, :cond_2

    .line 1454
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 1455
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    goto :goto_1

    .line 1444
    :sswitch_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginExactLength_:I

    goto :goto_1

    .line 1439
    :sswitch_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->remainDist_:I

    goto :goto_1

    .line 1432
    :sswitch_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 1434
    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->status_:I

    goto/16 :goto_1

    .line 1428
    :sswitch_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endSectionIndex_:I

    goto/16 :goto_1

    .line 1423
    :sswitch_9
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endLinkIndex_:I

    goto/16 :goto_1

    .line 1418
    :sswitch_a
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endSegmentIndex_:I

    goto/16 :goto_1

    .line 1413
    :sswitch_b
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginSectionIndex_:I

    goto/16 :goto_1

    .line 1408
    :sswitch_c
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginLinkIndex_:I

    goto/16 :goto_1

    .line 1403
    :sswitch_d
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginSegmentIndex_:I

    goto/16 :goto_1

    .line 1398
    :sswitch_e
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->scopeFlag_:Z

    goto/16 :goto_1

    .line 1393
    :sswitch_f
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->timeOfSeconds_:I
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_4
    :sswitch_10
    move v1, v2

    goto/16 :goto_1

    :goto_5
    if-nez p1, :cond_2

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    .line 1493
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 1495
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1491
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1496
    :goto_6
    throw p1

    .line 1500
    :cond_5
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    return-object p1

    .line 1336
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 1337
    check-cast p3, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    .line 1338
    iget p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->timeOfSeconds_:I

    if-eqz p1, :cond_6

    move v0, v2

    goto :goto_7

    :cond_6
    move v0, v1

    :goto_7
    iget v3, p3, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->timeOfSeconds_:I

    if-eqz v3, :cond_7

    move v4, v2

    goto :goto_8

    :cond_7
    move v4, v1

    :goto_8
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->timeOfSeconds_:I

    .line 1340
    iget-boolean p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->scopeFlag_:Z

    iget-boolean v0, p3, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->scopeFlag_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->scopeFlag_:Z

    .line 1342
    iget p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginSegmentIndex_:I

    if-eqz p1, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    iget v3, p3, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginSegmentIndex_:I

    if-eqz v3, :cond_9

    move v4, v2

    goto :goto_a

    :cond_9
    move v4, v1

    :goto_a
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginSegmentIndex_:I

    .line 1344
    iget p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginLinkIndex_:I

    if-eqz p1, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    iget v3, p3, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginLinkIndex_:I

    if-eqz v3, :cond_b

    move v4, v2

    goto :goto_c

    :cond_b
    move v4, v1

    :goto_c
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginLinkIndex_:I

    .line 1346
    iget p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginSectionIndex_:I

    if-eqz p1, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    iget v3, p3, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginSectionIndex_:I

    if-eqz v3, :cond_d

    move v4, v2

    goto :goto_e

    :cond_d
    move v4, v1

    :goto_e
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginSectionIndex_:I

    .line 1348
    iget p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endSegmentIndex_:I

    if-eqz p1, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    iget v3, p3, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endSegmentIndex_:I

    if-eqz v3, :cond_f

    move v4, v2

    goto :goto_10

    :cond_f
    move v4, v1

    :goto_10
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endSegmentIndex_:I

    .line 1350
    iget p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endLinkIndex_:I

    if-eqz p1, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    iget v3, p3, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endLinkIndex_:I

    if-eqz v3, :cond_11

    move v4, v2

    goto :goto_12

    :cond_11
    move v4, v1

    :goto_12
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endLinkIndex_:I

    .line 1352
    iget p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endSectionIndex_:I

    if-eqz p1, :cond_12

    move v0, v2

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    iget v3, p3, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endSectionIndex_:I

    if-eqz v3, :cond_13

    move v4, v2

    goto :goto_14

    :cond_13
    move v4, v1

    :goto_14
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endSectionIndex_:I

    .line 1354
    iget p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->status_:I

    if-eqz p1, :cond_14

    move v0, v2

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    iget v3, p3, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->status_:I

    if-eqz v3, :cond_15

    move v4, v2

    goto :goto_16

    :cond_15
    move v4, v1

    :goto_16
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->status_:I

    .line 1355
    iget p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->remainDist_:I

    if-eqz p1, :cond_16

    move v0, v2

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    iget v3, p3, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->remainDist_:I

    if-eqz v3, :cond_17

    move v4, v2

    goto :goto_18

    :cond_17
    move v4, v1

    :goto_18
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->remainDist_:I

    .line 1357
    iget p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginExactLength_:I

    if-eqz p1, :cond_18

    move v0, v2

    goto :goto_19

    :cond_18
    move v0, v1

    :goto_19
    iget v3, p3, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginExactLength_:I

    if-eqz v3, :cond_19

    move v4, v2

    goto :goto_1a

    :cond_19
    move v4, v1

    :goto_1a
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginExactLength_:I

    .line 1359
    iget-object p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iget-object v0, p3, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    .line 1360
    iget p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginCoorIndex_:I

    if-eqz p1, :cond_1a

    move v0, v2

    goto :goto_1b

    :cond_1a
    move v0, v1

    :goto_1b
    iget v3, p3, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginCoorIndex_:I

    if-eqz v3, :cond_1b

    move v4, v2

    goto :goto_1c

    :cond_1b
    move v4, v1

    :goto_1c
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginCoorIndex_:I

    .line 1362
    iget p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endExactLength_:I

    if-eqz p1, :cond_1c

    move v0, v2

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    iget v3, p3, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endExactLength_:I

    if-eqz v3, :cond_1d

    move v4, v2

    goto :goto_1e

    :cond_1d
    move v4, v1

    :goto_1e
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endExactLength_:I

    .line 1364
    iget-object p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iget-object v0, p3, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    .line 1365
    iget p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endCoorIndex_:I

    if-eqz p1, :cond_1e

    move v0, v2

    goto :goto_1f

    :cond_1e
    move v0, v1

    :goto_1f
    iget p3, p3, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endCoorIndex_:I

    if-eqz p3, :cond_1f

    move v1, v2

    :cond_1f
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endCoorIndex_:I

    .line 1367
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 1333
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;-><init>(Landroid/car/hardware/xpu/NaviCongestionInfoProto$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 1327
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    return-object p1

    .line 1324
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-direct {p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;-><init>()V

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
        0x0 -> :sswitch_10
        0x8 -> :sswitch_f
        0x10 -> :sswitch_e
        0x18 -> :sswitch_d
        0x20 -> :sswitch_c
        0x28 -> :sswitch_b
        0x30 -> :sswitch_a
        0x38 -> :sswitch_9
        0x40 -> :sswitch_8
        0x48 -> :sswitch_7
        0x50 -> :sswitch_6
        0x58 -> :sswitch_5
        0x62 -> :sswitch_4
        0x68 -> :sswitch_3
        0x70 -> :sswitch_2
        0x7a -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBeginCoorIndex()I
    .locals 1

    .line 569
    iget v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginCoorIndex_:I

    return v0
.end method

.method public getBeginExactLength()I
    .locals 1

    .line 494
    iget v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginExactLength_:I

    return v0
.end method

.method public getBeginExactPoint()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
    .locals 1

    .line 523
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBeginLinkIndex()I
    .locals 1

    .line 317
    iget v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginLinkIndex_:I

    return v0
.end method

.method public getBeginSectionIndex()I
    .locals 1

    .line 340
    iget v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginSectionIndex_:I

    return v0
.end method

.method public getBeginSegmentIndex()I
    .locals 1

    .line 294
    iget v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginSegmentIndex_:I

    return v0
.end method

.method public getEndCoorIndex()I
    .locals 1

    .line 667
    iget v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endCoorIndex_:I

    return v0
.end method

.method public getEndExactLength()I
    .locals 1

    .line 592
    iget v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endExactLength_:I

    return v0
.end method

.method public getEndExactPoint()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
    .locals 1

    .line 621
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEndLinkIndex()I
    .locals 1

    .line 386
    iget v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endLinkIndex_:I

    return v0
.end method

.method public getEndSectionIndex()I
    .locals 1

    .line 409
    iget v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endSectionIndex_:I

    return v0
.end method

.method public getEndSegmentIndex()I
    .locals 1

    .line 363
    iget v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endSegmentIndex_:I

    return v0
.end method

.method public getRemainDist()I
    .locals 1

    .line 471
    iget v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->remainDist_:I

    return v0
.end method

.method public getScopeFlag()Z
    .locals 1

    .line 271
    iget-boolean v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->scopeFlag_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 737
    iget v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 741
    iget v1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->timeOfSeconds_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 743
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 745
    :cond_1
    iget-boolean v1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->scopeFlag_:Z

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 747
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 749
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginSegmentIndex_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 751
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 753
    :cond_3
    iget v1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginLinkIndex_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 755
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 757
    :cond_4
    iget v1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginSectionIndex_:I

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 759
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 761
    :cond_5
    iget v1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endSegmentIndex_:I

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 763
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 765
    :cond_6
    iget v1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endLinkIndex_:I

    if-eqz v1, :cond_7

    const/4 v2, 0x7

    .line 767
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 769
    :cond_7
    iget v1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endSectionIndex_:I

    if-eqz v1, :cond_8

    const/16 v2, 0x8

    .line 771
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 773
    :cond_8
    iget v1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->status_:I

    sget-object v2, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;->CongestionStatus_UNKNOWN:Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

    invoke-virtual {v2}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_9

    const/16 v1, 0x9

    .line 774
    iget v2, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->status_:I

    .line 775
    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 777
    :cond_9
    iget v1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->remainDist_:I

    if-eqz v1, :cond_a

    const/16 v2, 0xa

    .line 779
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 781
    :cond_a
    iget v1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginExactLength_:I

    if-eqz v1, :cond_b

    const/16 v2, 0xb

    .line 783
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 785
    :cond_b
    iget-object v1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v1, :cond_c

    const/16 v1, 0xc

    .line 787
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->getBeginExactPoint()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 789
    :cond_c
    iget v1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginCoorIndex_:I

    if-eqz v1, :cond_d

    const/16 v2, 0xd

    .line 791
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 793
    :cond_d
    iget v1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endExactLength_:I

    if-eqz v1, :cond_e

    const/16 v2, 0xe

    .line 795
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 797
    :cond_e
    iget-object v1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v1, :cond_f

    const/16 v1, 0xf

    .line 799
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->getEndExactPoint()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 801
    :cond_f
    iget v1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endCoorIndex_:I

    if-eqz v1, :cond_10

    const/16 v2, 0x10

    .line 803
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 805
    :cond_10
    iput v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->memoizedSerializedSize:I

    return v0
.end method

.method public getStatus()Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;
    .locals 1

    .line 438
    iget v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->status_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;->forNumber(I)Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

    move-result-object v0

    if-nez v0, :cond_0

    .line 439
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;->UNRECOGNIZED:Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

    :cond_0
    return-object v0
.end method

.method public getStatusValue()I
    .locals 1

    .line 432
    iget v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->status_:I

    return v0
.end method

.method public getTimeOfSeconds()I
    .locals 1

    .line 248
    iget v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->timeOfSeconds_:I

    return v0
.end method

.method public hasBeginExactPoint()Z
    .locals 1

    .line 517
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEndExactPoint()Z
    .locals 1

    .line 615
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

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

    .line 686
    iget v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->timeOfSeconds_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 687
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 689
    :cond_0
    iget-boolean v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->scopeFlag_:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 690
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 692
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginSegmentIndex_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 693
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 695
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginLinkIndex_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 696
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 698
    :cond_3
    iget v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginSectionIndex_:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 699
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 701
    :cond_4
    iget v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endSegmentIndex_:I

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 702
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 704
    :cond_5
    iget v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endLinkIndex_:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 705
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 707
    :cond_6
    iget v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endSectionIndex_:I

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 708
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 710
    :cond_7
    iget v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->status_:I

    sget-object v1, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;->CongestionStatus_UNKNOWN:Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_8

    const/16 v0, 0x9

    .line 711
    iget v1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->status_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 713
    :cond_8
    iget v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->remainDist_:I

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 714
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 716
    :cond_9
    iget v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginExactLength_:I

    if-eqz v0, :cond_a

    const/16 v1, 0xb

    .line 717
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 719
    :cond_a
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    .line 720
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->getBeginExactPoint()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 722
    :cond_b
    iget v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->beginCoorIndex_:I

    if-eqz v0, :cond_c

    const/16 v1, 0xd

    .line 723
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 725
    :cond_c
    iget v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endExactLength_:I

    if-eqz v0, :cond_d

    const/16 v1, 0xe

    .line 726
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 728
    :cond_d
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endExactPoint_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v0, :cond_e

    const/16 v0, 0xf

    .line 729
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->getEndExactPoint()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 731
    :cond_e
    iget v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->endCoorIndex_:I

    if-eqz v0, :cond_f

    const/16 v1, 0x10

    .line 732
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_f
    return-void
.end method

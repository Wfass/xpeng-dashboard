.class public final Landroid/view/accessibility/AccessibilityWindowInfo;
.super Ljava/lang/Object;
.source "AccessibilityWindowInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityWindowInfo$WindowListSparseArray;
    }
.end annotation


# static fields
.field public static final ACTIVE_WINDOW_ID:I = 0x7fffffff

.field public static final ANY_WINDOW_ID:I = -0x2

.field private static final BOOLEAN_PROPERTY_ACCESSIBILITY_FOCUSED:I = 0x4

.field private static final BOOLEAN_PROPERTY_ACTIVE:I = 0x1

.field private static final BOOLEAN_PROPERTY_FOCUSED:I = 0x2

.field private static final BOOLEAN_PROPERTY_PICTURE_IN_PICTURE:I = 0x8

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final MAX_POOL_SIZE:I = 0xa

.field public static final PICTURE_IN_PICTURE_ACTION_REPLACER_WINDOW_ID:I = -0x3

.field public static final TYPE_ACCESSIBILITY_OVERLAY:I = 0x4

.field public static final TYPE_APPLICATION:I = 0x1

.field public static final TYPE_INPUT_METHOD:I = 0x2

.field public static final TYPE_SPLIT_SCREEN_DIVIDER:I = 0x5

.field public static final TYPE_SYSTEM:I = 0x3

.field public static final UNDEFINED_CONNECTION_ID:I = -0x1

.field public static final UNDEFINED_WINDOW_ID:I = -0x1

.field private static sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnchorId:J

.field private mBooleanProperties:I

.field private mChildIds:Landroid/util/LongArray;

.field private mConnectionId:I

.field private mDisplayId:I

.field private mId:I

.field private mLayer:I

.field private mParentId:I

.field private mRegionInScreen:Landroid/graphics/Region;

.field private mTaskId:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 106
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 863
    new-instance v0, Landroid/view/accessibility/AccessibilityWindowInfo$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityWindowInfo$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 112
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    .line 113
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 114
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 116
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 117
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 118
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    .line 119
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    .line 122
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    .line 124
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    return-void
.end method

.method public constructor <init>(Landroid/view/accessibility/AccessibilityWindowInfo;)V
    .locals 3

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 112
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    .line 113
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 114
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 116
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 117
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 118
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    .line 119
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    .line 122
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    .line 124
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 139
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->init(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    return-void
.end method

.method static synthetic access$000(Landroid/view/accessibility/AccessibilityWindowInfo;Landroid/os/Parcel;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->initFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private clear()V
    .locals 4

    const/4 v0, -0x1

    .line 744
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    .line 745
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 746
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    const/4 v1, 0x0

    .line 747
    iput v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    .line 748
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 749
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 750
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    .line 751
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    const/4 v1, 0x0

    .line 752
    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    .line 753
    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    .line 754
    sget-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    .line 755
    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method private getBooleanProperty(I)Z
    .locals 1

    .line 765
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private init(Landroid/view/accessibility/AccessibilityWindowInfo;)V
    .locals 2

    .line 630
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    .line 631
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 632
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 633
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    .line 634
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 635
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 636
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    .line 637
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 638
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    .line 639
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    .line 641
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/LongArray;->clear()V

    .line 642
    :cond_0
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/LongArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 643
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-nez v0, :cond_1

    .line 644
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-virtual {v0}, Landroid/util/LongArray;->clone()Landroid/util/LongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    goto :goto_0

    .line 646
    :cond_1
    iget-object v1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-virtual {v0, v1}, Landroid/util/LongArray;->addAll(Landroid/util/LongArray;)V

    .line 650
    :cond_2
    :goto_0
    iget p1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    return-void
.end method

.method private initFromParcel(Landroid/os/Parcel;)V
    .locals 6

    .line 654
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    .line 655
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    .line 656
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    .line 657
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    .line 658
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    .line 659
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    .line 660
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    .line 661
    sget-object v0, Landroid/graphics/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Region;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    .line 662
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    .line 663
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    .line 665
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    .line 667
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-nez v1, :cond_0

    .line 668
    new-instance v1, Landroid/util/LongArray;

    invoke-direct {v1, v0}, Landroid/util/LongArray;-><init>(I)V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 671
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 672
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Landroid/util/LongArray;->add(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 676
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    return-void
.end method

.method public static obtain()Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 2

    .line 511
    sget-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-nez v0, :cond_0

    .line 513
    new-instance v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;-><init>()V

    .line 515
    :cond_0
    sget-object v1, Landroid/view/accessibility/AccessibilityWindowInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v1, :cond_1

    .line 516
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_1
    return-object v0
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 1

    .line 533
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    .line 534
    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->init(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    return-object v0
.end method

.method private setBooleanProperty(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 778
    iget p2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    goto :goto_0

    .line 780
    :cond_0
    iget p2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    :goto_0
    return-void
.end method

.method public static setNumInstancesInUseCounter(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1

    .line 545
    sget-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_0

    .line 546
    sput-object p0, Landroid/view/accessibility/AccessibilityWindowInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    :cond_0
    return-void
.end method

.method public static typeToString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<UNKNOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ">"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "TYPE_SPLIT_SCREEN_DIVIDER"

    return-object p0

    :cond_1
    const-string p0, "TYPE_ACCESSIBILITY_OVERLAY"

    return-object p0

    :cond_2
    const-string p0, "TYPE_SYSTEM"

    return-object p0

    :cond_3
    const-string p0, "TYPE_INPUT_METHOD"

    return-object p0

    :cond_4
    const-string p0, "TYPE_APPLICATION"

    return-object p0
.end method


# virtual methods
.method public addChild(I)V
    .locals 3

    .line 474
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-nez v0, :cond_0

    .line 475
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    .line 477
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongArray;->add(J)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public differenceFrom(Landroid/view/accessibility/AccessibilityWindowInfo;)I
    .locals 4

    .line 821
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    if-ne v0, v1, :cond_a

    .line 824
    iget v0, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    .line 828
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x4

    if-nez v1, :cond_0

    move v0, v2

    .line 831
    :cond_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    iget-object v3, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1, v3}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    or-int/lit8 v0, v0, 0x8

    .line 834
    :cond_1
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    iget v3, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    if-eq v1, v3, :cond_2

    or-int/lit8 v0, v0, 0x10

    :cond_2
    const/4 v1, 0x1

    .line 837
    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v3

    .line 838
    invoke-direct {p1, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v1

    if-eq v3, v1, :cond_3

    or-int/lit8 v0, v0, 0x20

    :cond_3
    const/4 v1, 0x2

    .line 841
    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v3

    .line 842
    invoke-direct {p1, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v1

    if-eq v3, v1, :cond_4

    or-int/lit8 v0, v0, 0x40

    .line 845
    :cond_4
    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v1

    .line 846
    invoke-direct {p1, v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v2

    if-eq v1, v2, :cond_5

    or-int/lit16 v0, v0, 0x80

    :cond_5
    const/16 v1, 0x8

    .line 849
    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v2

    .line 850
    invoke-direct {p1, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v1

    if-eq v2, v1, :cond_6

    or-int/lit16 v0, v0, 0x400

    .line 853
    :cond_6
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    iget v2, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    if-eq v1, v2, :cond_7

    or-int/lit16 v0, v0, 0x100

    .line 856
    :cond_7
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    iget-object p1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    or-int/lit16 v0, v0, 0x200

    :cond_8
    return v0

    .line 825
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not same type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 822
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not same window."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 692
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 695
    :cond_2
    check-cast p1, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 696
    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    iget p1, p1, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public getAnchor()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 10

    .line 242
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    .line 249
    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iget v4, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 1

    .line 372
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getChild(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 3

    .line 455
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v0, :cond_1

    .line 458
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 461
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v0

    long-to-int p1, v0

    .line 462
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 463
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object p1

    return-object p1

    .line 456
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getChildCount()I
    .locals 1

    .line 445
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/LongArray;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDisplayId()I
    .locals 1

    .line 498
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 297
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    return v0
.end method

.method public getLayer()I
    .locals 1

    .line 195
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    return v0
.end method

.method public getParent()Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 3

    .line 273
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 276
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 277
    iget v1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRegionInScreen(Landroid/graphics/Region;)V
    .locals 1

    .line 351
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method

.method public getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 9

    .line 216
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 219
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 220
    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v6, 0x1

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTaskId()I
    .locals 1

    .line 319
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 149
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 174
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 681
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    return v0
.end method

.method public isAccessibilityFocused()Z
    .locals 1

    const/4 v0, 0x4

    .line 425
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isActive()Z
    .locals 1

    const/4 v0, 0x1

    .line 383
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .locals 1

    const/4 v0, 0x2

    .line 405
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isInPictureInPictureMode()Z
    .locals 1

    const/16 v0, 0x8

    .line 264
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public recycle()V
    .locals 1

    .line 561
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->clear()V

    .line 562
    sget-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 563
    sget-object v0, Landroid/view/accessibility/AccessibilityWindowInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_0
    return-void
.end method

.method public refresh()Z
    .locals 5

    .line 578
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 581
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 582
    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(IIZ)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 587
    :cond_1
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->init(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    .line 588
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    return v4

    :cond_2
    :goto_0
    return v1
.end method

.method public setAccessibilityFocused(Z)V
    .locals 1

    const/4 v0, 0x4

    .line 436
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setActive(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 396
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setAnchorId(J)V
    .locals 0

    .line 233
    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    return-void
.end method

.method public setConnectionId(I)V
    .locals 0

    .line 342
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    return-void
.end method

.method public setDisplayId(I)V
    .locals 0

    .line 488
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    return-void
.end method

.method public setFocused(Z)V
    .locals 1

    const/4 v0, 0x2

    .line 416
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 308
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    return-void
.end method

.method public setLayer(I)V
    .locals 0

    .line 207
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    return-void
.end method

.method public setParentId(I)V
    .locals 0

    .line 288
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    return-void
.end method

.method public setPictureInPicture(Z)V
    .locals 1

    const/16 v0, 0x8

    .line 255
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setRegionInScreen(Landroid/graphics/Region;)V
    .locals 1

    .line 362
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method

.method public setTaskId(I)V
    .locals 0

    .line 330
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 160
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 185
    iput p1, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessibilityWindowInfo["

    .line 702
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "title="

    .line 703
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ", displayId="

    .line 704
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    .line 705
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", taskId="

    .line 706
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    .line 707
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", layer="

    .line 708
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", region="

    .line 709
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bounds="

    .line 710
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", focused="

    .line 711
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", active="

    .line 712
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pictureInPicture="

    .line 713
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasParent="

    .line 730
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAnchored="

    .line 731
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    sget-wide v7, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    cmp-long v2, v5, v7

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    .line 732
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasChildren="

    .line 733
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    if-eqz v2, :cond_2

    .line 734
    invoke-virtual {v2}, Landroid/util/LongArray;->size()I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    .line 733
    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    .line 736
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 737
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 599
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 600
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 601
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mLayer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mBooleanProperties:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 603
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mParentId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    iget v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mRegionInScreen:Landroid/graphics/Region;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Region;->writeToParcel(Landroid/os/Parcel;I)V

    .line 607
    iget-object p2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 608
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mAnchorId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 610
    iget-object p2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mChildIds:Landroid/util/LongArray;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 612
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 614
    :cond_0
    invoke-virtual {p2}, Landroid/util/LongArray;->size()I

    move-result v1

    .line 615
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    if-ge v0, v1, :cond_1

    .line 617
    invoke-virtual {p2, v0}, Landroid/util/LongArray;->get(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 621
    :cond_1
    :goto_1
    iget p2, p0, Landroid/view/accessibility/AccessibilityWindowInfo;->mConnectionId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.class public Landroid/view/accessibility/AccessibilityRecord;
.super Ljava/lang/Object;
.source "AccessibilityRecord.java"


# static fields
.field protected static final DEBUG_CONCISE_TOSTRING:Z = false

.field private static final GET_SOURCE_PREFETCH_FLAGS:I = 0x7

.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final PROPERTY_CHECKED:I = 0x1

.field private static final PROPERTY_ENABLED:I = 0x2

.field private static final PROPERTY_FULL_SCREEN:I = 0x80

.field private static final PROPERTY_IMPORTANT_FOR_ACCESSIBILITY:I = 0x200

.field private static final PROPERTY_PASSWORD:I = 0x4

.field private static final PROPERTY_SCROLLABLE:I = 0x100

.field private static final UNDEFINED:I = -0x1

.field private static sPool:Landroid/view/accessibility/AccessibilityRecord;

.field private static final sPoolLock:Ljava/lang/Object;

.field private static sPoolSize:I


# instance fields
.field mAddedCount:I

.field mBeforeText:Ljava/lang/CharSequence;

.field mBooleanProperties:I

.field mClassName:Ljava/lang/CharSequence;

.field mConnectionId:I

.field mContentDescription:Ljava/lang/CharSequence;

.field mCurrentItemIndex:I

.field mFromIndex:I

.field private mIsInPool:Z

.field mItemCount:I

.field mMaxScrollX:I

.field mMaxScrollY:I

.field private mNext:Landroid/view/accessibility/AccessibilityRecord;

.field mParcelableData:Landroid/os/Parcelable;

.field mRemovedCount:I

.field mScrollDeltaX:I

.field mScrollDeltaY:I

.field mScrollX:I

.field mScrollY:I

.field mSealed:Z

.field mSourceNodeId:J

.field mSourceWindowId:I

.field final mText:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field mToIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityRecord;->sPoolLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    const/4 v1, -0x1

    .line 90
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    .line 91
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    .line 92
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    .line 93
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    .line 94
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    .line 95
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    .line 97
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    .line 98
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    .line 99
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    .line 100
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    .line 102
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    .line 103
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    .line 104
    sget-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 106
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    .line 115
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    return-void
.end method

.method public constructor <init>(Landroid/view/accessibility/AccessibilityRecord;)V
    .locals 4

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    const/4 v1, -0x1

    .line 90
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    .line 91
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    .line 92
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    .line 93
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    .line 94
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    .line 95
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    .line 97
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    .line 98
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    .line 99
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    .line 100
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    .line 102
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    .line 103
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    .line 104
    sget-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 106
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    .line 115
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    .line 130
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->init(Landroid/view/accessibility/AccessibilityRecord;)V

    return-void
.end method

.method private append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 0

    .line 978
    invoke-direct {p0, p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->appendPropName(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method private append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 983
    invoke-direct {p0, p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->appendPropName(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private appendPropName(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    const-string v0, "; "

    .line 987
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method private appendUnless(ZILjava/lang/StringBuilder;)V
    .locals 0

    .line 957
    invoke-direct {p0, p2}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result p1

    .line 959
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityRecord;->singleBooleanPropertyToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3, p2}, Landroid/view/accessibility/AccessibilityRecord;->appendPropName(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 960
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    return-void
.end method

.method private getBooleanProperty(I)Z
    .locals 1

    .line 782
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static obtain()Landroid/view/accessibility/AccessibilityRecord;
    .locals 3

    .line 825
    sget-object v0, Landroid/view/accessibility/AccessibilityRecord;->sPoolLock:Ljava/lang/Object;

    monitor-enter v0

    .line 826
    :try_start_0
    sget-object v1, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    if-eqz v1, :cond_0

    .line 828
    iget-object v2, v1, Landroid/view/accessibility/AccessibilityRecord;->mNext:Landroid/view/accessibility/AccessibilityRecord;

    sput-object v2, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    .line 829
    sget v2, Landroid/view/accessibility/AccessibilityRecord;->sPoolSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/view/accessibility/AccessibilityRecord;->sPoolSize:I

    const/4 v2, 0x0

    .line 830
    iput-object v2, v1, Landroid/view/accessibility/AccessibilityRecord;->mNext:Landroid/view/accessibility/AccessibilityRecord;

    const/4 v2, 0x0

    .line 831
    iput-boolean v2, v1, Landroid/view/accessibility/AccessibilityRecord;->mIsInPool:Z

    .line 832
    monitor-exit v0

    return-object v1

    .line 834
    :cond_0
    new-instance v1, Landroid/view/accessibility/AccessibilityRecord;

    invoke-direct {v1}, Landroid/view/accessibility/AccessibilityRecord;-><init>()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 835
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityRecord;)Landroid/view/accessibility/AccessibilityRecord;
    .locals 1

    .line 810
    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v0

    .line 811
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityRecord;->init(Landroid/view/accessibility/AccessibilityRecord;)V

    return-object v0
.end method

.method private setBooleanProperty(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 793
    iget p2, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    goto :goto_0

    .line 795
    :cond_0
    iget p2, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    :goto_0
    return-void
.end method

.method private static singleBooleanPropertyToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/16 v0, 0x80

    if-eq p0, v0, :cond_2

    const/16 v0, 0x100

    if-eq p0, v0, :cond_1

    const/16 v0, 0x200

    if-eq p0, v0, :cond_0

    .line 972
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "ImportantForAccessibility"

    return-object p0

    :cond_1
    const-string p0, "Scrollable"

    return-object p0

    :cond_2
    const-string p0, "FullScreen"

    return-object p0

    :cond_3
    const-string p0, "Password"

    return-object p0

    :cond_4
    const-string p0, "Enabled"

    return-object p0

    :cond_5
    const-string p0, "Checked"

    return-object p0
.end method


# virtual methods
.method appendTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3

    const-string v0, " [ ClassName: "

    .line 926
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v0, "Text"

    .line 928
    invoke-direct {p0, p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->appendPropName(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 930
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    const-string v1, "ContentDescription"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 931
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    const-string v1, "ItemCount"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 932
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    const-string v1, "CurrentItemIndex"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 934
    invoke-direct {p0, v0, v1, p1}, Landroid/view/accessibility/AccessibilityRecord;->appendUnless(ZILjava/lang/StringBuilder;)V

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 935
    invoke-direct {p0, v1, v2, p1}, Landroid/view/accessibility/AccessibilityRecord;->appendUnless(ZILjava/lang/StringBuilder;)V

    .line 936
    invoke-direct {p0, v1, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->appendUnless(ZILjava/lang/StringBuilder;)V

    const/16 v0, 0x80

    .line 937
    invoke-direct {p0, v1, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->appendUnless(ZILjava/lang/StringBuilder;)V

    const/16 v0, 0x100

    .line 938
    invoke-direct {p0, v1, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->appendUnless(ZILjava/lang/StringBuilder;)V

    .line 940
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    const-string v1, "BeforeText"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 941
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    const-string v1, "FromIndex"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 942
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    const-string v1, "ToIndex"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 943
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    const-string v1, "ScrollX"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 944
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    const-string v1, "ScrollY"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 945
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    const-string v1, "MaxScrollX"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 946
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    const-string v1, "MaxScrollY"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 947
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    const-string v1, "ScrollDeltaX"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 948
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    const-string v1, "ScrollDeltaY"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 949
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    const-string v1, "AddedCount"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 950
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    const-string v1, "RemovedCount"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 951
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    const-string v1, "ParcelableData"

    invoke-direct {p0, p1, v1, v0}, Landroid/view/accessibility/AccessibilityRecord;->append(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, " ]"

    .line 952
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method clear()V
    .locals 4

    const/4 v0, 0x0

    .line 896
    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    .line 897
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    const/4 v1, -0x1

    .line 898
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    .line 899
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    .line 900
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    .line 901
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    .line 902
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    .line 903
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    .line 904
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    .line 905
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    .line 906
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    .line 907
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    .line 908
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    .line 909
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    const/4 v0, 0x0

    .line 910
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    .line 911
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    .line 912
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    .line 913
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    .line 914
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-wide/32 v2, 0x7fffffff

    .line 915
    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 916
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 917
    iput v1, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    return-void
.end method

.method enforceNotSealed()V
    .locals 2

    .line 769
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isSealed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 770
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action on a sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method enforceSealed()V
    .locals 2

    .line 757
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->isSealed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 758
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action on a not sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAddedCount()I
    .locals 1

    .line 574
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    return v0
.end method

.method public getBeforeText()Ljava/lang/CharSequence;
    .locals 1

    .line 647
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 616
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 669
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCurrentItemIndex()I
    .locals 1

    .line 387
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    return v0
.end method

.method public getFromIndex()I
    .locals 1

    .line 411
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 366
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    return v0
.end method

.method public getMaxScrollX()I
    .locals 1

    .line 536
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    return v0
.end method

.method public getMaxScrollY()I
    .locals 1

    .line 555
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    return v0
.end method

.method public getParcelableData()Landroid/os/Parcelable;
    .locals 1

    .line 691
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    return-object v0
.end method

.method public getRemovedCount()I
    .locals 1

    .line 595
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    return v0
.end method

.method public getScrollDeltaX()I
    .locals 1

    .line 495
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    return v0
.end method

.method public getScrollDeltaY()I
    .locals 1

    .line 516
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    return v0
.end method

.method public getScrollX()I
    .locals 1

    .line 456
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    return v0
.end method

.method public getScrollY()I
    .locals 1

    .line 475
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    return v0
.end method

.method public getSource()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 10

    .line 192
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceSealed()V

    .line 193
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    if-eq v0, v1, :cond_1

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 195
    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    .line 200
    iget v3, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    iget v4, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSourceNodeId()J
    .locals 2

    .line 715
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    return-wide v0
.end method

.method public getText()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 638
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    return-object v0
.end method

.method public getToIndex()I
    .locals 1

    .line 436
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    return v0
.end method

.method public getWindowId()I
    .locals 1

    .line 221
    iget v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    return v0
.end method

.method init(Landroid/view/accessibility/AccessibilityRecord;)V
    .locals 2

    .line 868
    iget-boolean v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    .line 869
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    .line 870
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    .line 871
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    .line 872
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    .line 873
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    .line 874
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    .line 875
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    .line 876
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    .line 877
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    .line 878
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    .line 879
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    .line 880
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    .line 881
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    .line 882
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    .line 883
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    .line 884
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    .line 885
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    .line 886
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 887
    iget v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    .line 888
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    .line 889
    iget p1, p1, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    return-void
.end method

.method public isChecked()Z
    .locals 1

    const/4 v0, 0x1

    .line 230
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x2

    .line 251
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isFullScreen()Z
    .locals 1

    const/16 v0, 0x80

    .line 293
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isImportantForAccessibility()Z
    .locals 1

    const/16 v0, 0x200

    .line 343
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isPassword()Z
    .locals 1

    const/4 v0, 0x4

    .line 272
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .locals 1

    const/16 v0, 0x100

    .line 314
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method isSealed()Z
    .locals 1

    .line 748
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    return v0
.end method

.method public recycle()V
    .locals 3

    .line 848
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mIsInPool:Z

    if-nez v0, :cond_1

    .line 851
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->clear()V

    .line 852
    sget-object v0, Landroid/view/accessibility/AccessibilityRecord;->sPoolLock:Ljava/lang/Object;

    monitor-enter v0

    .line 853
    :try_start_0
    sget v1, Landroid/view/accessibility/AccessibilityRecord;->sPoolSize:I

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 854
    sget-object v2, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mNext:Landroid/view/accessibility/AccessibilityRecord;

    .line 855
    sput-object p0, Landroid/view/accessibility/AccessibilityRecord;->sPool:Landroid/view/accessibility/AccessibilityRecord;

    const/4 v2, 0x1

    .line 856
    iput-boolean v2, p0, Landroid/view/accessibility/AccessibilityRecord;->mIsInPool:Z

    add-int/2addr v1, v2

    .line 857
    sput v1, Landroid/view/accessibility/AccessibilityRecord;->sPoolSize:I

    .line 859
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 849
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Record already recycled!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAddedCount(I)V
    .locals 0

    .line 585
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 586
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    return-void
.end method

.method public setBeforeText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 658
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 660
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 241
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    const/4 v0, 0x1

    .line 242
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .locals 0

    .line 627
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 628
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    return-void
.end method

.method public setConnectionId(I)V
    .locals 0

    .line 727
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 728
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 2

    .line 680
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 682
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public setCurrentItemIndex(I)V
    .locals 0

    .line 398
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 399
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 262
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    const/4 v0, 0x2

    .line 263
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setFromIndex(I)V
    .locals 0

    .line 425
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 426
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    return-void
.end method

.method public setFullScreen(Z)V
    .locals 1

    .line 304
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    const/16 v0, 0x80

    .line 305
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setImportantForAccessibility(Z)V
    .locals 1

    .line 356
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    const/16 v0, 0x200

    .line 357
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setItemCount(I)V
    .locals 0

    .line 377
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 378
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    return-void
.end method

.method public setMaxScrollX(I)V
    .locals 0

    .line 545
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 546
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    return-void
.end method

.method public setMaxScrollY(I)V
    .locals 0

    .line 564
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 565
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    return-void
.end method

.method public setParcelableData(Landroid/os/Parcelable;)V
    .locals 0

    .line 702
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 703
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    return-void
.end method

.method public setPassword(Z)V
    .locals 1

    .line 283
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    const/4 v0, 0x4

    .line 284
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setRemovedCount(I)V
    .locals 0

    .line 606
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 607
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    return-void
.end method

.method public setScrollDeltaX(I)V
    .locals 0

    .line 505
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 506
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaX:I

    return-void
.end method

.method public setScrollDeltaY(I)V
    .locals 0

    .line 526
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 527
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollDeltaY:I

    return-void
.end method

.method public setScrollX(I)V
    .locals 0

    .line 465
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 466
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    return-void
.end method

.method public setScrollY(I)V
    .locals 0

    .line 484
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 485
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    return-void
.end method

.method public setScrollable(Z)V
    .locals 1

    .line 325
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    const/16 v0, 0x100

    .line 326
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setSealed(Z)V
    .locals 0

    .line 739
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    return-void
.end method

.method public setSource(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 141
    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    return-void
.end method

.method public setSource(Landroid/view/View;I)V
    .locals 2

    .line 159
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    const/4 v0, -0x1

    .line 162
    iput v0, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result v0

    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v1

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityWindowId()I

    move-result p1

    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const v1, 0x7fffffff

    :goto_0
    const/16 p1, 0x200

    .line 168
    invoke-direct {p0, p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setBooleanProperty(IZ)V

    .line 169
    invoke-static {v1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    return-void
.end method

.method public setSourceNodeId(J)V
    .locals 0

    .line 179
    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceNodeId:J

    return-void
.end method

.method public setToIndex(I)V
    .locals 0

    .line 446
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->enforceNotSealed()V

    .line 447
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    return-void
.end method

.method public setWindowId(I)V
    .locals 0

    .line 212
    iput p1, p0, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityRecord;->appendTo(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

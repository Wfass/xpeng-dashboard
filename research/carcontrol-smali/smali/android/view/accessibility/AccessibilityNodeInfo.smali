.class public Landroid/view/accessibility/AccessibilityNodeInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    }
.end annotation


# static fields
.field public static final ACTION_ACCESSIBILITY_FOCUS:I = 0x40

.field public static final ACTION_ARGUMENT_ACCESSIBLE_CLICKABLE_SPAN:Ljava/lang/String; = "android.view.accessibility.action.ACTION_ARGUMENT_ACCESSIBLE_CLICKABLE_SPAN"

.field public static final ACTION_ARGUMENT_COLUMN_INT:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_COLUMN_INT"

.field public static final ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN:Ljava/lang/String; = "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

.field public static final ACTION_ARGUMENT_HTML_ELEMENT_STRING:Ljava/lang/String; = "ACTION_ARGUMENT_HTML_ELEMENT_STRING"

.field public static final ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT:Ljava/lang/String; = "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

.field public static final ACTION_ARGUMENT_MOVE_WINDOW_X:Ljava/lang/String; = "ACTION_ARGUMENT_MOVE_WINDOW_X"

.field public static final ACTION_ARGUMENT_MOVE_WINDOW_Y:Ljava/lang/String; = "ACTION_ARGUMENT_MOVE_WINDOW_Y"

.field public static final ACTION_ARGUMENT_PRESS_AND_HOLD_DURATION_MILLIS_INT:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_PRESS_AND_HOLD_DURATION_MILLIS_INT"

.field public static final ACTION_ARGUMENT_PROGRESS_VALUE:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

.field public static final ACTION_ARGUMENT_ROW_INT:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_ROW_INT"

.field public static final ACTION_ARGUMENT_SELECTION_END_INT:Ljava/lang/String; = "ACTION_ARGUMENT_SELECTION_END_INT"

.field public static final ACTION_ARGUMENT_SELECTION_START_INT:Ljava/lang/String; = "ACTION_ARGUMENT_SELECTION_START_INT"

.field public static final ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE:Ljava/lang/String; = "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

.field public static final ACTION_CLEAR_ACCESSIBILITY_FOCUS:I = 0x80

.field public static final ACTION_CLEAR_FOCUS:I = 0x2

.field public static final ACTION_CLEAR_SELECTION:I = 0x8

.field public static final ACTION_CLICK:I = 0x10

.field public static final ACTION_COLLAPSE:I = 0x80000

.field public static final ACTION_COPY:I = 0x4000

.field public static final ACTION_CUT:I = 0x10000

.field public static final ACTION_DISMISS:I = 0x100000

.field public static final ACTION_EXPAND:I = 0x40000

.field public static final ACTION_FOCUS:I = 0x1

.field public static final ACTION_LONG_CLICK:I = 0x20

.field public static final ACTION_NEXT_AT_MOVEMENT_GRANULARITY:I = 0x100

.field public static final ACTION_NEXT_HTML_ELEMENT:I = 0x400

.field public static final ACTION_PASTE:I = 0x8000

.field public static final ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY:I = 0x200

.field public static final ACTION_PREVIOUS_HTML_ELEMENT:I = 0x800

.field public static final ACTION_SCROLL_BACKWARD:I = 0x2000

.field public static final ACTION_SCROLL_FORWARD:I = 0x1000

.field public static final ACTION_SELECT:I = 0x4

.field public static final ACTION_SET_SELECTION:I = 0x20000

.field public static final ACTION_SET_TEXT:I = 0x200000

.field private static final ACTION_TYPE_MASK:I = -0x1000000

.field private static final BOOLEAN_PROPERTY_ACCESSIBILITY_FOCUSED:I = 0x400

.field private static final BOOLEAN_PROPERTY_CHECKABLE:I = 0x1

.field private static final BOOLEAN_PROPERTY_CHECKED:I = 0x2

.field private static final BOOLEAN_PROPERTY_CLICKABLE:I = 0x20

.field private static final BOOLEAN_PROPERTY_CONTENT_INVALID:I = 0x10000

.field private static final BOOLEAN_PROPERTY_CONTEXT_CLICKABLE:I = 0x20000

.field private static final BOOLEAN_PROPERTY_DISMISSABLE:I = 0x4000

.field private static final BOOLEAN_PROPERTY_EDITABLE:I = 0x1000

.field private static final BOOLEAN_PROPERTY_ENABLED:I = 0x80

.field private static final BOOLEAN_PROPERTY_FOCUSABLE:I = 0x4

.field private static final BOOLEAN_PROPERTY_FOCUSED:I = 0x8

.field private static final BOOLEAN_PROPERTY_IMPORTANCE:I = 0x40000

.field private static final BOOLEAN_PROPERTY_IS_HEADING:I = 0x200000

.field private static final BOOLEAN_PROPERTY_IS_SHOWING_HINT:I = 0x100000

.field private static final BOOLEAN_PROPERTY_IS_TEXT_ENTRY_KEY:I = 0x400000

.field private static final BOOLEAN_PROPERTY_LONG_CLICKABLE:I = 0x40

.field private static final BOOLEAN_PROPERTY_MULTI_LINE:I = 0x8000

.field private static final BOOLEAN_PROPERTY_OPENS_POPUP:I = 0x2000

.field private static final BOOLEAN_PROPERTY_PASSWORD:I = 0x100

.field private static final BOOLEAN_PROPERTY_SCREEN_READER_FOCUSABLE:I = 0x80000

.field private static final BOOLEAN_PROPERTY_SCROLLABLE:I = 0x200

.field private static final BOOLEAN_PROPERTY_SELECTED:I = 0x10

.field private static final BOOLEAN_PROPERTY_VISIBLE_TO_USER:I = 0x800

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z

.field private static final DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

.field public static final EXTRA_DATA_RENDERING_INFO_KEY:Ljava/lang/String; = "android.view.accessibility.extra.DATA_RENDERING_INFO_KEY"

.field public static final EXTRA_DATA_REQUESTED_KEY:Ljava/lang/String; = "android.view.accessibility.AccessibilityNodeInfo.extra_data_requested"

.field public static final EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH:Ljava/lang/String; = "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH"

.field public static final EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_MAX_LENGTH:I = 0x4e20

.field public static final EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX:Ljava/lang/String; = "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX"

.field public static final EXTRA_DATA_TEXT_CHARACTER_LOCATION_KEY:Ljava/lang/String; = "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

.field public static final FLAG_INCLUDE_NOT_IMPORTANT_VIEWS:I = 0x8

.field public static final FLAG_PREFETCH_DESCENDANTS:I = 0x4

.field public static final FLAG_PREFETCH_MASK:I = 0x7

.field public static final FLAG_PREFETCH_PREDECESSORS:I = 0x1

.field public static final FLAG_PREFETCH_SIBLINGS:I = 0x2

.field public static final FLAG_REPORT_VIEW_IDS:I = 0x10

.field public static final FOCUS_ACCESSIBILITY:I = 0x2

.field public static final FOCUS_INPUT:I = 0x1

.field public static final LAST_LEGACY_STANDARD_ACTION:I = 0x200000

.field public static final LEASHED_ITEM_ID:I = 0x7ffffffd

.field public static final LEASHED_NODE_ID:J

.field private static final MAX_POOL_SIZE:I = 0x32

.field public static final MOVEMENT_GRANULARITY_CHARACTER:I = 0x1

.field public static final MOVEMENT_GRANULARITY_LINE:I = 0x4

.field public static final MOVEMENT_GRANULARITY_PAGE:I = 0x10

.field public static final MOVEMENT_GRANULARITY_PARAGRAPH:I = 0x8

.field public static final MOVEMENT_GRANULARITY_WORD:I = 0x2

.field public static final ROOT_ITEM_ID:I = 0x7ffffffe

.field public static final ROOT_NODE_ID:J

.field private static final TAG:Ljava/lang/String; = "AccessibilityNodeInfo"

.field public static final UNDEFINED_CONNECTION_ID:I = -0x1

.field public static final UNDEFINED_ITEM_ID:I = 0x7fffffff

.field public static final UNDEFINED_NODE_ID:J

.field public static final UNDEFINED_SELECTION_INDEX:I = -0x1

.field private static final VIRTUAL_DESCENDANT_ID_MASK:J = -0x100000000L

.field private static final VIRTUAL_DESCENDANT_ID_SHIFT:I = 0x20

.field private static sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation
.end field

.field private mBooleanProperties:I

.field private final mBoundsInParent:Landroid/graphics/Rect;

.field private final mBoundsInScreen:Landroid/graphics/Rect;

.field private mChildNodeIds:Landroid/util/LongArray;

.field private mClassName:Ljava/lang/CharSequence;

.field private mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

.field private mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

.field private mConnectionId:I

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mDrawingOrderInParent:I

.field private mError:Ljava/lang/CharSequence;

.field private mExtraDataKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

.field private mExtras:Landroid/os/Bundle;

.field private mHintText:Ljava/lang/CharSequence;

.field private mInputType:I

.field private mLabelForId:J

.field private mLabeledById:J

.field private mLeashedChild:Landroid/os/IBinder;

.field private mLeashedParent:Landroid/os/IBinder;

.field private mLeashedParentNodeId:J

.field private mLiveRegion:I

.field private mMaxTextLength:I

.field private mMovementGranularities:I

.field private mOriginalText:Ljava/lang/CharSequence;

.field private mPackageName:Ljava/lang/CharSequence;

.field private mPaneTitle:Ljava/lang/CharSequence;

.field private mParentNodeId:J

.field private mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

.field private mSealed:Z

.field private mSourceNodeId:J

.field private mStateDescription:Ljava/lang/CharSequence;

.field private mText:Ljava/lang/CharSequence;

.field private mTextSelectionEnd:I

.field private mTextSelectionStart:I

.field private mTooltipText:Ljava/lang/CharSequence;

.field private mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

.field private mTraversalAfter:J

.field private mTraversalBefore:J

.field private mViewIdResourceName:Ljava/lang/String;

.field private mWindowId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "AccessibilityNodeInfo"

    const/4 v1, 0x3

    .line 105
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/view/accessibility/AccessibilityNodeInfo;->DEBUG:Z

    const v0, 0x7fffffff

    .line 123
    invoke-static {v0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v0

    sput-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    const v0, 0x7ffffffe

    const/4 v1, -0x1

    .line 126
    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v2

    sput-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const v0, 0x7ffffffd

    .line 130
    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v0

    sput-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->LEASHED_NODE_ID:J

    .line 774
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    .line 777
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 6009
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 783
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    .line 784
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 786
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    .line 787
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    .line 788
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    .line 789
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    .line 790
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    .line 793
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    .line 794
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    .line 815
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    .line 818
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    .line 819
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    const/4 v3, 0x0

    .line 820
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    .line 821
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    .line 825
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    .line 837
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 4

    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 783
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    .line 784
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 786
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    .line 787
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    .line 788
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    .line 789
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    .line 790
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    .line 793
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    .line 794
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    .line 815
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    .line 818
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    .line 819
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    const/4 v3, 0x0

    .line 820
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    .line 821
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    .line 825
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    .line 837
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    .line 851
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 4

    .line 860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 783
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    .line 784
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 786
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    .line 787
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    .line 788
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    .line 789
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    .line 790
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    .line 793
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    .line 794
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    .line 815
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    .line 818
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    .line 819
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    const/4 v3, 0x0

    .line 820
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    .line 821
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    .line 825
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    .line 837
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    .line 861
    invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 870
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 783
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    .line 784
    sget-wide v1, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 786
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    .line 787
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    .line 788
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    .line 789
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    .line 790
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    .line 793
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    .line 794
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    .line 815
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    .line 818
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    .line 819
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    const/4 v3, 0x0

    .line 820
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    .line 821
    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    .line 825
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    .line 837
    iput-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    .line 871
    invoke-direct {p0, p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->init(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    return-void
.end method

.method static synthetic access$2200(I)Ljava/lang/String;
    .locals 0

    .line 101
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionSymbolicName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    .line 101
    invoke-static {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/os/Parcel;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->initFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private addActionUnchecked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1385
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    .line 1389
    :cond_1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1390
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addChildInternal(Landroid/view/View;IZ)V
    .locals 2

    .line 1260
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1261
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-nez v0, :cond_0

    .line 1262
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    :cond_0
    if-eqz p1, :cond_1

    .line 1265
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result p1

    goto :goto_0

    :cond_1
    const p1, 0x7fffffff

    .line 1266
    :goto_0
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide p1

    .line 1267
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    const-string p1, "AccessibilityNodeInfo"

    const-string p2, "Rejecting attempt to make a View its own child"

    .line 1268
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-eqz p3, :cond_3

    .line 1273
    iget-object p3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/LongArray;->indexOf(J)I

    move-result p3

    if-ltz p3, :cond_3

    return-void

    .line 1276
    :cond_3
    iget-object p3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {p3, p1, p2}, Landroid/util/LongArray;->add(J)V

    return-void
.end method

.method private addStandardActions(J)V
    .locals 4

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x1

    .line 4265
    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v2

    shl-long/2addr v0, v2

    not-long v2, v0

    and-long/2addr p1, v2

    .line 4267
    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionSingletonBySerializationFlag(J)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v0

    .line 4268
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static canPerformRequestOverConnection(IIJ)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 4395
    invoke-static {p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result p1

    const p2, 0x7fffffff

    if-eq p1, p2, :cond_0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private clear()V
    .locals 2

    .line 4231
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->init(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    return-void
.end method

.method private enforceValidFocusDirection(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 v0, 0x21

    if-eq p1, v0, :cond_1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    const/16 v0, 0x82

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3547
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private enforceValidFocusType(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3557
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown focus type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public static getAccessibilityViewId(J)I
    .locals 0

    long-to-int p0, p0

    return p0
.end method

.method private static getActionSingleton(I)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 4

    .line 4239
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->sStandardActions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4241
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->sStandardActions:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 4242
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v3

    if-ne p0, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getActionSingletonBySerializationFlag(J)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .locals 5

    .line 4251
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->sStandardActions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4253
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->sStandardActions:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 4254
    iget-wide v3, v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->mSerializationFlag:J

    cmp-long v3, p0, v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getActionSymbolicName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const v0, 0x1020055

    if-ne p0, v0, :cond_0

    const-string p0, "ACTION_DRAG"

    return-object p0

    :cond_0
    const v0, 0x1020057

    if-ne p0, v0, :cond_1

    const-string p0, "ACTION_CANCEL_DRAG"

    return-object p0

    :cond_1
    const v0, 0x1020056

    if-ne p0, v0, :cond_2

    const-string p0, "ACTION_DROP"

    return-object p0

    :cond_2
    const-string p0, "ACTION_UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "ACTION_PRESS_AND_HOLD"

    return-object p0

    :pswitch_1
    const-string p0, "ACTION_PAGE_RIGHT"

    return-object p0

    :pswitch_2
    const-string p0, "ACTION_PAGE_LEFT"

    return-object p0

    :pswitch_3
    const-string p0, "ACTION_PAGE_DOWN"

    return-object p0

    :pswitch_4
    const-string p0, "ACTION_PAGE_UP"

    return-object p0

    :pswitch_5
    const-string p0, "ACTION_HIDE_TOOLTIP"

    return-object p0

    :pswitch_6
    const-string p0, "ACTION_SHOW_TOOLTIP"

    return-object p0

    :pswitch_7
    const-string p0, "ACTION_SET_PROGRESS"

    return-object p0

    :pswitch_8
    const-string p0, "ACTION_CONTEXT_CLICK"

    return-object p0

    :pswitch_9
    const-string p0, "ACTION_SCROLL_RIGHT"

    return-object p0

    :pswitch_a
    const-string p0, "ACTION_SCROLL_DOWN"

    return-object p0

    :pswitch_b
    const-string p0, "ACTION_SCROLL_LEFT"

    return-object p0

    :pswitch_c
    const-string p0, "ACTION_SCROLL_UP"

    return-object p0

    :pswitch_d
    const-string p0, "ACTION_SCROLL_TO_POSITION"

    return-object p0

    :pswitch_e
    const-string p0, "ACTION_SHOW_ON_SCREEN"

    return-object p0

    :sswitch_0
    const-string p0, "ACTION_IME_ENTER"

    return-object p0

    :sswitch_1
    const-string p0, "ACTION_SET_TEXT"

    return-object p0

    :sswitch_2
    const-string p0, "ACTION_DISMISS"

    return-object p0

    :sswitch_3
    const-string p0, "ACTION_COLLAPSE"

    return-object p0

    :sswitch_4
    const-string p0, "ACTION_EXPAND"

    return-object p0

    :sswitch_5
    const-string p0, "ACTION_SET_SELECTION"

    return-object p0

    :sswitch_6
    const-string p0, "ACTION_CUT"

    return-object p0

    :sswitch_7
    const-string p0, "ACTION_PASTE"

    return-object p0

    :sswitch_8
    const-string p0, "ACTION_COPY"

    return-object p0

    :sswitch_9
    const-string p0, "ACTION_SCROLL_BACKWARD"

    return-object p0

    :sswitch_a
    const-string p0, "ACTION_SCROLL_FORWARD"

    return-object p0

    :sswitch_b
    const-string p0, "ACTION_PREVIOUS_HTML_ELEMENT"

    return-object p0

    :sswitch_c
    const-string p0, "ACTION_NEXT_HTML_ELEMENT"

    return-object p0

    :sswitch_d
    const-string p0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    return-object p0

    :sswitch_e
    const-string p0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    return-object p0

    :sswitch_f
    const-string p0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    return-object p0

    :sswitch_10
    const-string p0, "ACTION_ACCESSIBILITY_FOCUS"

    return-object p0

    :sswitch_11
    const-string p0, "ACTION_LONG_CLICK"

    return-object p0

    :sswitch_12
    const-string p0, "ACTION_CLICK"

    return-object p0

    :sswitch_13
    const-string p0, "ACTION_CLEAR_SELECTION"

    return-object p0

    :sswitch_14
    const-string p0, "ACTION_SELECT"

    return-object p0

    :cond_3
    const-string p0, "ACTION_CLEAR_FOCUS"

    return-object p0

    :cond_4
    const-string p0, "ACTION_FOCUS"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_14
        0x8 -> :sswitch_13
        0x10 -> :sswitch_12
        0x20 -> :sswitch_11
        0x40 -> :sswitch_10
        0x80 -> :sswitch_f
        0x100 -> :sswitch_e
        0x200 -> :sswitch_d
        0x400 -> :sswitch_c
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_a
        0x2000 -> :sswitch_9
        0x4000 -> :sswitch_8
        0x8000 -> :sswitch_7
        0x10000 -> :sswitch_6
        0x20000 -> :sswitch_5
        0x40000 -> :sswitch_4
        0x80000 -> :sswitch_3
        0x100000 -> :sswitch_2
        0x200000 -> :sswitch_1
        0x1020054 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1020036
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1020044
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getBooleanProperty(I)Z
    .locals 1

    .line 3386
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static getMovementGranularitySymbolicName(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    const-string p0, "MOVEMENT_GRANULARITY_PAGE"

    return-object p0

    .line 4388
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown movement granularity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "MOVEMENT_GRANULARITY_PARAGRAPH"

    return-object p0

    :cond_2
    const-string p0, "MOVEMENT_GRANULARITY_LINE"

    return-object p0

    :cond_3
    const-string p0, "MOVEMENT_GRANULARITY_WORD"

    return-object p0

    :cond_4
    const-string p0, "MOVEMENT_GRANULARITY_CHARACTER"

    return-object p0
.end method

.method private static getNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8

    .line 4504
    invoke-static {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4507
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    move v1, p0

    move v2, p1

    move-wide v3, p2

    .line 4508
    invoke-virtual/range {v0 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method private static getNodeForAccessibilityId(ILandroid/os/IBinder;J)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 9

    if-eqz p1, :cond_1

    .line 4516
    invoke-static {p2, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 4520
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v8, 0x0

    move v2, p0

    move-object v3, p1

    move-wide v4, p2

    .line 4521
    invoke-virtual/range {v1 .. v8}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(ILandroid/os/IBinder;JZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getVirtualDescendantId(J)I
    .locals 2

    const-wide v0, -0x100000000L

    and-long/2addr p0, v0

    const/16 v0, 0x20

    shr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private static idItemToString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 4540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "UNDEFINED"

    return-object p0

    :pswitch_1
    const-string p0, "ROOT"

    return-object p0

    :cond_0
    const-string p0, "HOST"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x7ffffffe
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static idToString(J)Ljava/lang/String;
    .locals 1

    .line 4528
    invoke-static {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    .line 4529
    invoke-static {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    .line 4531
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->idItemToString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 4532
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->idItemToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->idItemToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private init(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .locals 3

    .line 3976
    iget-boolean v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    .line 3977
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 3978
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    .line 3979
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    .line 3980
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    .line 3981
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    .line 3982
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    .line 3983
    iget v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    .line 3984
    iget v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    .line 3985
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3986
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3987
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    .line 3988
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    .line 3989
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    .line 3990
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mOriginalText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mOriginalText:Ljava/lang/CharSequence;

    .line 3991
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    .line 3992
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    .line 3993
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    .line 3994
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    .line 3995
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mPaneTitle:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPaneTitle:Ljava/lang/CharSequence;

    .line 3996
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    .line 3997
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    .line 3999
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4000
    :cond_0
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 4001
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 4002
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 4003
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    goto :goto_0

    .line 4005
    :cond_1
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4009
    :cond_2
    :goto_0
    iget v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    .line 4010
    iget v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    .line 4011
    iget v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    .line 4014
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/util/LongArray;->clear()V

    .line 4015
    :cond_3
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-eqz v0, :cond_5

    .line 4016
    invoke-virtual {v0}, Landroid/util/LongArray;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 4017
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-nez v1, :cond_4

    .line 4018
    invoke-virtual {v0}, Landroid/util/LongArray;->clone()Landroid/util/LongArray;

    move-result-object v0

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    goto :goto_1

    .line 4020
    :cond_4
    invoke-virtual {v1, v0}, Landroid/util/LongArray;->addAll(Landroid/util/LongArray;)V

    .line 4024
    :cond_5
    :goto_1
    iget v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    .line 4025
    iget v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    .line 4026
    iget v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    .line 4027
    iget v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    .line 4028
    iget v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    .line 4030
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    .line 4032
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    new-instance v0, Landroid/os/Bundle;

    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_6
    move-object v0, v1

    :goto_2
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    if-eqz p2, :cond_7

    .line 4035
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->initPoolingInfos(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_3

    .line 4037
    :cond_7
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->initCopyInfos(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4040
    :goto_3
    iget-object p2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    if-eqz p2, :cond_8

    .line 4042
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->access$300(Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;)Landroid/util/ArrayMap;

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {v1, p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;-><init>(Landroid/util/ArrayMap;Z)V

    :cond_8
    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    .line 4044
    iget-object p2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    iput-object p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    .line 4045
    iget-object p2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    iput-object p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    .line 4046
    iget-wide p1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    return-void
.end method

.method private initCopyInfos(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 10

    .line 4065
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 4067
    :cond_0
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->access$500(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)I

    move-result v3

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->access$600(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)F

    move-result v4

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->access$700(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)F

    move-result v5

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->access$800(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)F

    move-result v0

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;-><init>(IFFF)V

    :goto_0
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 4068
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    if-nez v0, :cond_1

    move-object v2, v1

    goto :goto_1

    .line 4070
    :cond_1
    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->access$900(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)I

    move-result v3

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->access$1000(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)I

    move-result v4

    .line 4071
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->access$1100(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)Z

    move-result v5

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->access$1200(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)I

    move-result v0

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;-><init>(IIZI)V

    :goto_1
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 4072
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    if-nez v0, :cond_2

    move-object v9, v1

    goto :goto_2

    .line 4074
    :cond_2
    new-instance v9, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->access$1300(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)I

    move-result v3

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->access$1400(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)I

    move-result v4

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->access$1500(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)I

    move-result v5

    .line 4075
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->access$1600(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)I

    move-result v6

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->access$000(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Z

    move-result v7

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->access$1700(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Z

    move-result v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>(IIIIZZ)V

    :goto_2
    iput-object v9, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 4076
    iget-object p1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    if-nez p1, :cond_3

    goto :goto_3

    .line 4078
    :cond_3
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-direct {v0, p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;Landroid/view/accessibility/AccessibilityNodeInfo$1;)V

    move-object v1, v0

    :goto_3
    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    return-void
.end method

.method private initFromParcel(Landroid/os/Parcel;)V
    .locals 14

    .line 4088
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 4090
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 4091
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_0

    .line 4092
    :cond_1
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-boolean v3, v3, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    :goto_0
    const/4 v5, 0x2

    .line 4093
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    :cond_2
    const/4 v6, 0x3

    .line 4094
    invoke-static {v0, v1, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    :cond_3
    const/4 v5, 0x4

    .line 4095
    invoke-static {v0, v1, v6}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    :cond_4
    const/4 v6, 0x5

    .line 4096
    invoke-static {v0, v1, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    iput-wide v7, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    :cond_5
    const/4 v5, 0x6

    .line 4097
    invoke-static {v0, v1, v6}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    :cond_6
    const/4 v6, 0x7

    .line 4098
    invoke-static {v0, v1, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    iput-wide v7, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    :cond_7
    const/16 v5, 0x8

    .line 4099
    invoke-static {v0, v1, v6}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    :cond_8
    const/16 v6, 0x9

    .line 4101
    invoke-static {v0, v1, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    :cond_9
    const/16 v5, 0xa

    .line 4103
    invoke-static {v0, v1, v6}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_b

    .line 4104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-gtz v6, :cond_a

    .line 4106
    iput-object v7, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    goto :goto_2

    .line 4108
    :cond_a
    new-instance v8, Landroid/util/LongArray;

    invoke-direct {v8, v6}, Landroid/util/LongArray;-><init>(I)V

    iput-object v8, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    move v8, v2

    :goto_1
    if-ge v8, v6, :cond_b

    .line 4110
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v9

    .line 4111
    iget-object v11, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v11, v9, v10}, Landroid/util/LongArray;->add(J)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_b
    :goto_2
    const/16 v6, 0xb

    .line 4116
    invoke-static {v0, v1, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 4117
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v5, Landroid/graphics/Rect;->top:I

    .line 4118
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v5, Landroid/graphics/Rect;->bottom:I

    .line 4119
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v5, Landroid/graphics/Rect;->left:I

    .line 4120
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v5, Landroid/graphics/Rect;->right:I

    :cond_c
    const/16 v5, 0xc

    .line 4123
    invoke-static {v0, v1, v6}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 4124
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v6, Landroid/graphics/Rect;->top:I

    .line 4125
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v6, Landroid/graphics/Rect;->bottom:I

    .line 4126
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v6, Landroid/graphics/Rect;->left:I

    .line 4127
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v6, Landroid/graphics/Rect;->right:I

    :cond_d
    const/16 v6, 0xd

    .line 4130
    invoke-static {v0, v1, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 4131
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 4132
    invoke-direct {p0, v8, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->addStandardActions(J)V

    .line 4133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move v8, v2

    :goto_3
    if-ge v8, v5, :cond_e

    .line 4135
    sget-object v9, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4136
    invoke-interface {v9, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 4137
    invoke-direct {p0, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->addActionUnchecked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_e
    const/16 v5, 0xe

    .line 4141
    invoke-static {v0, v1, v6}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    :cond_f
    const/16 v6, 0xf

    .line 4142
    invoke-static {v0, v1, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    :cond_10
    const/16 v5, 0x10

    .line 4143
    invoke-static {v0, v1, v6}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    :cond_11
    const/16 v6, 0x11

    .line 4145
    invoke-static {v0, v1, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    :cond_12
    const/16 v5, 0x12

    .line 4146
    invoke-static {v0, v1, v6}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    :cond_13
    const/16 v6, 0x13

    .line 4147
    invoke-static {v0, v1, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    :cond_14
    const/16 v5, 0x14

    .line 4148
    invoke-static {v0, v1, v6}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    :cond_15
    const/16 v6, 0x15

    .line 4149
    invoke-static {v0, v1, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    :cond_16
    const/16 v5, 0x16

    .line 4150
    invoke-static {v0, v1, v6}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    :cond_17
    const/16 v6, 0x17

    .line 4151
    invoke-static {v0, v1, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 4152
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    :cond_18
    const/16 v5, 0x18

    .line 4154
    invoke-static {v0, v1, v6}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPaneTitle:Ljava/lang/CharSequence;

    :cond_19
    const/16 v6, 0x19

    .line 4155
    invoke-static {v0, v1, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    :cond_1a
    const/16 v5, 0x1a

    .line 4156
    invoke-static {v0, v1, v6}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v6

    if-eqz v6, :cond_1b

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    :cond_1b
    const/16 v6, 0x1b

    .line 4158
    invoke-static {v0, v1, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    :cond_1c
    const/16 v5, 0x1c

    .line 4159
    invoke-static {v0, v1, v6}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v6

    if-eqz v6, :cond_1d

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    :cond_1d
    const/16 v6, 0x1d

    .line 4161
    invoke-static {v0, v1, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    :cond_1e
    const/16 v5, 0x1e

    .line 4162
    invoke-static {v0, v1, v6}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    :cond_1f
    const/16 v6, 0x1f

    .line 4163
    invoke-static {v0, v1, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    :cond_20
    const/16 v5, 0x20

    .line 4165
    invoke-static {v0, v1, v6}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 4166
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_4

    :cond_21
    move-object v6, v7

    .line 4167
    :goto_4
    iput-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    const/16 v6, 0x21

    .line 4169
    invoke-static {v0, v1, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 4170
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    goto :goto_5

    :cond_22
    move-object v5, v7

    .line 4171
    :goto_5
    iput-object v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    .line 4173
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    if-eqz v5, :cond_23

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->recycle()V

    :cond_23
    const/16 v5, 0x22

    .line 4174
    invoke-static {v0, v1, v6}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 4176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 4177
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    .line 4178
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v9

    .line 4179
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v10

    .line 4175
    invoke-static {v6, v8, v9, v10}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v6

    goto :goto_6

    :cond_24
    move-object v6, v7

    .line 4180
    :goto_6
    iput-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 4182
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    if-eqz v6, :cond_25

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->recycle()V

    :cond_25
    const/16 v6, 0x23

    .line 4183
    invoke-static {v0, v1, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 4185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 4186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 4187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-ne v9, v4, :cond_26

    move v9, v4

    goto :goto_7

    :cond_26
    move v9, v2

    .line 4188
    :goto_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 4184
    invoke-static {v5, v8, v9, v10}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v5

    goto :goto_8

    :cond_27
    move-object v5, v7

    .line 4189
    :goto_8
    iput-object v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 4191
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    if-eqz v5, :cond_28

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->recycle()V

    :cond_28
    const/16 v5, 0x24

    .line 4192
    invoke-static {v0, v1, v6}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 4194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 4195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 4196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 4197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 4198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v4, :cond_29

    move v12, v4

    goto :goto_9

    :cond_29
    move v12, v2

    .line 4199
    :goto_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v4, :cond_2a

    move v13, v4

    goto :goto_a

    :cond_2a
    move v13, v2

    .line 4193
    :goto_a
    invoke-static/range {v8 .. v13}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v2

    goto :goto_b

    :cond_2b
    move-object v2, v7

    .line 4200
    :goto_b
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    const/16 v2, 0x25

    .line 4202
    invoke-static {v0, v1, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 4203
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    iput-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    :cond_2c
    const/16 v4, 0x26

    .line 4206
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 4207
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->recycle()V

    .line 4208
    :cond_2d
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    move-result-object v2

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    .line 4209
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    invoke-static {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->access$1902(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;Landroid/util/Size;)Landroid/util/Size;

    .line 4210
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    invoke-static {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->access$2002(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;F)F

    .line 4211
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->access$2102(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;I)I

    :cond_2e
    const/16 v2, 0x27

    .line 4214
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 4215
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    :cond_2f
    const/16 v4, 0x28

    .line 4217
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 4218
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    .line 4220
    :cond_30
    invoke-static {v0, v1, v4}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 4221
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    .line 4224
    :cond_31
    iput-boolean v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    return-void
.end method

.method private initPoolingInfos(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 4050
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->recycle()V

    .line 4051
    :cond_0
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4052
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 4053
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->recycle()V

    .line 4054
    :cond_2
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    if-eqz v0, :cond_3

    .line 4055
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    .line 4056
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->recycle()V

    .line 4057
    :cond_4
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    if-eqz v0, :cond_5

    .line 4058
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    :goto_2
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 4059
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->recycle()V

    .line 4060
    :cond_6
    iget-object p1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    if-eqz p1, :cond_7

    .line 4061
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->access$400(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    move-result-object v1

    :cond_7
    iput-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    return-void
.end method

.method private static isDefaultStandardAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z
    .locals 4

    .line 4235
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->mSerializationFlag:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static makeNodeId(II)J
    .locals 2

    int-to-long v0, p1

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    int-to-long p0, p0

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static obtain()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    .line 3621
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3622
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v1, :cond_0

    .line 3623
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    .line 3625
    :cond_1
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>()V

    :goto_0
    return-object v0
.end method

.method public static obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 3588
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 3589
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    return-object v0
.end method

.method public static obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 3607
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 3608
    invoke-virtual {v0, p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    return-object v0
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    .line 3640
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    const/4 v1, 0x1

    .line 3641
    invoke-direct {v0, p0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->init(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    return-object v0
.end method

.method private replaceClickableSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7

    .line 2906
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    .line 2907
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/ClickableSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    .line 2908
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2909
    array-length v2, v0

    if-nez v2, :cond_0

    return-object p1

    .line 2912
    :cond_0
    :goto_0
    array-length p1, v0

    if-ge v3, p1, :cond_3

    .line 2913
    aget-object p1, v0, v3

    .line 2914
    instance-of v2, p1, Landroid/text/style/AccessibilityClickableSpan;

    if-nez v2, :cond_3

    instance-of v2, p1, Landroid/text/style/AccessibilityURLSpan;

    if-eqz v2, :cond_1

    goto :goto_2

    .line 2919
    :cond_1
    invoke-interface {v1, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 2920
    invoke-interface {v1, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 2921
    invoke-interface {v1, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    .line 2922
    invoke-interface {v1, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2923
    instance-of v6, p1, Landroid/text/style/URLSpan;

    if-eqz v6, :cond_2

    .line 2924
    new-instance v6, Landroid/text/style/AccessibilityURLSpan;

    check-cast p1, Landroid/text/style/URLSpan;

    invoke-direct {v6, p1}, Landroid/text/style/AccessibilityURLSpan;-><init>(Landroid/text/style/URLSpan;)V

    goto :goto_1

    .line 2925
    :cond_2
    new-instance v6, Landroid/text/style/AccessibilityClickableSpan;

    invoke-virtual {p1}, Landroid/text/style/ClickableSpan;->getId()I

    move-result p1

    invoke-direct {v6, p1}, Landroid/text/style/AccessibilityClickableSpan;-><init>(I)V

    .line 2926
    :goto_1
    invoke-interface {v1, v6, v2, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v1
.end method

.method private replaceReplacementSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7

    .line 2940
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    .line 2941
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/ReplacementSpan;

    const/4 v3, 0x0

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ReplacementSpan;

    .line 2942
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2943
    array-length v2, v0

    if-nez v2, :cond_0

    return-object p1

    .line 2946
    :cond_0
    :goto_0
    array-length p1, v0

    if-ge v3, p1, :cond_3

    .line 2947
    aget-object p1, v0, v3

    .line 2948
    invoke-virtual {p1}, Landroid/text/style/ReplacementSpan;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    .line 2949
    instance-of v4, p1, Landroid/text/style/AccessibilityReplacementSpan;

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    if-nez v2, :cond_2

    goto :goto_1

    .line 2956
    :cond_2
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 2957
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 2958
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    .line 2959
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    .line 2960
    new-instance p1, Landroid/text/style/AccessibilityReplacementSpan;

    invoke-direct {p1, v2}, Landroid/text/style/AccessibilityReplacementSpan;-><init>(Ljava/lang/CharSequence;)V

    .line 2961
    invoke-virtual {v1, p1, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v1
.end method

.method private setBooleanProperty(IZ)V
    .locals 0

    .line 3398
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-eqz p2, :cond_0

    .line 3400
    iget p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    goto :goto_0

    .line 3402
    :cond_0
    iget p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    :goto_0
    return-void
.end method

.method public static setNumInstancesInUseCounter(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .line 3669
    sput-object p0, Landroid/view/accessibility/AccessibilityNodeInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public addAction(I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1410
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    const/high16 v0, -0x1000000

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    int-to-long v0, p1

    .line 1417
    invoke-direct {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addStandardActions(J)V

    return-void

    .line 1413
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action is not a combination of the standard actions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V
    .locals 0

    .line 1375
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1377
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addActionUnchecked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public addChild(Landroid/os/IBinder;)V
    .locals 2

    .line 1163
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-nez p1, :cond_0

    return-void

    .line 1167
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-nez v0, :cond_1

    .line 1168
    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    .line 1171
    :cond_1
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    .line 1174
    iget-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->LEASHED_NODE_ID:J

    invoke-virtual {p1, v0, v1}, Landroid/util/LongArray;->indexOf(J)I

    move-result p1

    if-ltz p1, :cond_2

    return-void

    .line 1177
    :cond_2
    iget-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {p1, v0, v1}, Landroid/util/LongArray;->add(J)V

    return-void
.end method

.method public addChild(Landroid/view/View;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 1140
    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildInternal(Landroid/view/View;IZ)V

    return-void
.end method

.method public addChild(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    .line 1256
    invoke-direct {p0, p1, p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildInternal(Landroid/view/View;IZ)V

    return-void
.end method

.method public addChildUnchecked(Landroid/view/View;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1187
    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildInternal(Landroid/view/View;IZ)V

    return-void
.end method

.method public canOpenPopup()Z
    .locals 1

    const/16 v0, 0x2000

    .line 2598
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected enforceNotSealed()V
    .locals 2

    .line 3569
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3570
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action on a sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected enforceSealed()V
    .locals 2

    .line 3531
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3532
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action on a not sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 4407
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 4410
    :cond_2
    check-cast p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4411
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    iget-wide v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    return v1

    .line 4414
    :cond_3
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget p1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    if-eq v2, p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 1763
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1764
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1765
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1767
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 1768
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfosByText(IIJLjava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 1801
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    if-nez p1, :cond_0

    const-string p1, "AccessibilityNodeInfo"

    const-string/jumbo v0, "returns empty list due to null viewId."

    .line 1803
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1806
    :cond_0
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1807
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1809
    :cond_1
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 1810
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfosByViewId(IIJLjava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6

    .line 936
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 937
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceValidFocusType(I)V

    .line 938
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 941
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public focusSearch(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6

    .line 968
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 969
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceValidFocusDirection(I)V

    .line 970
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 973
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityInteractionClient;->focusSearch(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public getActionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation

    .line 1310
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getActions()I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1339
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1343
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 1345
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v3

    const/high16 v4, 0x200000

    if-gt v3, v4, :cond_1

    or-int/2addr v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public getAvailableExtraData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1608
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1609
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1611
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getBoundsInParent(Landroid/graphics/Rect;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1917
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getBoundsInScreen()Landroid/graphics/Rect;
    .locals 1

    .line 1967
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 4

    .line 1957
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 14

    .line 1108
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1109
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1112
    :cond_0
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v2, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 1115
    :cond_1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v0, p1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v4

    .line 1116
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v6

    .line 1117
    iget-object v8, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    if-eqz v8, :cond_2

    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->LEASHED_NODE_ID:J

    cmp-long p1, v4, v0

    if-nez p1, :cond_2

    .line 1118
    iget v7, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    sget-wide v9, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v13}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(ILandroid/os/IBinder;JZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1

    .line 1122
    :cond_2
    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    const/4 p1, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v1, v6

    move v6, p1

    invoke-virtual/range {v1 .. v8}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    return-object p1
.end method

.method public getChildCount()I
    .locals 1

    .line 1090
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/LongArray;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getChildId(I)J
    .locals 2

    .line 1078
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-eqz v0, :cond_0

    .line 1081
    invoke-virtual {v0, p1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v0

    return-wide v0

    .line 1079
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getChildNodeIds()Landroid/util/LongArray;
    .locals 1

    .line 1067
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    return-object v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 2809
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCollectionInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .locals 1

    .line 2383
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    return-object v0
.end method

.method public getCollectionItemInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .locals 1

    .line 2409
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    return-object v0
.end method

.method public getConnectionId()I
    .locals 1

    .line 3427
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 3034
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDrawingOrder()I
    .locals 1

    .line 2357
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    return v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    .line 3016
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtraRenderingInfo()Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;
    .locals 1

    .line 2461
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 3328
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 3329
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    .line 3331
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .line 2973
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .line 3293
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    return v0
.end method

.method public getLabelFor()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    .line 3150
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 3151
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLabeledBy()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    .line 3202
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 3203
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLeashedParent()Landroid/os/IBinder;
    .locals 1

    .line 3486
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    return-object v0
.end method

.method public getLeashedParentNodeId()J
    .locals 2

    .line 3496
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    return-wide v0
.end method

.method public getLiveRegion()I
    .locals 1

    .line 2549
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    return v0
.end method

.method public getMaxTextLength()I
    .locals 1

    .line 1663
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    return v0
.end method

.method public getMovementGranularities()I
    .locals 1

    .line 1689
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    return v0
.end method

.method public getOriginalText()Ljava/lang/CharSequence;
    .locals 1

    .line 2870
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mOriginalText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/CharSequence;
    .locals 1

    .line 2783
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPaneTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 2342
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPaneTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getParent()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5

    .line 1841
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1842
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 1843
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    invoke-static {v3, v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(ILandroid/os/IBinder;J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 1845
    :cond_0
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getParentNodeId()J
    .locals 2

    .line 1854
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    return-wide v0
.end method

.method public getRangeInfo()Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    .locals 1

    .line 2432
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    return-object v0
.end method

.method public getSourceNodeId()J
    .locals 2

    .line 3462
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    return-wide v0
.end method

.method public getStateDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 3025
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 5

    .line 2849
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    .line 2850
    move-object v1, v0

    check-cast v1, Landroid/text/Spanned;

    .line 2852
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v2, Landroid/text/style/AccessibilityClickableSpan;

    const/4 v3, 0x0

    invoke-interface {v1, v3, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/AccessibilityClickableSpan;

    move v2, v3

    .line 2853
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 2854
    aget-object v4, v0, v2

    invoke-virtual {v4, p0}, Landroid/text/style/AccessibilityClickableSpan;->copyConnectionDataFrom(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2856
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    .line 2857
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-class v2, Landroid/text/style/AccessibilityURLSpan;

    invoke-interface {v1, v3, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/AccessibilityURLSpan;

    .line 2858
    :goto_1
    array-length v1, v0

    if-ge v3, v1, :cond_1

    .line 2859
    aget-object v1, v0, v3

    invoke-virtual {v1, p0}, Landroid/text/style/AccessibilityURLSpan;->copyConnectionDataFrom(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2862
    :cond_1
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTextSelectionEnd()I
    .locals 1

    .line 3265
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    return v0
.end method

.method public getTextSelectionStart()I
    .locals 1

    .line 3250
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    return v0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    .line 3081
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTouchDelegateInfo()Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;
    .locals 2

    .line 3353
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    if-eqz v0, :cond_0

    .line 3354
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->access$100(Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;I)V

    .line 3355
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->access$200(Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;I)V

    .line 3357
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    return-object v0
.end method

.method public getTraversalAfter()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    .line 1547
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1548
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTraversalBefore()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    .line 1486
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1487
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(IIJ)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getViewIdResourceName()Ljava/lang/String;
    .locals 1

    .line 3235
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getWindow()Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 4

    .line 1822
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1823
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1826
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 1827
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    return-object v0
.end method

.method public getWindowId()I
    .locals 1

    .line 983
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    return v0
.end method

.method public hasExtras()Z
    .locals 1

    .line 3339
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 4424
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 4425
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 4426
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    add-int/2addr v0, v1

    return v0
.end method

.method public isAccessibilityFocused()Z
    .locals 1

    const/16 v0, 0x400

    .line 2124
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    const/4 v0, 0x1

    .line 1993
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    const/4 v0, 0x2

    .line 2018
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isClickable()Z
    .locals 1

    const/16 v0, 0x20

    .line 2174
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isContentInvalid()Z
    .locals 1

    const/high16 v0, 0x10000

    .line 2488
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isContextClickable()Z
    .locals 1

    const/high16 v0, 0x20000

    .line 2512
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isDismissable()Z
    .locals 1

    const/16 v0, 0x4000

    .line 2622
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isEditable()Z
    .locals 1

    const/16 v0, 0x1000

    .line 2299
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    const/16 v0, 0x80

    .line 2224
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    const/4 v0, 0x4

    .line 2043
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .locals 1

    const/16 v0, 0x8

    .line 2068
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isHeading()Z
    .locals 2

    const/high16 v0, 0x200000

    .line 2733
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2734
    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getCollectionItemInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2735
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->access$000(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isImportantForAccessibility()Z
    .locals 1

    const/high16 v0, 0x40000

    .line 2648
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isLongClickable()Z
    .locals 1

    const/16 v0, 0x40

    .line 2199
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isMultiLine()Z
    .locals 1

    const v0, 0x8000

    .line 2575
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isPassword()Z
    .locals 1

    const/16 v0, 0x100

    .line 2249
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isScreenReaderFocusable()Z
    .locals 1

    const/high16 v0, 0x80000

    .line 2679
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .locals 1

    const/16 v0, 0x200

    .line 2274
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isSealed()Z
    .locals 1

    .line 3520
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    const/16 v0, 0x10

    .line 2149
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isShowingHintText()Z
    .locals 1

    const/high16 v0, 0x100000

    .line 2705
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isTextEntryKey()Z
    .locals 1

    const/high16 v0, 0x400000

    .line 2759
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isVisibleToUser()Z
    .locals 1

    const/16 v0, 0x800

    .line 2099
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public performAction(I)Z
    .locals 7

    .line 1705
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1706
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1709
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    const/4 v1, 0x0

    .line 1711
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    move-object v6, v2

    goto :goto_0

    :cond_1
    move-object v6, v1

    .line 1714
    :goto_0
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    move v5, p1

    invoke-virtual/range {v0 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->performAccessibilityAction(IIJILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public performAction(ILandroid/os/Bundle;)Z
    .locals 7

    .line 1732
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1733
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1736
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    .line 1737
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    move v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->performAccessibilityAction(IIJILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public recycle()V
    .locals 1

    .line 3655
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->clear()V

    .line 3656
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 3657
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_0

    .line 3658
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_0
    return-void
.end method

.method public refresh()Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1029
    invoke-virtual {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh(Landroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method public refresh(Landroid/os/Bundle;Z)Z
    .locals 10

    .line 1001
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    .line 1002
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(IIJ)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1005
    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    .line 1006
    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    const/4 v8, 0x0

    move v7, p2

    move-object v9, p1

    invoke-virtual/range {v2 .. v9}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 1015
    :cond_1
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    const/4 p2, 0x1

    .line 1016
    invoke-direct {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->init(Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 1017
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    return p2
.end method

.method public refreshWithExtraData(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3

    const-string v0, "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH"

    const/4 v1, -0x1

    .line 1051
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0x4e20

    if-le v1, v2, :cond_0

    .line 1053
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string v0, "android.view.accessibility.AccessibilityNodeInfo.extra_data_requested"

    .line 1057
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1058
    invoke-virtual {p0, p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh(Landroid/os/Bundle;Z)Z

    move-result p1

    return p1
.end method

.method public removeAction(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1436
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1438
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionSingleton(I)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    return-void
.end method

.method public removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z
    .locals 1

    .line 1456
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1458
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1462
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public removeAllActions()V
    .locals 1

    .line 1471
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1472
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public removeChild(Landroid/os/IBinder;)Z
    .locals 4

    .line 1224
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1225
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1228
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 1231
    :cond_1
    iget-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    sget-wide v2, Landroid/view/accessibility/AccessibilityNodeInfo;->LEASHED_NODE_ID:J

    invoke-virtual {p1, v2, v3}, Landroid/util/LongArray;->indexOf(J)I

    move-result p1

    const/4 v0, 0x0

    .line 1232
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    if-gez p1, :cond_2

    return v1

    .line 1236
    :cond_2
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v0, p1}, Landroid/util/LongArray;->remove(I)V

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public removeChild(Landroid/view/View;)Z
    .locals 1

    const/4 v0, -0x1

    .line 1205
    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeChild(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public removeChild(Landroid/view/View;I)Z
    .locals 2

    .line 1290
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1291
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 1296
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result p1

    goto :goto_0

    :cond_1
    const p1, 0x7fffffff

    .line 1297
    :goto_0
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide p1

    .line 1298
    invoke-virtual {v0, p1, p2}, Landroid/util/LongArray;->indexOf(J)I

    move-result p1

    if-gez p1, :cond_2

    return v1

    .line 1302
    :cond_2
    invoke-virtual {v0, p1}, Landroid/util/LongArray;->remove(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public setAccessibilityFocused(Z)V
    .locals 1

    const/16 v0, 0x400

    .line 2140
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setAvailableExtraData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1632
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1633
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    return-void
.end method

.method public setBoundsInParent(Landroid/graphics/Rect;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1941
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1942
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 4

    .line 1983
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1984
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setCanOpenPopup(Z)V
    .locals 1

    .line 2612
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    const/16 v0, 0x2000

    .line 2613
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setCheckable(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 2009
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    const/4 v0, 0x2

    .line 2034
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .locals 0

    .line 2825
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2826
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    return-void
.end method

.method public setClickable(Z)V
    .locals 1

    const/16 v0, 0x20

    .line 2190
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V
    .locals 0

    .line 2398
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2399
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    return-void
.end method

.method public setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V
    .locals 0

    .line 2422
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2423
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    return-void
.end method

.method public setConnectionId(I)V
    .locals 0

    .line 3415
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3416
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 2

    .line 3069
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3071
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public setContentInvalid(Z)V
    .locals 1

    const/high16 v0, 0x10000

    .line 2503
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setContextClickable(Z)V
    .locals 1

    const/high16 v0, 0x20000

    .line 2527
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setDismissable(Z)V
    .locals 1

    const/16 v0, 0x4000

    .line 2636
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setDrawingOrder(I)V
    .locals 0

    .line 2372
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2373
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    return-void
.end method

.method public setEditable(Z)V
    .locals 1

    const/16 v0, 0x1000

    .line 2315
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    const/16 v0, 0x80

    .line 2240
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 2

    .line 3006
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3007
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    return-void
.end method

.method public setExtraRenderingInfo(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;)V
    .locals 0

    .line 2477
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2478
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    return-void
.end method

.method public setFocusable(Z)V
    .locals 1

    const/4 v0, 0x4

    .line 2059
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setFocused(Z)V
    .locals 1

    const/16 v0, 0x8

    .line 2084
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setHeading(Z)V
    .locals 1

    const/high16 v0, 0x200000

    .line 2750
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setHintText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 2989
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2990
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setImportantForAccessibility(Z)V
    .locals 1

    const/high16 v0, 0x40000

    .line 2663
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setInputType(I)V
    .locals 0

    .line 3310
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3311
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    return-void
.end method

.method public setLabelFor(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 3109
    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabelFor(Landroid/view/View;I)V

    return-void
.end method

.method public setLabelFor(Landroid/view/View;I)V
    .locals 0

    .line 3132
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-eqz p1, :cond_0

    .line 3134
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    .line 3135
    :goto_0
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    return-void
.end method

.method public setLabeledBy(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 3161
    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabeledBy(Landroid/view/View;I)V

    return-void
.end method

.method public setLabeledBy(Landroid/view/View;I)V
    .locals 0

    .line 3184
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-eqz p1, :cond_0

    .line 3186
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    .line 3187
    :goto_0
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    return-void
.end method

.method public setLeashedParent(Landroid/os/IBinder;I)V
    .locals 0

    .line 3474
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3475
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    const/4 p1, -0x1

    .line 3476
    invoke-static {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    return-void
.end method

.method public setLiveRegion(I)V
    .locals 0

    .line 2565
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2566
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    return-void
.end method

.method public setLongClickable(Z)V
    .locals 1

    const/16 v0, 0x40

    .line 2215
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setMaxTextLength(I)V
    .locals 0

    .line 1652
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1653
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    return-void
.end method

.method public setMovementGranularities(I)V
    .locals 0

    .line 1679
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 1680
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    return-void
.end method

.method public setMultiLine(Z)V
    .locals 1

    const v0, 0x8000

    .line 2589
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setPackageName(Ljava/lang/CharSequence;)V
    .locals 0

    .line 2799
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2800
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    return-void
.end method

.method public setPaneTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 2330
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2332
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPaneTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setParent(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 1870
    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    return-void
.end method

.method public setParent(Landroid/view/View;I)V
    .locals 0

    .line 1893
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-eqz p1, :cond_0

    .line 1895
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    .line 1896
    :goto_0
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    return-void
.end method

.method public setPassword(Z)V
    .locals 1

    const/16 v0, 0x100

    .line 2265
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V
    .locals 0

    .line 2446
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2447
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    return-void
.end method

.method public setScreenReaderFocusable(Z)V
    .locals 1

    const/high16 v0, 0x80000

    .line 2694
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setScrollable(Z)V
    .locals 1

    const/16 v0, 0x200

    .line 2290
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setSealed(Z)V
    .locals 0

    .line 3508
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    const/16 v0, 0x10

    .line 2165
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setShowingHintText(Z)V
    .locals 1

    const/high16 v0, 0x100000

    .line 2721
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setSource(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 885
    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    return-void
.end method

.method public setSource(Landroid/view/View;I)V
    .locals 2

    .line 908
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    const v0, 0x7fffffff

    if-eqz p1, :cond_0

    .line 909
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityWindowId()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    if-eqz p1, :cond_1

    .line 911
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    .line 912
    :cond_1
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    return-void
.end method

.method public setSourceNodeId(JI)V
    .locals 0

    .line 3447
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3448
    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 3449
    iput p3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    return-void
.end method

.method public setStateDescription(Ljava/lang/CharSequence;)V
    .locals 2

    .line 3051
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3053
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 2886
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 2887
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mOriginalText:Ljava/lang/CharSequence;

    .line 2888
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 2890
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->replaceClickableSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2891
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->replaceReplacementSpan(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2892
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2895
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTextEntryKey(Z)V
    .locals 1

    const/high16 v0, 0x400000

    .line 2774
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setTextSelection(II)V
    .locals 0

    .line 3282
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3283
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    .line 3284
    iput p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    return-void
.end method

.method public setTooltipText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 3097
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3099
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTouchDelegateInfo(Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;)V
    .locals 0

    .line 3375
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3376
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    return-void
.end method

.method public setTraversalAfter(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 1566
    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;I)V

    return-void
.end method

.method public setTraversalAfter(Landroid/view/View;I)V
    .locals 0

    .line 1590
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-eqz p1, :cond_0

    .line 1592
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    .line 1593
    :goto_0
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    return-void
.end method

.method public setTraversalBefore(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    .line 1505
    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;I)V

    return-void
.end method

.method public setTraversalBefore(Landroid/view/View;I)V
    .locals 0

    .line 1530
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-eqz p1, :cond_0

    .line 1532
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result p1

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    .line 1533
    :goto_0
    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    return-void
.end method

.method public setViewIdResourceName(Ljava/lang/String;)V
    .locals 0

    .line 3218
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    .line 3219
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    return-void
.end method

.method public setVisibleToUser(Z)V
    .locals 1

    const/16 v0, 0x800

    .line 2115
    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 4432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4433
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4435
    sget-boolean v1, Landroid/view/accessibility/AccessibilityNodeInfo;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "; sourceNodeId: 0x"

    .line 4436
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; windowId: 0x"

    .line 4437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; accessibilityViewId: 0x"

    .line 4438
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 4439
    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; virtualDescendantId: 0x"

    .line 4440
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    .line 4441
    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; mParentNodeId: 0x"

    .line 4442
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; traversalBefore: 0x"

    .line 4443
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; traversalAfter: 0x"

    .line 4444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4446
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    const-string v2, "; MovementGranularities: ["

    .line 4447
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    const-string v2, ", "

    if-eqz v1, :cond_1

    .line 4449
    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    not-int v4, v3

    and-int/2addr v1, v4

    .line 4451
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getMovementGranularitySymbolicName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    .line 4453
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "]"

    .line 4456
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; childAccessibilityIds: ["

    .line 4458
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4459
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-eqz v3, :cond_3

    const/4 v4, 0x0

    .line 4461
    invoke-virtual {v3}, Landroid/util/LongArray;->size()I

    move-result v5

    :goto_1
    if-ge v4, v5, :cond_3

    const-string v6, "0x"

    .line 4462
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v4}, Landroid/util/LongArray;->get(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v5, -0x1

    if-ge v4, v6, :cond_2

    .line 4464
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4468
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, "; boundsInParent: "

    .line 4471
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; boundsInScreen: "

    .line 4472
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; packageName: "

    .line 4474
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "; className: "

    .line 4475
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "; text: "

    .line 4476
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "; error: "

    .line 4477
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "; maxTextLength: "

    .line 4478
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; stateDescription: "

    .line 4479
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "; contentDescription: "

    .line 4480
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "; tooltipText: "

    .line 4481
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, "; viewIdResName: "

    .line 4482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; checkable: "

    .line 4484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; checked: "

    .line 4485
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; focusable: "

    .line 4486
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; focused: "

    .line 4487
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; selected: "

    .line 4488
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; clickable: "

    .line 4489
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; longClickable: "

    .line 4490
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; contextClickable: "

    .line 4491
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isContextClickable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; enabled: "

    .line 4492
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; password: "

    .line 4493
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; scrollable: "

    .line 4494
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; importantForAccessibility: "

    .line 4495
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isImportantForAccessibility()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; visible: "

    .line 4496
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; actions: "

    .line 4497
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4499
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 3681
    invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->writeToParcelNoRecycle(Landroid/os/Parcel;I)V

    .line 3684
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    return-void
.end method

.method public writeToParcelNoRecycle(Landroid/os/Parcel;I)V
    .locals 46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 3693
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v3

    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    if-eq v3, v5, :cond_0

    invoke-static {v8}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v9

    or-long/2addr v9, v6

    goto :goto_0

    :cond_0
    move-wide v9, v6

    .line 3695
    :goto_0
    iget-wide v11, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    iget-wide v13, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    cmp-long v3, v11, v13

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-static {v5}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v11

    or-long/2addr v9, v11

    :cond_1
    const/4 v3, 0x2

    .line 3697
    iget v11, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget v12, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    if-eq v11, v12, :cond_2

    invoke-static {v3}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v11

    or-long/2addr v9, v11

    :cond_2
    const/4 v11, 0x3

    .line 3699
    iget-wide v12, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    iget-wide v14, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    cmp-long v12, v12, v14

    if-eqz v12, :cond_3

    invoke-static {v11}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v12

    or-long/2addr v9, v12

    :cond_3
    const/4 v12, 0x4

    .line 3701
    iget-wide v13, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    iget-wide v6, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    cmp-long v6, v13, v6

    if-eqz v6, :cond_4

    invoke-static {v12}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v6

    or-long/2addr v9, v6

    :cond_4
    const/4 v6, 0x5

    .line 3703
    iget-wide v13, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    iget-wide v11, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    cmp-long v11, v13, v11

    if-eqz v11, :cond_5

    invoke-static {v6}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v11

    or-long/2addr v9, v11

    :cond_5
    const/4 v11, 0x6

    .line 3705
    iget-wide v12, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    iget-wide v6, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    cmp-long v6, v12, v6

    if-eqz v6, :cond_6

    invoke-static {v11}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v6

    or-long/2addr v9, v6

    :cond_6
    const/4 v6, 0x7

    .line 3707
    iget-wide v12, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    iget-wide v14, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    cmp-long v12, v12, v14

    if-eqz v12, :cond_7

    invoke-static {v6}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v12

    or-long/2addr v9, v12

    :cond_7
    const/16 v12, 0x8

    .line 3709
    iget v13, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v14, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    if-eq v13, v14, :cond_8

    invoke-static {v12}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v13

    or-long/2addr v9, v13

    :cond_8
    const/16 v13, 0x9

    .line 3711
    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    iget-object v15, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-static {v14, v15}, Landroid/util/LongArray;->elementsEqual(Landroid/util/LongArray;Landroid/util/LongArray;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 3712
    invoke-static {v13}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v9, v14

    :cond_9
    const/16 v14, 0xa

    .line 3715
    iget-object v15, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget-object v7, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-static {v15, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 3716
    invoke-static {v14}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v16

    or-long v9, v9, v16

    :cond_a
    const/16 v7, 0xb

    .line 3719
    iget-object v15, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget-object v14, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-static {v15, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_b

    .line 3720
    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v9, v14

    :cond_b
    const/16 v14, 0xc

    .line 3723
    iget-object v15, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    iget-object v7, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-static {v15, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    invoke-static {v14}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v18

    or-long v9, v9, v18

    :cond_c
    const/16 v7, 0xd

    .line 3725
    iget v15, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    iget v14, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    if-eq v15, v14, :cond_d

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v9, v14

    :cond_d
    const/16 v14, 0xe

    .line 3727
    iget v15, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    iget v7, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    if-eq v15, v7, :cond_e

    .line 3728
    invoke-static {v14}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v20

    or-long v9, v9, v20

    :cond_e
    const/16 v7, 0xf

    .line 3731
    iget v15, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    iget v14, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    if-eq v15, v14, :cond_f

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v9, v14

    :cond_f
    const/16 v14, 0x10

    .line 3733
    iget-object v15, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    iget-object v7, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    invoke-static {v15, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    .line 3734
    invoke-static {v14}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v22

    or-long v9, v9, v22

    :cond_10
    const/16 v7, 0x11

    .line 3737
    iget-object v15, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    iget-object v14, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    invoke-static {v15, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_11

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v9, v14

    :cond_11
    const/16 v14, 0x12

    .line 3739
    iget-object v15, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    iget-object v7, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    invoke-static {v15, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    invoke-static {v14}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v24

    or-long v9, v9, v24

    :cond_12
    const/16 v7, 0x13

    .line 3741
    iget-object v15, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    iget-object v14, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    invoke-static {v15, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_13

    .line 3742
    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v9, v14

    :cond_13
    const/16 v14, 0x14

    .line 3745
    iget-object v15, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    iget-object v7, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    invoke-static {v15, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    invoke-static {v14}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v26

    or-long v9, v9, v26

    :cond_14
    const/16 v7, 0x15

    .line 3747
    iget-object v15, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    iget-object v14, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    invoke-static {v15, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_15

    .line 3748
    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v9, v14

    :cond_15
    const/16 v14, 0x16

    .line 3751
    iget-object v15, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    iget-object v7, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v15, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    .line 3752
    invoke-static {v14}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v28

    or-long v9, v9, v28

    :cond_16
    const/16 v7, 0x17

    .line 3755
    iget-object v15, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPaneTitle:Ljava/lang/CharSequence;

    iget-object v14, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mPaneTitle:Ljava/lang/CharSequence;

    invoke-static {v15, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_17

    .line 3756
    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v9, v14

    :cond_17
    const/16 v14, 0x18

    .line 3759
    iget-object v15, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    iget-object v7, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    invoke-static {v15, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    .line 3760
    invoke-static {v14}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v30

    or-long v9, v9, v30

    :cond_18
    const/16 v7, 0x19

    .line 3763
    iget-object v15, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    iget-object v14, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    invoke-static {v15, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_19

    .line 3764
    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v9, v14

    :cond_19
    const/16 v14, 0x1a

    .line 3767
    iget v15, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    iget v7, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    if-eq v15, v7, :cond_1a

    .line 3768
    invoke-static {v14}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v32

    or-long v9, v9, v32

    :cond_1a
    const/16 v7, 0x1b

    .line 3771
    iget v15, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    iget v14, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    if-eq v15, v14, :cond_1b

    .line 3772
    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v9, v14

    :cond_1b
    const/16 v14, 0x1c

    .line 3775
    iget v15, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    iget v7, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    if-eq v15, v7, :cond_1c

    invoke-static {v14}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v34

    or-long v9, v9, v34

    :cond_1c
    const/16 v7, 0x1d

    .line 3777
    iget v15, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    iget v14, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    if-eq v15, v14, :cond_1d

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v9, v14

    :cond_1d
    const/16 v14, 0x1e

    .line 3779
    iget v15, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    iget v7, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    if-eq v15, v7, :cond_1e

    .line 3780
    invoke-static {v14}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v36

    or-long v9, v9, v36

    :cond_1e
    const/16 v7, 0x1f

    .line 3783
    iget-object v15, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    iget-object v14, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    invoke-static {v15, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1f

    .line 3784
    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v9, v14

    :cond_1f
    const/16 v14, 0x20

    .line 3787
    iget-object v15, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    iget-object v7, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    invoke-static {v15, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_20

    invoke-static {v14}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v38

    or-long v9, v9, v38

    :cond_20
    const/16 v7, 0x21

    .line 3789
    iget-object v15, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    iget-object v14, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-static {v15, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_21

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v9, v14

    :cond_21
    const/16 v14, 0x22

    .line 3791
    iget-object v15, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    iget-object v7, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-static {v15, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_22

    .line 3792
    invoke-static {v14}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v40

    or-long v9, v9, v40

    :cond_22
    const/16 v7, 0x23

    .line 3795
    iget-object v15, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    iget-object v14, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-static {v15, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_23

    .line 3796
    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v9, v14

    :cond_23
    const/16 v14, 0x24

    .line 3799
    iget-object v15, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    iget-object v7, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    invoke-static {v15, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24

    .line 3800
    invoke-static {v14}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v42

    or-long v9, v9, v42

    :cond_24
    const/16 v7, 0x25

    .line 3803
    iget-object v15, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    iget-object v14, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-static {v15, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_25

    .line 3804
    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v9, v14

    :cond_25
    const/16 v14, 0x26

    .line 3807
    iget-object v15, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    iget-object v7, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    if-eq v15, v7, :cond_26

    .line 3808
    invoke-static {v14}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v44

    or-long v9, v9, v44

    :cond_26
    const/16 v7, 0x27

    .line 3811
    iget-object v15, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    iget-object v14, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    if-eq v15, v14, :cond_27

    .line 3812
    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v9, v14

    :cond_27
    const/16 v14, 0x28

    .line 3815
    iget-wide v12, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    iget-wide v6, v4, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    cmp-long v4, v12, v6

    if-eqz v4, :cond_28

    .line 3816
    invoke-static {v14}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v6

    or-long/2addr v9, v6

    .line 3819
    :cond_28
    invoke-virtual {v1, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 3822
    invoke-static {v9, v10, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3823
    :cond_29
    invoke-static {v9, v10, v5}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v4

    if-eqz v4, :cond_2a

    iget-wide v4, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-virtual {v1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 3824
    :cond_2a
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_2b

    iget v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2b
    const/4 v3, 0x3

    .line 3825
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-wide v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    :cond_2c
    const/4 v3, 0x4

    .line 3826
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-wide v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    :cond_2d
    const/4 v3, 0x5

    .line 3827
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-wide v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 3828
    :cond_2e
    invoke-static {v9, v10, v11}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_2f

    iget-wide v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    :cond_2f
    const/4 v3, 0x7

    .line 3829
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-wide v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    :cond_30
    const/16 v3, 0x8

    .line 3831
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_31

    iget v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_31
    const/16 v3, 0x9

    .line 3833
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 3834
    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-nez v3, :cond_32

    .line 3836
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 3838
    :cond_32
    invoke-virtual {v3}, Landroid/util/LongArray;->size()I

    move-result v4

    .line 3839
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v8

    :goto_1
    if-ge v5, v4, :cond_33

    .line 3841
    invoke-virtual {v3, v5}, Landroid/util/LongArray;->get(I)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_33
    :goto_2
    const/16 v3, 0xa

    .line 3846
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 3847
    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3848
    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3849
    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3850
    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_34
    const/16 v3, 0xb

    .line 3853
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 3854
    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3855
    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3856
    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3857
    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_35
    const/16 v3, 0xc

    .line 3860
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 3861
    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_39

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_39

    .line 3862
    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v8

    move v5, v4

    const-wide/16 v6, 0x0

    :goto_3
    if-ge v4, v3, :cond_37

    .line 3867
    iget-object v11, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 3868
    invoke-static {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->isDefaultStandardAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v12

    if-eqz v12, :cond_36

    .line 3869
    iget-wide v11, v11, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->mSerializationFlag:J

    or-long/2addr v6, v11

    goto :goto_4

    :cond_36
    add-int/lit8 v5, v5, 0x1

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3874
    :cond_37
    invoke-virtual {v1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 3876
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    if-ge v8, v3, :cond_3a

    .line 3878
    iget-object v4, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 3879
    invoke-static {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->isDefaultStandardAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v5

    if-nez v5, :cond_38

    .line 3880
    invoke-virtual {v4, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_38
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_39
    const-wide/16 v3, 0x0

    .line 3884
    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 3885
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3a
    const/16 v3, 0xd

    .line 3889
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_3b

    iget v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3b
    const/16 v3, 0xe

    .line 3890
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3c
    const/16 v3, 0xf

    .line 3891
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_3d

    iget v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3d
    const/16 v3, 0x10

    .line 3893
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_3e
    const/16 v3, 0x11

    .line 3894
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_3f

    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_3f
    const/16 v3, 0x12

    .line 3895
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_40
    const/16 v3, 0x13

    .line 3896
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_41

    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_41
    const/16 v3, 0x14

    .line 3897
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_42

    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_42
    const/16 v3, 0x15

    .line 3898
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_43

    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mStateDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_43
    const/16 v3, 0x16

    .line 3899
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 3900
    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_44
    const/16 v3, 0x17

    .line 3902
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_45

    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPaneTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_45
    const/16 v3, 0x18

    .line 3903
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTooltipText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_46
    const/16 v3, 0x19

    .line 3905
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_47

    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_47
    const/16 v3, 0x1a

    .line 3907
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_48

    iget v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_48
    const/16 v3, 0x1b

    .line 3908
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_49

    iget v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_49
    const/16 v3, 0x1c

    .line 3909
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_4a
    const/16 v3, 0x1d

    .line 3910
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_4b

    iget v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_4b
    const/16 v3, 0x1e

    .line 3911
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_4c
    const/16 v3, 0x1f

    .line 3913
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_4d

    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    :cond_4d
    const/16 v3, 0x20

    .line 3915
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_4e

    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    :cond_4e
    const/16 v3, 0x21

    .line 3917
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 3918
    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getType()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3919
    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMin()F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3920
    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMax()F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3921
    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getCurrent()F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_4f
    const/16 v3, 0x22

    .line 3924
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 3925
    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getRowCount()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3926
    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getColumnCount()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3927
    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->isHierarchical()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3928
    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getSelectionMode()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_50
    const/16 v3, 0x23

    .line 3931
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 3932
    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3933
    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowSpan()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3934
    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3935
    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnSpan()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3936
    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->isHeading()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3937
    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->isSelected()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_51
    const/16 v3, 0x24

    .line 3940
    invoke-static {v9, v10, v3}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v3

    if-eqz v3, :cond_52

    .line 3941
    iget-object v3, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTouchDelegateInfo:Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;

    invoke-virtual {v3, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$TouchDelegateInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_52
    const/16 v2, 0x25

    .line 3944
    invoke-static {v9, v10, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 3945
    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->getLayoutSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 3946
    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->getTextSizeInPx()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 3947
    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraRenderingInfo:Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->getTextSizeUnit()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :cond_53
    const/16 v2, 0x26

    .line 3950
    invoke-static {v9, v10, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 3951
    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedChild:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    :cond_54
    const/16 v2, 0x27

    .line 3953
    invoke-static {v9, v10, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 3954
    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParent:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3956
    :cond_55
    invoke-static {v9, v10, v14}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 3957
    iget-wide v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLeashedParentNodeId:J

    invoke-virtual {v1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3960
    :cond_56
    sget-boolean v1, Landroid/view/accessibility/AccessibilityNodeInfo;->DEBUG:Z

    return-void
.end method

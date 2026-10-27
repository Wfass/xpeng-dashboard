.class public final Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CollectionItemInfo"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x14

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mColumnIndex:I

.field private mColumnSpan:I

.field private mHeading:Z

.field private mRowIndex:I

.field private mRowSpan:I

.field private mSelected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5503
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method public constructor <init>(IIIIZ)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 5593
    invoke-direct/range {v0 .. v6}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>(IIIIZZ)V

    return-void
.end method

.method public constructor <init>(IIIIZZ)V
    .locals 0

    .line 5607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5608
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    .line 5609
    iput p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    .line 5610
    iput p3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    .line 5611
    iput p4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    .line 5612
    iput-boolean p5, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    .line 5613
    iput-boolean p6, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    return-void
.end method

.method static synthetic access$000(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Z
    .locals 0

    .line 5500
    iget-boolean p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    return p0
.end method

.method static synthetic access$1300(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)I
    .locals 0

    .line 5500
    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    return p0
.end method

.method static synthetic access$1400(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)I
    .locals 0

    .line 5500
    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    return p0
.end method

.method static synthetic access$1500(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)I
    .locals 0

    .line 5500
    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    return p0
.end method

.method static synthetic access$1600(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)I
    .locals 0

    .line 5500
    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    return p0
.end method

.method static synthetic access$1700(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Z
    .locals 0

    .line 5500
    iget-boolean p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    return p0
.end method

.method private clear()V
    .locals 1

    const/4 v0, 0x0

    .line 5683
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    .line 5684
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    .line 5685
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    .line 5686
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    .line 5687
    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    .line 5688
    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    return-void
.end method

.method public static obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .locals 6

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 5539
    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p0

    return-object p0
.end method

.method public static obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .locals 8

    .line 5560
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    if-nez v0, :cond_0

    .line 5562
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-object v1, v0

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>(IIIIZZ)V

    return-object v0

    .line 5566
    :cond_0
    iput p0, v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    .line 5567
    iput p1, v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    .line 5568
    iput p2, v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    .line 5569
    iput p3, v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    .line 5570
    iput-boolean p4, v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    .line 5571
    iput-boolean p5, v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    return-object v0
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .locals 6

    .line 5518
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    iget-boolean v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    iget-boolean v5, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getColumnIndex()I
    .locals 1

    .line 5622
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnIndex:I

    return v0
.end method

.method public getColumnSpan()I
    .locals 1

    .line 5640
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mColumnSpan:I

    return v0
.end method

.method public getRowIndex()I
    .locals 1

    .line 5631
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowIndex:I

    return v0
.end method

.method public getRowSpan()I
    .locals 1

    .line 5649
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mRowSpan:I

    return v0
.end method

.method public isHeading()Z
    .locals 1

    .line 5660
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mHeading:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 5669
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->mSelected:Z

    return v0
.end method

.method recycle()V
    .locals 1

    .line 5678
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->clear()V

    .line 5679
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

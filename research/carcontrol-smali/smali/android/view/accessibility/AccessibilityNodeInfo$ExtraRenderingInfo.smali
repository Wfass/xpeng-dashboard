.class public final Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExtraRenderingInfo"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x14

.field private static final UNDEFINED_VALUE:I = -0x1

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLayoutSize:Landroid/util/Size;

.field private mTextSizeInPx:F

.field private mTextSizeUnit:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5874
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;)V
    .locals 1

    .line 5909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 5878
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mTextSizeInPx:F

    const/4 v0, -0x1

    .line 5879
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mTextSizeUnit:I

    if-eqz p1, :cond_0

    .line 5911
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mLayoutSize:Landroid/util/Size;

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mLayoutSize:Landroid/util/Size;

    .line 5912
    iget v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mTextSizeInPx:F

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mTextSizeInPx:F

    .line 5913
    iget p1, p1, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mTextSizeUnit:I

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mTextSizeUnit:I

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;Landroid/view/accessibility/AccessibilityNodeInfo$1;)V
    .locals 0

    .line 5871
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;)V

    return-void
.end method

.method static synthetic access$1902(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;Landroid/util/Size;)Landroid/util/Size;
    .locals 0

    .line 5871
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mLayoutSize:Landroid/util/Size;

    return-object p1
.end method

.method static synthetic access$2002(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;F)F
    .locals 0

    .line 5871
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mTextSizeInPx:F

    return p1
.end method

.method static synthetic access$2102(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;I)I
    .locals 0

    .line 5871
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mTextSizeUnit:I

    return p1
.end method

.method static synthetic access$400(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;
    .locals 0

    .line 5871
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    move-result-object p0

    return-object p0
.end method

.method private clear()V
    .locals 1

    const/4 v0, 0x0

    .line 6000
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mLayoutSize:Landroid/util/Size;

    const/high16 v0, -0x40800000    # -1.0f

    .line 6001
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mTextSizeInPx:F

    const/4 v0, -0x1

    .line 6002
    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mTextSizeUnit:I

    return-void
.end method

.method public static obtain()Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;
    .locals 2

    .line 5887
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    if-nez v0, :cond_0

    .line 5889
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;)V

    :cond_0
    return-object v0
.end method

.method private static obtain(Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;
    .locals 2

    .line 5896
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;

    move-result-object v0

    .line 5897
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mLayoutSize:Landroid/util/Size;

    iput-object v1, v0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mLayoutSize:Landroid/util/Size;

    .line 5898
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mTextSizeInPx:F

    iput v1, v0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mTextSizeInPx:F

    .line 5899
    iget p0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mTextSizeUnit:I

    iput p0, v0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mTextSizeUnit:I

    return-object v0
.end method


# virtual methods
.method public getLayoutSize()Landroid/util/Size;
    .locals 1

    .line 5929
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mLayoutSize:Landroid/util/Size;

    return-object v0
.end method

.method public getTextSizeInPx()F
    .locals 1

    .line 5951
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mTextSizeInPx:F

    return v0
.end method

.method public getTextSizeUnit()I
    .locals 1

    .line 5976
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mTextSizeUnit:I

    return v0
.end method

.method recycle()V
    .locals 1

    .line 5995
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->clear()V

    .line 5996
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLayoutSize(II)V
    .locals 1

    .line 5940
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mLayoutSize:Landroid/util/Size;

    return-void
.end method

.method public setTextSizeInPx(F)V
    .locals 0

    .line 5961
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mTextSizeInPx:F

    return-void
.end method

.method public setTextSizeUnit(I)V
    .locals 0

    .line 5986
    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo$ExtraRenderingInfo;->mTextSizeUnit:I

    return-void
.end method

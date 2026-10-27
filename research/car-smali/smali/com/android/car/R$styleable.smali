.class public final Lcom/android/car/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final UxRestrictions:[I

.field public static final UxRestrictions_ContentRestrictions:[I

.field public static final UxRestrictions_ContentRestrictions_maxCumulativeItems:I = 0x0

.field public static final UxRestrictions_ContentRestrictions_maxDepth:I = 0x1

.field public static final UxRestrictions_DrivingState:[I

.field public static final UxRestrictions_DrivingState_maxSpeed:I = 0x2

.field public static final UxRestrictions_DrivingState_minSpeed:I = 0x1

.field public static final UxRestrictions_DrivingState_state:I = 0x0

.field public static final UxRestrictions_RestrictionMapping:[I

.field public static final UxRestrictions_RestrictionParameters:[I

.field public static final UxRestrictions_Restrictions:[I

.field public static final UxRestrictions_Restrictions_requiresDistractionOptimization:I = 0x0

.field public static final UxRestrictions_Restrictions_uxr:I = 0x1

.field public static final UxRestrictions_StringRestrictions:[I

.field public static final UxRestrictions_StringRestrictions_maxLength:I

.field public static final volumeGroups:[I

.field public static final volumeGroups_context:[I

.field public static final volumeGroups_context_context:I

.field public static final volumeGroups_group:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 595
    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/android/car/R$styleable;->UxRestrictions:[I

    .line 611
    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    sput-object v2, Lcom/android/car/R$styleable;->UxRestrictions_ContentRestrictions:[I

    .line 663
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    sput-object v2, Lcom/android/car/R$styleable;->UxRestrictions_DrivingState:[I

    .line 720
    new-array v2, v0, [I

    sput-object v2, Lcom/android/car/R$styleable;->UxRestrictions_RestrictionMapping:[I

    .line 725
    new-array v2, v0, [I

    sput-object v2, Lcom/android/car/R$styleable;->UxRestrictions_RestrictionParameters:[I

    .line 742
    new-array v1, v1, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/car/R$styleable;->UxRestrictions_Restrictions:[I

    .line 804
    const/4 v1, 0x1

    new-array v2, v1, [I

    const v3, 0x7f010006

    aput v3, v2, v0

    sput-object v2, Lcom/android/car/R$styleable;->UxRestrictions_StringRestrictions:[I

    .line 825
    new-array v2, v0, [I

    sput-object v2, Lcom/android/car/R$styleable;->volumeGroups:[I

    .line 838
    new-array v1, v1, [I

    const/high16 v2, 0x7f010000

    aput v2, v1, v0

    sput-object v1, Lcom/android/car/R$styleable;->volumeGroups_context:[I

    .line 868
    new-array v0, v0, [I

    sput-object v0, Lcom/android/car/R$styleable;->volumeGroups_group:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f010007
        0x7f010008
    .end array-data

    :array_1
    .array-data 4
        0x7f010001
        0x7f010002
        0x7f010003
    .end array-data

    :array_2
    .array-data 4
        0x7f010004
        0x7f010005
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

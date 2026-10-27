.class public final Lcom/xiaopeng/lib/http/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/http/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ActionBar:[I

.field public static final ActionBar_centerTextResId:I = 0x0

.field public static final ActionBar_leftBtnResId:I = 0x1

.field public static final ActionBar_rightBtnResId:I = 0x2

.field public static final ActionBar_rightTextResId:I = 0x3

.field public static final CircularProgressView:[I

.field public static final CircularProgressView_xp_animAutostart:I = 0x0

.field public static final CircularProgressView_xp_animDuration:I = 0x1

.field public static final CircularProgressView_xp_animSteps:I = 0x2

.field public static final CircularProgressView_xp_animSwoopDuration:I = 0x3

.field public static final CircularProgressView_xp_animSyncDuration:I = 0x4

.field public static final CircularProgressView_xp_color:I = 0x5

.field public static final CircularProgressView_xp_indeterminate:I = 0x6

.field public static final CircularProgressView_xp_maxProgress:I = 0x7

.field public static final CircularProgressView_xp_progress:I = 0x8

.field public static final CircularProgressView_xp_startAngle:I = 0x9

.field public static final CircularProgressView_xp_thickness:I = 0xa

.field public static final WifiEncryptionState:[I

.field public static final WifiEncryptionState_state_encrypted:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1135
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaopeng/lib/http/R$styleable;->ActionBar:[I

    .line 1217
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/xiaopeng/lib/http/R$styleable;->CircularProgressView:[I

    .line 1340
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f020004

    aput v2, v0, v1

    sput-object v0, Lcom/xiaopeng/lib/http/R$styleable;->WifiEncryptionState:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f020000
        0x7f020001
        0x7f020002
        0x7f020003
    .end array-data

    :array_1
    .array-data 4
        0x7f020005
        0x7f020006
        0x7f020007
        0x7f020008
        0x7f020009
        0x7f02000a
        0x7f02000b
        0x7f02000c
        0x7f02000d
        0x7f02000e
        0x7f02000f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

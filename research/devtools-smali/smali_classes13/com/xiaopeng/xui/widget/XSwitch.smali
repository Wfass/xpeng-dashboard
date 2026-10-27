.class public Lcom/xiaopeng/xui/widget/XSwitch;
.super Lcom/xiaopeng/xui/widget/XCompoundButton;
.source "XSwitch.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/widget/XSwitch$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final SHADOW_RADIUS:F

.field private aeB:Landroid/graphics/Paint;

.field private aeC:Landroid/graphics/Paint;

.field private aeD:F

.field private aeE:Landroid/graphics/Xfermode;

.field private final aeF:F

.field private aeG:F

.field private aeH:F

.field private aeI:F

.field private final aeJ:F

.field private aeK:F

.field private aeL:F

.field private final aeM:F

.field private aeN:F

.field private aeO:F

.field private aeP:F

.field private aeQ:F

.field private aeR:F

.field private final aeS:F

.field private aeT:F

.field private aeU:F

.field private aeV:F

.field private aeW:F

.field private aeX:F

.field private final aeY:F

.field private aeZ:F

.field private afA:I

.field private afB:I

.field private afC:I

.field private afD:I

.field private afE:I

.field private afF:I

.field private afG:I

.field private afH:I

.field private afI:I

.field private afJ:Landroid/graphics/Shader;

.field private final afK:F

.field private final afL:F

.field private afM:F

.field private afN:F

.field private afO:F

.field private afP:F

.field private afQ:I

.field private afR:F

.field private afS:F

.field private afT:Landroid/graphics/Shader;

.field private afU:I

.field private afV:I

.field private afW:I

.field private afX:I

.field private afY:Landroid/graphics/Shader;

.field private afZ:I

.field private afa:F

.field private afb:F

.field private final afc:F

.field private final afd:F

.field private final afe:F

.field private final aff:F

.field private afg:I

.field private afh:I

.field private afi:I

.field private afj:I

.field private afk:I

.field private afl:I

.field private afm:I

.field private afn:I

.field private afo:I

.field private afp:I

.field private afq:I

.field private afr:I

.field private afs:I

.field private aft:I

.field private afu:I

.field private afv:I

.field private afw:Landroid/graphics/Shader;

.field private afx:I

.field private afy:I

.field private afz:I

.field private aga:I

.field private agb:I

.field private agc:I

.field private agd:I

.field private age:I

.field private agf:I

.field private agg:F

.field private agh:F

.field private agi:F

.field private agj:F

.field private agk:F

.field private agl:I

.field private agm:I

.field private agn:Lcom/xiaopeng/xui/widget/XSwitch$a;

.field private ago:Z

.field private agp:Z

.field private agq:Z

.field private agr:F

.field private mArgbEvaluator:Landroid/animation/ArgbEvaluator;

.field private mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

.field private mTranslateX:F

.field private mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/xiaopeng/xui/widget/XSwitch;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/widget/XSwitch;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeF:F

    .line 49
    const/4 p1, 0x6

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->SHADOW_RADIUS:F

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/xiaopeng/xpui/R$dimen;->x_switch_padding_top:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeG:F

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/xiaopeng/xpui/R$dimen;->x_switch_padding_start:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeH:F

    .line 53
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeG:F

    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result v0

    add-float/2addr p2, v0

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeI:F

    .line 54
    const/16 p2, 0x19

    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeJ:F

    .line 55
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeH:F

    const/16 v0, 0x5a

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result v0

    add-float/2addr p2, v0

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeK:F

    .line 57
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeG:F

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeF:F

    add-float/2addr p2, v0

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeL:F

    .line 58
    const/16 p2, 0x15

    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeM:F

    .line 59
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeL:F

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeF:F

    add-float/2addr p2, v0

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeN:F

    .line 60
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeH:F

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result v0

    add-float/2addr p2, v0

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeO:F

    .line 61
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeN:F

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeM:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    add-float/2addr p2, v0

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeP:F

    .line 62
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeP:F

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeF:F

    add-float/2addr p2, v0

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeQ:F

    .line 63
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeO:F

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeM:F

    mul-float/2addr v0, v1

    add-float/2addr p2, v0

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeR:F

    .line 65
    const/16 p2, 0x13

    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeS:F

    .line 66
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeO:F

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeF:F

    add-float/2addr p2, v0

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeT:F

    .line 67
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeN:F

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeF:F

    add-float/2addr p2, v0

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeU:F

    .line 68
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeU:F

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeS:F

    mul-float/2addr v0, v1

    add-float/2addr p2, v0

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeV:F

    .line 69
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeT:F

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeS:F

    mul-float/2addr v0, v1

    add-float/2addr p2, v0

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeW:F

    .line 71
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeI:F

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeG:F

    sub-float/2addr p2, v0

    div-float/2addr p2, v1

    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeG:F

    add-float/2addr p2, v0

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeX:F

    .line 72
    const/16 p2, 0x28

    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeY:F

    .line 74
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeT:F

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result v0

    add-float/2addr p2, v0

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeZ:F

    .line 75
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeZ:F

    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result v0

    add-float/2addr p2, v0

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afa:F

    .line 76
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeU:F

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result v0

    add-float/2addr p2, v0

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afb:F

    .line 77
    const/16 p2, 0x12

    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afc:F

    .line 78
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afd:F

    .line 79
    const/16 p1, 0x16

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afe:F

    .line 80
    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aff:F

    .line 114
    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afK:F

    .line 115
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->SHADOW_RADIUS:F

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afL:F

    .line 151
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->ago:Z

    .line 320
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agp:Z

    .line 160
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->init()V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 164
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeF:F

    .line 49
    const/4 p1, 0x6

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->SHADOW_RADIUS:F

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/xiaopeng/xpui/R$dimen;->x_switch_padding_top:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeG:F

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/xiaopeng/xpui/R$dimen;->x_switch_padding_start:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeH:F

    .line 53
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeG:F

    const/16 p3, 0x32

    invoke-direct {p0, p3}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p3

    add-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeI:F

    .line 54
    const/16 p2, 0x19

    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeJ:F

    .line 55
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeH:F

    const/16 p3, 0x5a

    invoke-direct {p0, p3}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p3

    add-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeK:F

    .line 57
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeG:F

    iget p3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeF:F

    add-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeL:F

    .line 58
    const/16 p2, 0x15

    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeM:F

    .line 59
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeL:F

    iget p3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeF:F

    add-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeN:F

    .line 60
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeH:F

    const/4 p3, 0x4

    invoke-direct {p0, p3}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p3

    add-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeO:F

    .line 61
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeN:F

    iget p3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeM:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p3, v0

    add-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeP:F

    .line 62
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeP:F

    iget p3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeF:F

    add-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeQ:F

    .line 63
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeO:F

    iget p3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeM:F

    mul-float/2addr p3, v0

    add-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeR:F

    .line 65
    const/16 p2, 0x13

    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeS:F

    .line 66
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeO:F

    iget p3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeF:F

    add-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeT:F

    .line 67
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeN:F

    iget p3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeF:F

    add-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeU:F

    .line 68
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeU:F

    iget p3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeS:F

    mul-float/2addr p3, v0

    add-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeV:F

    .line 69
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeT:F

    iget p3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeS:F

    mul-float/2addr p3, v0

    add-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeW:F

    .line 71
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeI:F

    iget p3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeG:F

    sub-float/2addr p2, p3

    div-float/2addr p2, v0

    iget p3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeG:F

    add-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeX:F

    .line 72
    const/16 p2, 0x28

    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeY:F

    .line 74
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeT:F

    const/16 p3, 0xa

    invoke-direct {p0, p3}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p3

    add-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeZ:F

    .line 75
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeZ:F

    const/16 p3, 0x2e

    invoke-direct {p0, p3}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p3

    add-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afa:F

    .line 76
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeU:F

    const/16 p3, 0x8

    invoke-direct {p0, p3}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p3

    add-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afb:F

    .line 77
    const/16 p2, 0x12

    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afc:F

    .line 78
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afd:F

    .line 79
    const/16 p1, 0x16

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afe:F

    .line 80
    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aff:F

    .line 114
    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afK:F

    .line 115
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->SHADOW_RADIUS:F

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afL:F

    .line 151
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->ago:Z

    .line 320
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agp:Z

    .line 165
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->init()V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 169
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeF:F

    .line 49
    const/4 p1, 0x6

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->SHADOW_RADIUS:F

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/xiaopeng/xpui/R$dimen;->x_switch_padding_top:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeG:F

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/xiaopeng/xpui/R$dimen;->x_switch_padding_start:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeH:F

    .line 53
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeG:F

    const/16 p3, 0x32

    invoke-direct {p0, p3}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p3

    add-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeI:F

    .line 54
    const/16 p2, 0x19

    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeJ:F

    .line 55
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeH:F

    const/16 p3, 0x5a

    invoke-direct {p0, p3}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p3

    add-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeK:F

    .line 57
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeG:F

    iget p3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeF:F

    add-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeL:F

    .line 58
    const/16 p2, 0x15

    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeM:F

    .line 59
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeL:F

    iget p3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeF:F

    add-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeN:F

    .line 60
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeH:F

    const/4 p3, 0x4

    invoke-direct {p0, p3}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p3

    add-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeO:F

    .line 61
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeN:F

    iget p3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeM:F

    const/high16 p4, 0x40000000    # 2.0f

    mul-float/2addr p3, p4

    add-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeP:F

    .line 62
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeP:F

    iget p3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeF:F

    add-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeQ:F

    .line 63
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeO:F

    iget p3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeM:F

    mul-float/2addr p3, p4

    add-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeR:F

    .line 65
    const/16 p2, 0x13

    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeS:F

    .line 66
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeO:F

    iget p3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeF:F

    add-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeT:F

    .line 67
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeN:F

    iget p3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeF:F

    add-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeU:F

    .line 68
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeU:F

    iget p3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeS:F

    mul-float/2addr p3, p4

    add-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeV:F

    .line 69
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeT:F

    iget p3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeS:F

    mul-float/2addr p3, p4

    add-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeW:F

    .line 71
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeI:F

    iget p3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeG:F

    sub-float/2addr p2, p3

    div-float/2addr p2, p4

    iget p3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeG:F

    add-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeX:F

    .line 72
    const/16 p2, 0x28

    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeY:F

    .line 74
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeT:F

    const/16 p3, 0xa

    invoke-direct {p0, p3}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p3

    add-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeZ:F

    .line 75
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeZ:F

    const/16 p3, 0x2e

    invoke-direct {p0, p3}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p3

    add-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afa:F

    .line 76
    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeU:F

    const/16 p3, 0x8

    invoke-direct {p0, p3}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p3

    add-float/2addr p2, p3

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afb:F

    .line 77
    const/16 p2, 0x12

    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p2

    iput p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afc:F

    .line 78
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afd:F

    .line 79
    const/16 p1, 0x16

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afe:F

    .line 80
    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aff:F

    .line 114
    const/4 p1, 0x5

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afK:F

    .line 115
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->SHADOW_RADIUS:F

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afL:F

    .line 151
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->ago:Z

    .line 320
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agp:Z

    .line 170
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->init()V

    .line 171
    return-void
.end method

.method private A(II)V
    .locals 9

    .line 499
    new-instance v8, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeL:F

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeQ:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v8, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afJ:Landroid/graphics/Shader;

    .line 501
    return-void
.end method

.method private B(II)V
    .locals 9

    .line 504
    new-instance v8, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeL:F

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeQ:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v8, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afT:Landroid/graphics/Shader;

    .line 506
    return-void
.end method

.method private a(FI)I
    .locals 2

    .line 554
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 555
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    invoke-static {p1, v0, v1, p2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private a(IIF)I
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p3, p1, p2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method static synthetic a(Lcom/xiaopeng/xui/widget/XSwitch;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/xui/widget/XSwitch;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private changeParams()V
    .locals 11

    .line 238
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afm:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afu:I

    .line 241
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afn:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afv:I

    .line 242
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afi:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afs:I

    .line 243
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afj:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aft:I

    goto :goto_0

    .line 245
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afk:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afu:I

    .line 246
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afl:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afv:I

    .line 247
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afg:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afs:I

    .line 248
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afh:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aft:I

    .line 250
    :goto_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afx:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afF:I

    .line 251
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afy:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afG:I

    .line 252
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afz:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afH:I

    .line 253
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afA:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afI:I

    .line 255
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeD:F

    .line 257
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afU:I

    .line 258
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afV:I

    .line 260
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afZ:I

    iput v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agd:I

    .line 261
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aga:I

    iput v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->age:I

    goto :goto_1

    .line 263
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afq:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afu:I

    .line 264
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afr:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afv:I

    .line 265
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afo:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afs:I

    .line 266
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afp:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aft:I

    .line 268
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afB:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afF:I

    .line 269
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afC:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afG:I

    .line 270
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afD:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afH:I

    .line 271
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afE:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afI:I

    .line 273
    const v0, 0x3eb851ec    # 0.36f

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeD:F

    .line 275
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afW:I

    .line 276
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afX:I

    .line 278
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agb:I

    iput v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agd:I

    .line 279
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agc:I

    iput v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->age:I

    .line 282
    :goto_1
    move v8, v0

    move v9, v1

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v4, 0x0

    iget v5, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeU:F

    const/4 v6, 0x0

    iget v7, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeV:F

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afY:Landroid/graphics/Shader;

    .line 285
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isNight()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 286
    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afM:F

    .line 287
    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afN:F

    .line 288
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afL:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afO:F

    .line 289
    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afP:F

    .line 291
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->SHADOW_RADIUS:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agg:F

    goto :goto_2

    .line 293
    :cond_2
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afK:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afM:F

    .line 294
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afK:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afN:F

    .line 295
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afK:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afO:F

    .line 296
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afK:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afP:F

    .line 298
    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agg:F

    .line 301
    :goto_2
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->rx()V

    .line 302
    return-void
.end method

.method private eI(I)V
    .locals 3

    .line 416
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agm:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agm:I

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 418
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 419
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/xiaopeng/xui/widget/XSwitch$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/XSwitch$1;-><init>(Lcom/xiaopeng/xui/widget/XSwitch;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 436
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 437
    return-void
.end method

.method private eJ(I)F
    .locals 2

    .line 652
    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private getColor(I)I
    .locals 2

    .line 550
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    return p1
.end method

.method private init()V
    .locals 3

    .line 174
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setClickable(Z)V

    .line 175
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeB:Landroid/graphics/Paint;

    .line 176
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeB:Landroid/graphics/Paint;

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 177
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeC:Landroid/graphics/Paint;

    .line 178
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeE:Landroid/graphics/Xfermode;

    .line 179
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result v1

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    .line 180
    sget v0, Lcom/xiaopeng/xpui/R$drawable;->x_switch_drawable:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setButtonDrawable(I)V

    .line 181
    const v0, 0x106000d

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setBackgroundColor(I)V

    .line 182
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setGravity(I)V

    .line 184
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->rw()V

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->setSoundEffectsEnabled(Z)V

    .line 187
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mArgbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 188
    return-void
.end method

.method private isNight()Z
    .locals 1

    .line 191
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/c/a;->aF(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 194
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private rA()V
    .locals 5

    .line 471
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agm:I

    const/high16 v1, 0x43480000    # 200.0f

    const/16 v2, 0xc8

    if-gt v0, v2, :cond_0

    .line 472
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afF:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afG:I

    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->A(II)V

    .line 473
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afM:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afR:F

    .line 474
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afN:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afS:F

    .line 475
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeD:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agm:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    .line 476
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afF:I

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->a(FI)I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afG:I

    .line 477
    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->a(FI)I

    move-result v0

    .line 476
    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->B(II)V

    .line 478
    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agm:I

    const/16 v3, 0x1f4

    if-gt v0, v3, :cond_1

    .line 479
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afF:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afH:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agr:F

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->a(IIF)I

    move-result v0

    .line 481
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afG:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afI:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agr:F

    invoke-direct {p0, v1, v2, v3}, Lcom/xiaopeng/xui/widget/XSwitch;->a(IIF)I

    move-result v1

    .line 483
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->A(II)V

    .line 484
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afO:F

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afM:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agr:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afR:F

    .line 485
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afP:F

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afN:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agr:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afS:F

    .line 486
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeD:F

    invoke-direct {p0, v2, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->a(FI)I

    move-result v0

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeD:F

    .line 487
    invoke-direct {p0, v2, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->a(FI)I

    move-result v1

    .line 486
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->B(II)V

    .line 488
    goto :goto_0

    .line 489
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afH:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afI:I

    invoke-direct {p0, v0, v3}, Lcom/xiaopeng/xui/widget/XSwitch;->A(II)V

    .line 490
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afO:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afR:F

    .line 491
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afP:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afS:F

    .line 492
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeD:F

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeD:F

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agm:I

    add-int/lit16 v4, v4, -0x12c

    sub-int/2addr v4, v2

    int-to-float v2, v4

    mul-float/2addr v3, v2

    div-float/2addr v3, v1

    sub-float/2addr v0, v3

    .line 493
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afH:I

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->a(FI)I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afI:I

    .line 494
    invoke-direct {p0, v0, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->a(FI)I

    move-result v0

    .line 493
    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->B(II)V

    .line 496
    :goto_0
    return-void
.end method

.method private rB()V
    .locals 2

    .line 509
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agm:I

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_0

    .line 510
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mTranslateX:F

    goto :goto_0

    .line 511
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agm:I

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_1

    .line 512
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeY:F

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agr:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mTranslateX:F

    goto :goto_0

    .line 514
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeY:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mTranslateX:F

    .line 516
    :goto_0
    return-void
.end method

.method private rC()V
    .locals 5

    .line 519
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agm:I

    const/high16 v1, 0x43480000    # 200.0f

    const/4 v2, 0x0

    const/16 v3, 0xc8

    if-gt v0, v3, :cond_0

    .line 520
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agd:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agf:I

    .line 521
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeZ:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agh:F

    .line 522
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeX:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agj:F

    .line 523
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afc:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agi:F

    .line 524
    iput v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agk:F

    .line 525
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeD:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agm:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    div-float/2addr v0, v1

    .line 526
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agf:I

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->a(FI)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agl:I

    .line 527
    goto/16 :goto_0

    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agm:I

    const/16 v4, 0x1f4

    if-gt v0, v4, :cond_2

    .line 528
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agd:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->age:I

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agr:F

    invoke-direct {p0, v0, v1, v4}, Lcom/xiaopeng/xui/widget/XSwitch;->a(IIF)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agf:I

    .line 529
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agm:I

    sub-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x78

    int-to-float v0, v0

    .line 530
    const/high16 v1, 0x43340000    # 180.0f

    div-float/2addr v0, v1

    .line 531
    cmpl-float v1, v0, v2

    if-ltz v1, :cond_1

    .line 532
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeZ:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afa:F

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeZ:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agh:F

    .line 533
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeX:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeX:F

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afb:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agj:F

    .line 534
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afc:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afc:F

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afd:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agi:F

    .line 535
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afe:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agk:F

    .line 537
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeD:F

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agf:I

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->a(FI)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agl:I

    .line 538
    goto :goto_0

    .line 539
    :cond_2
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->age:I

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agf:I

    .line 540
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afa:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agh:F

    .line 541
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afb:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agj:F

    .line 542
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afd:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agi:F

    .line 543
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afe:F

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agk:F

    .line 544
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeD:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeD:F

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agm:I

    add-int/lit16 v4, v4, -0x12c

    sub-int/2addr v4, v3

    int-to-float v3, v4

    mul-float/2addr v2, v3

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    .line 545
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agf:I

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->a(FI)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agl:I

    .line 547
    :goto_0
    return-void
.end method

.method private rw()V
    .locals 1

    .line 198
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isNight()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agq:Z

    .line 199
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_bg_off_enable_normal_start_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afg:I

    .line 200
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_bg_off_enable_normal_end_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afh:I

    .line 201
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_bg_off_enable_pressed_start_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afi:I

    .line 202
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_bg_off_enable_pressed_end_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afj:I

    .line 203
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_bg_on_enable_normal_start_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afk:I

    .line 204
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_bg_on_enable_normal_end_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afl:I

    .line 205
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_bg_on_enable_pressed_start_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afm:I

    .line 206
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_bg_on_enable_pressed_end_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afn:I

    .line 207
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_bg_off_disable_start_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afo:I

    .line 208
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_bg_off_disable_end_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afp:I

    .line 209
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_bg_on_disable_start_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afq:I

    .line 210
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_bg_on_disable_end_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afr:I

    .line 212
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_circle_out_off_enable_start_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afx:I

    .line 213
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_circle_out_off_enable_end_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afy:I

    .line 214
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_circle_out_on_enable_start_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afz:I

    .line 215
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_circle_out_on_enable_end_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afA:I

    .line 216
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_circle_out_off_disable_start_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afB:I

    .line 217
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_circle_out_off_disable_end_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afC:I

    .line 218
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_circle_out_on_disable_start_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afD:I

    .line 219
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_circle_out_on_disable_end_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afE:I

    .line 221
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_circle_out_shadow_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afQ:I

    .line 223
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_circle_inner_enable_start_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afU:I

    .line 224
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_circle_inner_enable_end_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afV:I

    .line 225
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_circle_inner_disable_start_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afW:I

    .line 226
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_circle_inner_disable_end_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afX:I

    .line 228
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_vertical_off_enable_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afZ:I

    .line 229
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_vertical_on_enable_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aga:I

    .line 230
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_vertical_off_disable_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agb:I

    .line 231
    sget v0, Lcom/xiaopeng/xpui/R$color;->x_switch_vertical_on_disable_color:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/XSwitch;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agc:I

    .line 232
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->changeParams()V

    .line 233
    return-void
.end method

.method private rx()V
    .locals 0

    .line 305
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->rz()V

    .line 306
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->rA()V

    .line 307
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->rB()V

    .line 308
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->rC()V

    .line 309
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->invalidate()V

    .line 310
    return-void
.end method

.method private ry()V
    .locals 1

    .line 402
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    const/16 v0, 0x2bc

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agm:I

    goto :goto_0

    .line 405
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agm:I

    .line 407
    :goto_0
    return-void
.end method

.method private rz()V
    .locals 4

    .line 454
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agm:I

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_0

    .line 455
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afs:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aft:I

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->z(II)V

    goto :goto_0

    .line 456
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agm:I

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_1

    .line 457
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afs:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afu:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agr:F

    invoke-direct {p0, v0, v1, v2}, Lcom/xiaopeng/xui/widget/XSwitch;->a(IIF)I

    move-result v0

    .line 458
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aft:I

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afv:I

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agr:F

    invoke-direct {p0, v1, v2, v3}, Lcom/xiaopeng/xui/widget/XSwitch;->a(IIF)I

    move-result v1

    .line 459
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->z(II)V

    .line 460
    goto :goto_0

    .line 461
    :cond_1
    iget v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afu:I

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afv:I

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xui/widget/XSwitch;->z(II)V

    .line 463
    :goto_0
    return-void
.end method

.method private stopAnimation()V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 451
    :cond_0
    return-void
.end method

.method private z(II)V
    .locals 9

    .line 466
    new-instance v8, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeG:F

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeI:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v8, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afw:Landroid/graphics/Shader;

    .line 468
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 442
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agm:I

    .line 443
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agm:I

    add-int/lit16 p1, p1, -0xc8

    int-to-float p1, p1

    const/high16 v0, 0x43960000    # 300.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agr:F

    .line 444
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->rx()V

    .line 445
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 324
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XCompoundButton;->onAttachedToWindow()V

    .line 325
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agp:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agq:Z

    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isNight()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agp:Z

    .line 327
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->rw()V

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->ry()V

    .line 330
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->changeParams()V

    .line 331
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 314
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XCompoundButton;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 315
    invoke-static {p1}, Lcom/xiaopeng/xui/c/a;->isThemeChanged(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 316
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->rw()V

    .line 318
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 335
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XCompoundButton;->onDetachedFromWindow()V

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 339
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agp:Z

    .line 340
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isNight()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agq:Z

    .line 341
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 592
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XCompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 593
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 594
    return-void

    .line 597
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeB:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 598
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeB:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afw:Landroid/graphics/Shader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 599
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeH:F

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeG:F

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeK:F

    iget v5, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeI:F

    iget v6, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeJ:F

    iget v7, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeJ:F

    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeB:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 602
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeB:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v9

    .line 603
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeB:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 604
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeB:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afJ:Landroid/graphics/Shader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 605
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afR:F

    const/4 v10, 0x0

    cmpl-float v1, v1, v10

    if-lez v1, :cond_1

    .line 606
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeB:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afR:F

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afS:F

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afQ:I

    invoke-virtual {v1, v2, v10, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 609
    :cond_1
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeO:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mTranslateX:F

    add-float/2addr v2, v1

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeN:F

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeR:F

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mTranslateX:F

    add-float/2addr v4, v1

    iget v5, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeP:F

    iget v6, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeM:F

    iget v7, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeM:F

    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeB:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 612
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeB:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 614
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeB:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeE:Landroid/graphics/Xfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 615
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeB:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 616
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeB:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afT:Landroid/graphics/Shader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 617
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeO:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mTranslateX:F

    add-float/2addr v2, v1

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeN:F

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeR:F

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mTranslateX:F

    add-float/2addr v4, v1

    iget v5, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeP:F

    iget v6, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeM:F

    iget v7, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeM:F

    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeB:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 620
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 621
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeB:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 622
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeB:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 623
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeB:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 625
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeB:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 626
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeB:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afY:Landroid/graphics/Shader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 627
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeT:F

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mTranslateX:F

    add-float/2addr v2, v1

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeU:F

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeW:F

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mTranslateX:F

    add-float/2addr v4, v1

    iget v5, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeV:F

    iget v6, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeS:F

    iget v7, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeS:F

    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeB:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 630
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeC:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agf:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 631
    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agg:F

    cmpl-float v1, v1, v10

    if-lez v1, :cond_2

    .line 632
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeC:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agg:F

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agf:I

    invoke-virtual {v1, v2, v10, v10, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 634
    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getWidth()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget-object v6, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeB:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v10

    .line 635
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agh:F

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agj:F

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agh:F

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agi:F

    add-float/2addr v4, v1

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agj:F

    iget v5, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agk:F

    add-float/2addr v5, v1

    iget v6, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aff:F

    iget v7, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aff:F

    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeC:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 637
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeC:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 639
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 640
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeC:Landroid/graphics/Paint;

    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agl:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 641
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeC:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeE:Landroid/graphics/Xfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 642
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeC:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->mBlurMaskFilter:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 643
    iget v2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agh:F

    iget v3, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agj:F

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agh:F

    iget v4, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agi:F

    add-float/2addr v4, v1

    iget v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agj:F

    iget v5, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agk:F

    add-float/2addr v5, v1

    iget v6, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aff:F

    iget v7, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aff:F

    iget-object v8, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeC:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 646
    :cond_3
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 647
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeC:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 648
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeC:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 649
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 564
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/xui/widget/XCompoundButton;->onLayout(ZIIII)V

    .line 567
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getPaddingTop()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/16 p2, 0x32

    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p3

    sub-float/2addr p1, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p1, p3

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getPaddingTop()I

    move-result p4

    int-to-float p4, p4

    add-float/2addr p1, p4

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeG:F

    .line 569
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeG:F

    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeI:F

    .line 570
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeG:F

    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeF:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeL:F

    .line 571
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeL:F

    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeF:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeN:F

    .line 572
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeN:F

    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeM:F

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeP:F

    .line 573
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeP:F

    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeF:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeQ:F

    .line 574
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeN:F

    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeF:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeU:F

    .line 575
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeU:F

    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeS:F

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeV:F

    .line 576
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeI:F

    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeG:F

    sub-float/2addr p1, p2

    div-float/2addr p1, p3

    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeG:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeX:F

    .line 577
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeU:F

    const/16 p2, 0x8

    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afb:F

    .line 578
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    const/4 p2, 0x7

    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeH:F

    .line 579
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeH:F

    const/16 p2, 0x5a

    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeK:F

    .line 580
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeH:F

    const/4 p2, 0x4

    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeO:F

    .line 581
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeO:F

    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeM:F

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeR:F

    .line 582
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeO:F

    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeF:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeT:F

    .line 583
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeT:F

    iget p2, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeS:F

    mul-float/2addr p3, p2

    add-float/2addr p1, p3

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeW:F

    .line 585
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeT:F

    const/16 p2, 0xa

    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeZ:F

    .line 586
    iget p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->aeZ:F

    const/16 p2, 0x2e

    invoke-direct {p0, p2}, Lcom/xiaopeng/xui/widget/XSwitch;->eJ(I)F

    move-result p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->afa:F

    .line 587
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->changeParams()V

    .line 588
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 345
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XCompoundButton;->onMeasure(II)V

    .line 346
    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 350
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XCompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 351
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->stopAnimation()V

    .line 352
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->ry()V

    .line 353
    return-void
.end method

.method public setCheckSoundEnable(Z)V
    .locals 0

    .line 362
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->ago:Z

    .line 363
    return-void
.end method

.method public setChecked(Z)V
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agn:Lcom/xiaopeng/xui/widget/XSwitch$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agn:Lcom/xiaopeng/xui/widget/XSwitch$a;

    .line 368
    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch$a;->f(Landroid/view/View;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    return-void

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isChecked()Z

    move-result v0

    .line 372
    if-eq v0, p1, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->ago:Z

    if-eqz v1, :cond_2

    .line 373
    invoke-static {}, Lcom/xiaopeng/xui/b/f;->qL()Lcom/xiaopeng/xui/b/f;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 v2, 0x3

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/b/f;->play(I)V

    .line 375
    :cond_2
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XCompoundButton;->setChecked(Z)V

    .line 376
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->getWidth()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 380
    :cond_3
    if-eq v0, p1, :cond_6

    .line 381
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->stopAnimation()V

    .line 382
    if-eqz p1, :cond_4

    .line 383
    const/16 p1, 0x2bc

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->eI(I)V

    goto :goto_2

    .line 385
    :cond_4
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XSwitch;->eI(I)V

    goto :goto_2

    .line 377
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->ry()V

    .line 378
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->changeParams()V

    .line 389
    :cond_6
    :goto_2
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 411
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XCompoundButton;->setEnabled(Z)V

    .line 412
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->changeParams()V

    .line 413
    return-void
.end method

.method public setOnInterceptListener(Lcom/xiaopeng/xui/widget/XSwitch$a;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSwitch;->agn:Lcom/xiaopeng/xui/widget/XSwitch$a;

    .line 661
    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    .line 357
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XCompoundButton;->setPressed(Z)V

    .line 358
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/XSwitch;->changeParams()V

    .line 359
    return-void
.end method

.class public Lcom/xiaopeng/musicradio/music/player/widget/LyricView;
.super Lcom/xiaopeng/xui/view/XView;
.source "LyricView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/music/player/widget/LyricView$d;,
        Lcom/xiaopeng/musicradio/music/player/widget/LyricView$c;,
        Lcom/xiaopeng/musicradio/music/player/widget/LyricView$b;,
        Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:I

.field private E:I

.field private F:Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;

.field private G:Z

.field private H:I

.field private I:J

.field private J:Landroid/animation/ValueAnimator;

.field private K:F

.field private L:I

.field private M:Ljava/lang/String;

.field private N:I

.field private O:F

.field private P:Lcom/xiaopeng/musicradio/music/player/widget/LyricView$d;

.field private Q:I

.field private R:Ljava/lang/Object;

.field private final S:Lcom/xiaopeng/musicradio/widget/k;

.field private T:Lcom/xiaopeng/musicradio/widget/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/musicradio/widget/l<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private U:Lcom/xiaopeng/musicradio/widget/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/musicradio/widget/l<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private V:F

.field private W:Z

.field a:Landroid/os/Handler;

.field private aa:I

.field private ab:I

.field private ac:I

.field private ad:Z

.field private ae:Ljava/lang/Runnable;

.field private b:Lcom/xiaopeng/musicradio/music/player/widget/LyricView$b;

.field private c:Lcom/xiaopeng/musicradio/music/player/widget/LyricView$c;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/lyrics/LrcEntry;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Landroid/text/TextPaint;

.field private g:Landroid/text/TextPaint;

.field private h:Landroid/text/TextPaint;

.field private i:F

.field private j:F

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:F

.field private p:F

.field private q:Landroid/widget/Scroller;

.field private r:I

.field private s:Z

.field private t:F

.field private u:F

.field private v:F

.field private w:I

.field private x:I

.field private y:Landroid/view/VelocityTracker;

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 127
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/view/XView;-><init>(Landroid/content/Context;)V

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d:Ljava/util/ArrayList;

    .line 65
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->e:Ljava/util/HashMap;

    const p1, 0xffffff

    .line 72
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->k:I

    .line 73
    sget p1, Lbez$a;->lrc_current_color:I

    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->l:I

    .line 75
    sget p1, Lbez$a;->lrc_other_color:I

    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->m:I

    const p1, -0x7f000001

    .line 76
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->n:I

    const/high16 p1, 0x42040000    # 33.0f

    .line 77
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->o:F

    .line 78
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->p:F

    const/4 p1, 0x0

    .line 81
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->r:I

    .line 82
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->s:Z

    const/4 v0, -0x1

    .line 88
    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->w:I

    .line 93
    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->B:I

    const/4 v1, 0x1

    .line 94
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->C:Z

    .line 97
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->E:I

    .line 101
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->G:Z

    .line 115
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->Q:I

    .line 117
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->R:Ljava/lang/Object;

    .line 118
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->S:Lcom/xiaopeng/musicradio/widget/k;

    .line 335
    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->ac:I

    .line 356
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->ad:Z

    .line 697
    new-instance p1, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$1;-><init>(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->ae:Ljava/lang/Runnable;

    .line 710
    new-instance p1, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$2;-><init>(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/view/XView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d:Ljava/util/ArrayList;

    .line 65
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->e:Ljava/util/HashMap;

    const p1, 0xffffff

    .line 72
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->k:I

    .line 73
    sget p1, Lbez$a;->lrc_current_color:I

    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->l:I

    .line 75
    sget p1, Lbez$a;->lrc_other_color:I

    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->m:I

    const p1, -0x7f000001

    .line 76
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->n:I

    const/high16 p1, 0x42040000    # 33.0f

    .line 77
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->o:F

    .line 78
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->p:F

    const/4 p1, 0x0

    .line 81
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->r:I

    .line 82
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->s:Z

    const/4 v0, -0x1

    .line 88
    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->w:I

    .line 93
    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->B:I

    const/4 v1, 0x1

    .line 94
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->C:Z

    .line 97
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->E:I

    .line 101
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->G:Z

    .line 115
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->Q:I

    .line 117
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->R:Ljava/lang/Object;

    .line 118
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->S:Lcom/xiaopeng/musicradio/widget/k;

    .line 335
    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->ac:I

    .line 356
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->ad:Z

    .line 697
    new-instance p1, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$1;-><init>(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->ae:Ljava/lang/Runnable;

    .line 710
    new-instance p1, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$2;-><init>(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a:Landroid/os/Handler;

    .line 132
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 136
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/view/XView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d:Ljava/util/ArrayList;

    .line 65
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->e:Ljava/util/HashMap;

    const p1, 0xffffff

    .line 72
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->k:I

    .line 73
    sget p1, Lbez$a;->lrc_current_color:I

    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->l:I

    .line 75
    sget p1, Lbez$a;->lrc_other_color:I

    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->m:I

    const p1, -0x7f000001

    .line 76
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->n:I

    const/high16 p1, 0x42040000    # 33.0f

    .line 77
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->o:F

    .line 78
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->p:F

    const/4 p1, 0x0

    .line 81
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->r:I

    .line 82
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->s:Z

    const/4 p3, -0x1

    .line 88
    iput p3, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->w:I

    .line 93
    iput p3, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->B:I

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->C:Z

    .line 97
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->E:I

    .line 101
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->G:Z

    .line 115
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->Q:I

    .line 117
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->R:Ljava/lang/Object;

    .line 118
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->S:Lcom/xiaopeng/musicradio/widget/k;

    .line 335
    iput p3, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->ac:I

    .line 356
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->ad:Z

    .line 697
    new-instance p1, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$1;-><init>(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->ae:Ljava/lang/Runnable;

    .line 710
    new-instance p1, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$2;-><init>(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a:Landroid/os/Handler;

    .line 137
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;F)F
    .locals 0

    .line 44
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->K:F

    return p1
.end method

.method private a(III)I
    .locals 3

    .line 746
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d:Ljava/util/ArrayList;

    const/4 p3, 0x0

    if-eqz p2, :cond_3

    move p2, p3

    move v0, p2

    :goto_0
    if-ge p3, p1, :cond_2

    .line 751
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->e:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 752
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 754
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    int-to-float p1, p2

    .line 783
    iget p2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->i:F

    iget p3, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->p:F

    add-float/2addr p3, p2

    mul-float/2addr p1, p3

    int-to-float p3, v0

    iget v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->O:F

    add-float/2addr p2, v0

    mul-float/2addr p3, p2

    add-float/2addr p1, p3

    float-to-int p3, p1

    :cond_3
    return p3
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->H:I

    return p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->E:I

    return p1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->e:Ljava/util/HashMap;

    return-object p1
.end method

.method private a(II)V
    .locals 7

    .line 959
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->W:Z

    if-eqz v0, :cond_0

    return-void

    .line 962
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getScrollY()I

    move-result v0

    sub-int v5, p1, v0

    .line 964
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->q:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getScrollX()I

    move-result v4

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 966
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->invalidate()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 12

    .line 513
    iget v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->E:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 514
    iput v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->E:I

    .line 515
    new-instance v0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;-><init>(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->F:Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;

    .line 516
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->F:Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;->start()V

    .line 519
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->E:I

    if-ne v0, v1, :cond_1

    return-void

    .line 523
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_a

    .line 524
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 525
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getMaxLyricCanvasOffset()F

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v0, v2}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 529
    iget v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->N:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v1, :cond_2

    goto :goto_0

    .line 532
    :cond_2
    iget v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->N:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_3

    .line 534
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->f:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    neg-float v0, v0

    goto :goto_1

    :cond_3
    int-to-float v0, v0

    .line 536
    iget v2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->o:F

    iget v3, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->j:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->f:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v2, v3

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->f:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, v2

    goto :goto_1

    .line 530
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->j:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    const/high16 v2, 0x40a00000    # 5.0f

    add-float/2addr v0, v2

    :goto_1
    const/4 v2, 0x0

    .line 541
    :goto_2
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-gt v2, v3, :cond_9

    .line 544
    iget v3, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->w:I

    if-ne v2, v3, :cond_5

    .line 545
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->g:Landroid/text/TextPaint;

    .line 546
    iget v4, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->i:F

    iget v5, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->K:F

    sub-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    :goto_3
    move-object v11, v3

    goto :goto_4

    .line 549
    :cond_5
    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->f:Landroid/text/TextPaint;

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_6

    .line 552
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->h:Landroid/text/TextPaint;

    .line 553
    iget v4, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->j:F

    iget v5, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->K:F

    add-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    goto :goto_3

    :cond_6
    move-object v11, v4

    .line 556
    :goto_4
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->e:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_7

    .line 559
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/lyrics/LrcEntry;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/lyrics/LrcEntry;->getText()Ljava/lang/String;

    move-result-object v6

    .line 560
    iget v8, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->Q:I

    move-object v3, p0

    move-object v4, p1

    move-object v5, v11

    move v7, v0

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FI)V

    .line 561
    iget v3, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->i:F

    iget v4, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->p:F

    add-float/2addr v3, v4

    :goto_5
    add-float/2addr v0, v3

    goto :goto_7

    .line 564
    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    .line 565
    iget v10, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->Q:I

    move-object v5, p0

    move-object v6, p1

    move-object v7, v11

    move v9, v0

    invoke-direct/range {v5 .. v10}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FI)V

    .line 566
    iget v4, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->i:F

    iget v5, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->O:F

    add-float/2addr v4, v5

    add-float/2addr v0, v4

    goto :goto_6

    .line 568
    :cond_8
    iget v3, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->p:F

    iget v4, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->O:F

    sub-float/2addr v3, v4

    goto :goto_5

    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 571
    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_a
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FI)V
    .locals 2

    const/4 v0, 0x0

    if-nez p5, :cond_0

    .line 578
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p5

    .line 579
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p5

    const/high16 p5, 0x40000000    # 2.0f

    div-float p5, v1, p5

    goto :goto_0

    :cond_0
    move p5, v0

    .line 582
    :goto_0
    invoke-static {p5, v0}, Ljava/lang/Math;->max(FF)F

    move-result p5

    .line 583
    invoke-virtual {p1, p3, p5, p4, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 8

    .line 145
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lbez$i;->LrcView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 146
    sget v0, Lbez$i;->LrcView_lrcTextSize_to:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/utils/am;->b(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    .line 147
    sget v1, Lbez$i;->LrcView_lrcSelectTextSize_to:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x42000000    # 32.0f

    invoke-static {v3, v4}, Lcom/xiaopeng/musicradio/utils/am;->b(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    .line 148
    sget v3, Lbez$i;->LrcView_lrcTextSize_tt:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/xiaopeng/musicradio/utils/am;->b(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    .line 149
    sget v5, Lbez$i;->LrcView_lrcSelectTextSize_tt:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/xiaopeng/musicradio/utils/am;->b(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    .line 150
    sget v6, Lbez$i;->LrcView_lrcTextSize_full:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/xiaopeng/musicradio/utils/am;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p1, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    .line 151
    sget v6, Lbez$i;->LrcView_lrcSelectTextSize_full:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/xiaopeng/musicradio/utils/am;->b(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p1, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    .line 153
    iget-object v6, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->S:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 154
    new-instance v6, Lcom/xiaopeng/musicradio/widget/l;

    iget-object v7, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->S:Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v6, v7}, Lcom/xiaopeng/musicradio/widget/l;-><init>(Lcom/xiaopeng/musicradio/widget/k;)V

    iput-object v6, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->T:Lcom/xiaopeng/musicradio/widget/l;

    .line 155
    new-instance v6, Lcom/xiaopeng/musicradio/widget/l;

    iget-object v7, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->S:Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v6, v7}, Lcom/xiaopeng/musicradio/widget/l;-><init>(Lcom/xiaopeng/musicradio/widget/k;)V

    iput-object v6, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->U:Lcom/xiaopeng/musicradio/widget/l;

    .line 156
    iget-object v6, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->T:Lcom/xiaopeng/musicradio/widget/l;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v6, v1, v5, v7, v4}, Lcom/xiaopeng/musicradio/widget/l;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 157
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->U:Lcom/xiaopeng/musicradio/widget/l;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, v0, v3, v4, v2}, Lcom/xiaopeng/musicradio/widget/l;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->c()V

    .line 160
    sget v0, Lbez$i;->LrcView_lrcDividerHeight:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42040000    # 33.0f

    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/utils/am;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->o:F

    .line 161
    sget v0, Lbez$i;->LrcView_lrcCurrentDividerHeight:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/utils/am;->a(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->p:F

    .line 162
    sget v0, Lbez$i;->LrcView_lrcNormalTextColor:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbez$a;->lrc_other_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->n:I

    .line 163
    sget v0, Lbez$i;->LrcView_lrcNormalTextColor:I

    sget v1, Lbez$a;->lrc_other_color:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->m:I

    .line 164
    sget v0, Lbez$i;->LrcView_lrcCurrentTextColor:I

    sget v1, Lbez$a;->lrc_current_color:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->l:I

    .line 165
    sget v0, Lbez$i;->LrcView_lrcCurrentTextColor:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lbez$a;->lrc_current_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->k:I

    .line 166
    sget v0, Lbez$i;->LrcView_lrcStartLine:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->N:I

    .line 167
    sget v0, Lbez$i;->LrcView_lrcAnimationDuration:I

    const/16 v1, 0x9c4

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->I:J

    .line 168
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->I:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v0, 0x9c4

    :cond_0
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->I:J

    .line 169
    sget v0, Lbez$i;->LrcView_lrcPadding:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->L:I

    .line 170
    sget v0, Lbez$i;->LrcView_lrcLabel:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->M:Ljava/lang/String;

    .line 171
    sget v0, Lbez$i;->LrcView_lrcLineHeight:I

    iget v2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->p:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->O:F

    .line 172
    sget v0, Lbez$i;->LrcView_lrcGravity:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->Q:I

    .line 173
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 176
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->q:Landroid/widget/Scroller;

    .line 177
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->g:Landroid/text/TextPaint;

    .line 178
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->g:Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 179
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->g:Landroid/text/TextPaint;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->k:I

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 180
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->g:Landroid/text/TextPaint;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->i:F

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 182
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->f:Landroid/text/TextPaint;

    .line 183
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->f:Landroid/text/TextPaint;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 184
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init: ======= "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LyricView"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->f:Landroid/text/TextPaint;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->n:I

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 186
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->f:Landroid/text/TextPaint;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->j:F

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 188
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->h:Landroid/text/TextPaint;

    .line 189
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->h:Landroid/text/TextPaint;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 190
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->h:Landroid/text/TextPaint;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->j:F

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 191
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->h:Landroid/text/TextPaint;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->n:I

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 193
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lbez$g;->x_font_typeface_bold:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v1, Lbez$h;->XMenuItemText:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 194
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->g:Landroid/text/TextPaint;

    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 196
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lbez$g;->x_font_typeface_regular:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v1, Lbez$h;->XMenuItemText:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 197
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->f:Landroid/text/TextPaint;

    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 198
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->h:Landroid/text/TextPaint;

    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 200
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 201
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->x:I

    .line 202
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->z:I

    .line 203
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->A:I

    .line 205
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->setVerticalFadingEdgeEnabled(Z)V

    const/16 p1, 0x32

    .line 206
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->setFadingEdgeLength(I)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;Ljava/util/ArrayList;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/lyrics/LrcEntry;",
            ">;)V"
        }
    .end annotation

    .line 1015
    iget v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->H:I

    if-eqz p1, :cond_0

    .line 1016
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1017
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->b()V

    .line 1018
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d()V

    .line 1019
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->R:Ljava/lang/Object;

    monitor-enter v1

    .line 1020
    :try_start_0
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d:Ljava/util/ArrayList;

    .line 1021
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 1024
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->b(I)V

    goto :goto_1

    .line 1026
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->postInvalidate()V

    .line 1029
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->P:Lcom/xiaopeng/musicradio/music/player/widget/LyricView$d;

    if-eqz v0, :cond_2

    .line 1030
    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$d;->onLrcLoaded(Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->W:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;)Ljava/lang/Object;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->R:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->G:Z

    return p1
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;)Ljava/util/ArrayList;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 275
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->V:F

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->T:Lcom/xiaopeng/musicradio/widget/l;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/l;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->V:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->i:F

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->U:Lcom/xiaopeng/musicradio/widget/l;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/l;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->V:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->j:F

    return-void
.end method

.method private c(I)V
    .locals 10

    .line 241
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getMaxLyricCanvasOffset()F

    move-result v0

    .line 242
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->q:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getScrollY()I

    move-result v3

    float-to-int v0, v0

    const/4 v4, 0x0

    .line 243
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, p1

    .line 242
    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 244
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->invalidate()V

    return-void
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;)I
    .locals 0

    .line 44
    iget p0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->D:I

    return p0
.end method

.method private d(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    .line 327
    new-array v0, v0, [Ljava/lang/Object;

    and-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "#%08X"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d()V
    .locals 2

    .line 331
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->L:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->D:I

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setupLyricPadding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LyricView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic e(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;)Landroid/text/TextPaint;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->g:Landroid/text/TextPaint;

    return-object p0
.end method

.method private e()V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d:Ljava/util/ArrayList;

    .line 353
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method private e(I)Z
    .locals 2

    .line 791
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->e:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 792
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    move v1, p1

    :cond_0
    return v1
.end method

.method private f()V
    .locals 5

    .line 898
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->W:Z

    if-eqz v0, :cond_0

    return-void

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->J:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 902
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->J:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 903
    iput v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->K:F

    :cond_1
    const/4 v0, 0x2

    .line 905
    new-array v0, v0, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->i:F

    iget v4, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->j:F

    sub-float/2addr v3, v4

    aput v3, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->J:Landroid/animation/ValueAnimator;

    .line 906
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->J:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 907
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->J:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->I:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 908
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->J:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$3;-><init>(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 915
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->J:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic f(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->g()V

    return-void
.end method

.method private g()V
    .locals 1

    .line 1009
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->P:Lcom/xiaopeng/musicradio/music/player/widget/LyricView$d;

    if-eqz v0, :cond_0

    .line 1010
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$d;->onLrcLoading()V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->h()V

    return-void
.end method

.method private getMaxLyricCanvasOffset()F
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 251
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getTotalDrawLines()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->i:F

    iget v2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->p:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method private getTotalDrawLines()I
    .locals 4

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v1, v0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->e:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 261
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 263
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 264
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->e:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 265
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 266
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    :cond_1
    sub-int/2addr v1, v0

    :cond_2
    return v1
.end method

.method private h()V
    .locals 1

    .line 1035
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->P:Lcom/xiaopeng/musicradio/music/player/widget/LyricView$d;

    if-eqz v0, :cond_0

    .line 1036
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$d;->onNoLrc()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 302
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lapo;->d(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "LyricView"

    if-eqz v0, :cond_2

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged:mCurrentNightColor =  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->aa:I

    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mNormalNightColor = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->ab:I

    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->aa:I

    if-eqz v0, :cond_0

    .line 305
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->g:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->l:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->k:I

    .line 308
    iget v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->k:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->setCurrentTxtColor(I)V

    .line 310
    :goto_0
    iget v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->ab:I

    if-eqz v0, :cond_1

    .line 311
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->f:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->h:Landroid/text/TextPaint;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->ab:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_1

    .line 314
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->m:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->n:I

    .line 315
    iget v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->n:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->setOtherTxtColor(I)V

    goto :goto_1

    .line 318
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->l:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->k:I

    .line 319
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->m:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->n:I

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: daymode===="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->n:I

    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->k:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->setCurrentTxtColor(I)V

    .line 322
    iget v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->n:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->setOtherTxtColor(I)V

    :goto_1
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 990
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->H:I

    const/4 v0, 0x1

    .line 991
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a(IZ)V

    return-void
.end method

.method public a(IZ)V
    .locals 9

    .line 798
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_d

    .line 808
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/lyrics/LrcEntry;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/lyrics/LrcEntry;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    if-eqz v2, :cond_1

    .line 809
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/lyrics/LrcEntry;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/lyrics/LrcEntry;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-double v5, v5

    goto :goto_1

    :cond_1
    move-wide v5, v3

    :goto_1
    if-lez v0, :cond_2

    cmpl-double v2, v5, v3

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const-wide v2, 0x408f400000000000L    # 1000.0

    if-eqz v0, :cond_4

    mul-double v7, v5, v2

    double-to-int v4, v7

    if-lt p1, v4, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 819
    :cond_4
    :goto_3
    iget v4, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->w:I

    invoke-direct {p0, v4}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->e(I)Z

    move-result v4

    if-nez v4, :cond_5

    iget v4, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->w:I

    if-eq v4, v0, :cond_d

    .line 820
    :cond_5
    iget v4, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->w:I

    .line 821
    iget-boolean v7, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->G:Z

    if-eqz v7, :cond_6

    return-void

    .line 825
    :cond_6
    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->w:I

    .line 826
    iget v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->w:I

    if-ne v4, v0, :cond_7

    return-void

    :cond_7
    mul-double/2addr v5, v2

    double-to-int v2, v5

    .line 830
    invoke-direct {p0, v0, p1, v2}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a(III)I

    move-result p1

    .line 832
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getScrollY()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_8

    move v0, v1

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    if-nez p2, :cond_a

    if-eqz v0, :cond_9

    goto :goto_5

    .line 841
    :cond_9
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->I:J

    long-to-int p2, v0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a(II)V

    .line 842
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->f()V

    goto :goto_6

    .line 834
    :cond_a
    :goto_5
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->q:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_b

    .line 835
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->q:Landroid/widget/Scroller;

    invoke-virtual {p2, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 837
    :cond_b
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->W:Z

    if-nez p2, :cond_c

    .line 838
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getScrollX()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->scrollTo(II)V

    .line 844
    :cond_c
    :goto_6
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->invalidate()V

    :cond_d
    :goto_7
    return-void
.end method

.method public a(IZZ)V
    .locals 9

    if-nez p3, :cond_0

    .line 853
    iget v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->H:I

    if-ne p1, v0, :cond_0

    return-void

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_7

    .line 859
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->G:Z

    if-eqz v0, :cond_2

    return-void

    .line 863
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_c

    .line 866
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/lyrics/LrcEntry;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/lyrics/LrcEntry;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    if-eqz v2, :cond_3

    .line 867
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/lyrics/LrcEntry;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/lyrics/LrcEntry;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-double v5, v5

    goto :goto_1

    :cond_3
    move-wide v5, v3

    :goto_1
    if-lez v0, :cond_4

    cmpl-double v2, v5, v3

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    const-wide v2, 0x408f400000000000L    # 1000.0

    if-eqz v0, :cond_6

    mul-double v7, v5, v2

    double-to-int v4, v7

    if-ge p1, v4, :cond_6

    if-eqz p3, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 877
    :cond_6
    :goto_3
    iget p3, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->w:I

    mul-double/2addr v5, v2

    double-to-int v0, v5

    invoke-direct {p0, p3, p1, v0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a(III)I

    move-result p1

    .line 879
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getScrollY()I

    move-result p3

    sub-int/2addr p3, p1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    if-le p3, v0, :cond_7

    move p3, v1

    goto :goto_4

    :cond_7
    const/4 p3, 0x0

    :goto_4
    if-nez p2, :cond_9

    if-eqz p3, :cond_8

    goto :goto_5

    .line 888
    :cond_8
    iget-wide p2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->I:J

    long-to-int p2, p2

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a(II)V

    .line 889
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->f()V

    goto :goto_6

    .line 881
    :cond_9
    :goto_5
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->q:Landroid/widget/Scroller;

    invoke-virtual {p2}, Landroid/widget/Scroller;->isFinished()Z

    move-result p2

    if-nez p2, :cond_a

    .line 882
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->q:Landroid/widget/Scroller;

    invoke-virtual {p2, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 884
    :cond_a
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->W:Z

    if-nez p2, :cond_b

    .line 885
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getScrollX()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->scrollTo(II)V

    .line 891
    :cond_b
    :goto_6
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->invalidate()V

    :cond_c
    :goto_7
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .line 1003
    iput p2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->H:I

    .line 1004
    new-instance p2, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$b;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$b;-><init>(Lcom/xiaopeng/musicradio/music/player/widget/LyricView;Lcom/xiaopeng/musicradio/music/player/widget/LyricView$1;)V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->b:Lcom/xiaopeng/musicradio/music/player/widget/LyricView$b;

    .line 1005
    iget-object p2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->b:Lcom/xiaopeng/musicradio/music/player/widget/LyricView$b;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public b()V
    .locals 3

    .line 922
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->b:Lcom/xiaopeng/musicradio/music/player/widget/LyricView$b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 923
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$b;->cancel(Z)Z

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->c:Lcom/xiaopeng/musicradio/music/player/widget/LyricView$c;

    if-eqz v0, :cond_1

    .line 926
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$c;->cancel(Z)Z

    :cond_1
    const/4 v0, 0x0

    .line 928
    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->H:I

    .line 929
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->q:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 930
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->q:Landroid/widget/Scroller;

    invoke-virtual {v2, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 933
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->F:Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 934
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->F:Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView$a;->a()V

    .line 937
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->R:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 938
    :try_start_0
    iput-object v2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d:Ljava/util/ArrayList;

    .line 939
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 940
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->e:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    .line 941
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 943
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->e:Ljava/util/HashMap;

    .line 944
    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->E:I

    const/4 v1, -0x1

    .line 945
    iput v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->w:I

    .line 946
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->s:Z

    .line 947
    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->r:I

    .line 948
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getScrollX()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->scrollTo(II)V

    const-string v0, "LyricView"

    const-string v1, "reset: ====="

    .line 949
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->postInvalidate()V

    return-void

    :catchall_0
    move-exception v0

    .line 939
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(I)V
    .locals 1

    .line 998
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->H:I

    const/4 v0, 0x0

    .line 999
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a(IZ)V

    return-void
.end method

.method public computeScroll()V
    .locals 4

    .line 971
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->q:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 972
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->q:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 973
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getScrollY()I

    move-result v0

    .line 974
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->q:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 975
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getMaxLyricCanvasOffset()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    if-gez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    if-le v1, v2, :cond_1

    move v1, v2

    :cond_1
    :goto_0
    if-eq v0, v1, :cond_2

    .line 982
    invoke-virtual {p0, v3, v1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->scrollTo(II)V

    .line 984
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->invalidate()V

    :cond_3
    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 282
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/view/XView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LyricView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-static {p1}, Lapo;->b(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a()V

    .line 287
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->S:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 288
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->S:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 290
    :cond_1
    iget p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->i:F

    .line 291
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->c()V

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->g:Landroid/text/TextPaint;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->i:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->h:Landroid/text/TextPaint;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->j:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 294
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->f:Landroid/text/TextPaint;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->j:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 295
    iget v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->i:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_2

    .line 296
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->e()V

    .line 298
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1151
    invoke-super {p0}, Lcom/xiaopeng/xui/view/XView;->onDetachedFromWindow()V

    .line 1152
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 359
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->D:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 374
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->r:I

    if-nez v0, :cond_1

    .line 376
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->i:F

    iget v2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->p:F

    add-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->r:I

    const/4 v0, 0x1

    .line 377
    iget v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->r:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->r:I

    .line 379
    :cond_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a(Landroid/graphics/Canvas;)V

    .line 381
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->ad:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 382
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->ad:Z

    .line 383
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 384
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 386
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    return-void

    .line 371
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->f:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->M:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->j:F

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    sub-float v5, v0, v1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;FI)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 338
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/xui/view/XView;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    .line 340
    iget p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->ac:I

    if-eq p1, p4, :cond_1

    .line 341
    iget p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->D:I

    if-lez p1, :cond_0

    .line 342
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onLayout: ====== "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " lastWidth = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->ac:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LyricView"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->e()V

    goto :goto_0

    .line 345
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d()V

    .line 347
    :goto_0
    iput p4, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->ac:I

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 588
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->y:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 592
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->y:Landroid/view/VelocityTracker;

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->y:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 595
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 596
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_c

    const/4 v4, -0x1

    const/4 v5, 0x3

    if-eq v2, v3, :cond_7

    const/4 v6, 0x2

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    goto/16 :goto_1

    .line 691
    :cond_2
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->W:Z

    goto/16 :goto_1

    .line 612
    :cond_3
    iget-boolean v2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->C:Z

    if-eqz v2, :cond_e

    .line 613
    iget v2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->B:I

    if-eq v4, v2, :cond_e

    const/4 v4, 0x0

    .line 621
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 622
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :try_start_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move v5, v4

    :catch_1
    move v1, v3

    :goto_0
    if-eqz v1, :cond_4

    goto/16 :goto_1

    .line 632
    :cond_4
    iget p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->t:F

    sub-float/2addr p1, v5

    float-to-int v11, p1

    .line 633
    iget p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->u:F

    sub-float p1, v5, p1

    float-to-int p1, p1

    .line 634
    iget v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->v:F

    sub-float/2addr v4, v1

    float-to-int v1, v4

    .line 636
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v2, v1, :cond_5

    .line 637
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 641
    :cond_5
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->x:I

    if-le p1, v0, :cond_6

    .line 642
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->s:Z

    .line 645
    :cond_6
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->s:Z

    if-eqz p1, :cond_e

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->x:I

    mul-int/2addr v0, v6

    if-le p1, v0, :cond_e

    .line 646
    iput v5, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->t:F

    .line 647
    iget-object v7, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->q:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getScrollX()I

    move-result v8

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getScrollY()I

    move-result v9

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 648
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->invalidate()V

    goto/16 :goto_1

    .line 654
    :cond_7
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->ae:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 655
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->ae:Ljava/lang/Runnable;

    const-wide/16 v6, 0x64

    invoke-virtual {p1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 656
    iget p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->B:I

    .line 657
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 659
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->C:Z

    if-eqz v0, :cond_9

    .line 661
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->s:Z

    if-eqz v0, :cond_9

    .line 662
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->y:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    .line 663
    iget v6, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->A:I

    int-to-float v6, v6

    invoke-virtual {v0, v2, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 664
    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p1

    float-to-int p1, p1

    .line 666
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->z:I

    if-le v0, v2, :cond_8

    neg-int p1, p1

    .line 667
    div-int/2addr p1, v5

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->c(I)V

    .line 669
    :cond_8
    iput v4, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->B:I

    .line 671
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->y:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_9

    .line 672
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 673
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->y:Landroid/view/VelocityTracker;

    .line 679
    :cond_9
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->s:Z

    if-eqz p1, :cond_a

    .line 680
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->s:Z

    .line 682
    :cond_a
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 683
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 685
    :cond_b
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->a:Landroid/os/Handler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 686
    iget p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->u:F

    iget v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->t:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x41a00000    # 20.0f

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_e

    .line 687
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->callOnClick()Z

    goto :goto_1

    .line 598
    :cond_c
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->C:Z

    if-eqz v0, :cond_e

    .line 599
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->ae:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 600
    iput-boolean v3, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->W:Z

    .line 601
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->q:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_d

    .line 602
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->q:Landroid/widget/Scroller;

    invoke-virtual {v0, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 605
    :cond_d
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->B:I

    .line 606
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->u:F

    .line 607
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->v:F

    .line 608
    iget p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->u:F

    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->t:F

    :cond_e
    :goto_1
    return v3

    :cond_f
    :goto_2
    return v1
.end method

.method public onVisibilityAggregated(Z)V
    .locals 0

    .line 706
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/view/XView;->onVisibilityAggregated(Z)V

    xor-int/lit8 p1, p1, 0x1

    .line 707
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->G:Z

    return-void
.end method

.method public setCurrentTxtColor(I)V
    .locals 1

    .line 1041
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->k:I

    .line 1042
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->g:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

.method public setLrcLabel(Ljava/lang/String;)V
    .locals 0

    .line 1059
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->M:Ljava/lang/String;

    .line 1060
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->D:I

    if-gtz p1, :cond_1

    .line 1061
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public setNightColor(I)V
    .locals 1

    .line 213
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->aa:I

    .line 215
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lapo;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 216
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setNightColor: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->aa:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LyricView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->g:Landroid/text/TextPaint;

    iget v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->aa:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setOnLoadLrcListener(Lcom/xiaopeng/musicradio/music/player/widget/LyricView$d;)V
    .locals 0

    .line 1138
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->P:Lcom/xiaopeng/musicradio/music/player/widget/LyricView$d;

    return-void
.end method

.method public setOtherNightColor(I)V
    .locals 1

    .line 222
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->ab:I

    .line 223
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lapo;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 224
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setNightColor: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->ab:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LyricView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->f:Landroid/text/TextPaint;

    iget v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->ab:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 226
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->h:Landroid/text/TextPaint;

    iget v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->ab:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setOtherTxtColor(I)V
    .locals 1

    .line 1046
    iput p1, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->n:I

    .line 1047
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->f:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 1048
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/player/widget/LyricView;->h:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

.class public Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "ExpandableTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$b;,
        Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$c;,
        Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$d;,
        Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "\u6536\u8d77"

.field public static b:Ljava/lang/String; = "\u5c55\u5f00"

.field public static c:Ljava/lang/String; = "\u7f51\u9875\u94fe\u63a5"

.field public static final e:Ljava/lang/String;

.field private static h:I


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:I

.field private E:Ljava/lang/CharSequence;

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:I

.field private O:Z

.field private P:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$c;

.field f:Z

.field g:Z

.field private i:Landroid/text/TextPaint;

.field private j:Landroid/content/Context;

.field private k:Lbtr;

.field private l:Landroid/text/DynamicLayout;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$d;

.field private s:Z

.field private t:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$b;

.field private u:Z

.field private v:Lbts;

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u56fe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 65
    sput v0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 213
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, -0x1

    .line 217
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 221
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->q:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->s:Z

    .line 123
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->u:Z

    .line 130
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->w:Z

    .line 135
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->x:Z

    .line 140
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->y:Z

    .line 145
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->z:Z

    const/4 v1, 0x0

    .line 150
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->A:Z

    .line 155
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->B:Z

    .line 160
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->C:Z

    .line 1102
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->g:Z

    .line 222
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 223
    invoke-static {}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$a;->a()Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 224
    new-instance p1, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$1;-><init>(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)V

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method static synthetic a()I
    .locals 2

    .line 55
    sget v0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->h:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->h:I

    return v0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->o:I

    return p1
.end method

.method private a(Ljava/lang/String;IIFFF)I
    .locals 8

    add-float v0, p5, p6

    sub-float v0, p4, v0

    sub-int v1, p2, p3

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, p4

    float-to-int v0, v0

    .line 896
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    return p2

    .line 899
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->i:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->v:Lbts;

    .line 900
    invoke-virtual {v2}, Lbts;->a()Ljava/lang/String;

    move-result-object v2

    add-int/2addr v0, p3

    invoke-virtual {v2, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 899
    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float v2, p4, p5

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    return v0

    .line 906
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->i:Landroid/text/TextPaint;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float v7, p6, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->a(Ljava/lang/String;IIFFF)I

    move-result p1

    return p1
.end method

.method private a(Lbts;Z)Landroid/text/SpannableStringBuilder;
    .locals 18

    move-object/from16 v7, p0

    .line 416
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 418
    iget-object v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->k:Lbtr;

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lbtr;->a()Lbtq;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 420
    iget-object v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->k:Lbtr;

    invoke-interface {v0}, Lbtr;->a()Lbtq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->k:Lbtr;

    invoke-interface {v0}, Lbtr;->a()Lbtq;

    move-result-object v0

    sget-object v1, Lbtq;->STATUS_CONTRACT:Lbtq;

    invoke-virtual {v0, v1}, Lbtq;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    move v0, v10

    :goto_0
    if-eqz v0, :cond_1

    .line 430
    iget v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->m:I

    iget v1, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->D:I

    sub-int/2addr v1, v0

    add-int/2addr v0, v1

    iput v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->o:I

    goto :goto_1

    .line 432
    :cond_1
    iget-boolean v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->u:Z

    if-eqz v0, :cond_2

    .line 433
    iget v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->m:I

    iput v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->o:I

    :cond_2
    :goto_1
    if-eqz p2, :cond_18

    .line 438
    iget v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->o:I

    iget v1, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->D:I

    const-string v12, "\n"

    const/4 v13, 0x0

    const-string v14, " "

    if-ge v0, v1, :cond_8

    add-int/lit8 v15, v0, -0x1

    .line 440
    iget-object v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->l:Landroid/text/DynamicLayout;

    invoke-virtual {v0, v15}, Landroid/text/DynamicLayout;->getLineEnd(I)I

    move-result v2

    .line 441
    iget-object v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->l:Landroid/text/DynamicLayout;

    invoke-virtual {v0, v15}, Landroid/text/DynamicLayout;->getLineStart(I)I

    move-result v3

    .line 442
    iget-object v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->l:Landroid/text/DynamicLayout;

    invoke-virtual {v0, v15}, Landroid/text/DynamicLayout;->getLineWidth(I)F

    move-result v16

    .line 444
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getHideEndContent()Ljava/lang/String;

    move-result-object v6

    .line 447
    iget-object v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->i:Landroid/text/TextPaint;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 448
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v4, v16

    move-object v11, v6

    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->a(Ljava/lang/String;IIFFF)I

    move-result v0

    .line 449
    invoke-virtual/range {p1 .. p1}, Lbts;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 450
    invoke-virtual {v0, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 451
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 453
    :cond_3
    invoke-virtual {v8, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 455
    iget-boolean v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->B:Z

    if-eqz v0, :cond_6

    move v0, v10

    move v1, v13

    :goto_2
    if-ge v0, v15, :cond_4

    .line 459
    iget-object v2, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->l:Landroid/text/DynamicLayout;

    invoke-virtual {v2, v0}, Landroid/text/DynamicLayout;->getLineWidth(I)F

    move-result v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    int-to-float v0, v15

    div-float/2addr v1, v0

    sub-float v1, v1, v16

    .line 462
    iget-object v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->i:Landroid/text/TextPaint;

    invoke-virtual {v0, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    sub-float/2addr v1, v0

    cmpl-float v0, v1, v13

    if-lez v0, :cond_6

    .line 464
    iget-object v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->i:Landroid/text/TextPaint;

    invoke-virtual {v0, v14}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    move v2, v10

    :goto_3
    int-to-float v3, v2

    mul-float/2addr v3, v0

    cmpg-float v3, v3, v1

    if-gez v3, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    sub-int/2addr v2, v9

    move v0, v10

    :goto_4
    if-ge v0, v2, :cond_6

    .line 471
    invoke-virtual {v8, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 477
    :cond_6
    invoke-virtual {v8, v11}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 479
    iget-object v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->M:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v10

    goto :goto_5

    :cond_7
    iget-object v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->M:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 480
    :goto_5
    new-instance v1, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$3;

    invoke-direct {v1, v7}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$3;-><init>(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)V

    .line 502
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    iget-object v3, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->K:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v3, 0x11

    .line 480
    invoke-virtual {v8, v1, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 503
    invoke-virtual {v7, v8}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->a(Landroid/text/SpannableStringBuilder;)V

    goto/16 :goto_12

    .line 505
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dealLink: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->o:I

    iget v1, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->n:I

    if-le v0, v1, :cond_e

    add-int/lit8 v11, v1, -0x1

    .line 509
    iget-object v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->l:Landroid/text/DynamicLayout;

    invoke-virtual {v0, v11}, Landroid/text/DynamicLayout;->getLineEnd(I)I

    move-result v2

    .line 510
    iget-object v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->l:Landroid/text/DynamicLayout;

    invoke-virtual {v0, v11}, Landroid/text/DynamicLayout;->getLineStart(I)I

    move-result v3

    .line 511
    iget-object v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->l:Landroid/text/DynamicLayout;

    invoke-virtual {v0, v11}, Landroid/text/DynamicLayout;->getLineWidth(I)F

    move-result v15

    .line 513
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getExpandEndContentMore()Ljava/lang/String;

    move-result-object v6

    .line 516
    iget-object v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->i:Landroid/text/TextPaint;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 517
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move v4, v15

    move-object v13, v6

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->a(Ljava/lang/String;IIFFF)I

    move-result v0

    .line 518
    invoke-virtual/range {p1 .. p1}, Lbts;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 519
    invoke-virtual {v0, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 520
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 522
    :cond_9
    invoke-virtual {v8, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 524
    iget-boolean v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->B:Z

    if-eqz v0, :cond_c

    move v0, v10

    const/4 v1, 0x0

    :goto_6
    if-ge v0, v11, :cond_a

    .line 528
    iget-object v2, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->l:Landroid/text/DynamicLayout;

    invoke-virtual {v2, v0}, Landroid/text/DynamicLayout;->getLineWidth(I)F

    move-result v2

    add-float/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    int-to-float v0, v11

    div-float/2addr v1, v0

    sub-float/2addr v1, v15

    .line 531
    iget-object v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->i:Landroid/text/TextPaint;

    invoke-virtual {v0, v13}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    sub-float/2addr v1, v0

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_c

    .line 533
    iget-object v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->i:Landroid/text/TextPaint;

    invoke-virtual {v0, v14}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    move v2, v10

    :goto_7
    int-to-float v3, v2

    mul-float/2addr v3, v0

    cmpg-float v3, v3, v1

    if-gez v3, :cond_b

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_b
    sub-int/2addr v2, v9

    move v0, v10

    :goto_8
    if-ge v0, v2, :cond_c

    .line 540
    invoke-virtual {v8, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 546
    :cond_c
    invoke-virtual {v8, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 548
    iget-object v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->M:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v10

    goto :goto_9

    :cond_d
    iget-object v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->M:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 549
    :goto_9
    new-instance v1, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$4;

    invoke-direct {v1, v7}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$4;-><init>(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)V

    .line 569
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    iget-object v3, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->L:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v3, 0x11

    .line 549
    invoke-virtual {v8, v1, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 570
    invoke-virtual {v7, v8}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->a(Landroid/text/SpannableStringBuilder;)V

    goto/16 :goto_12

    .line 572
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lbts;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 573
    iget-boolean v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->u:Z

    if-eqz v0, :cond_17

    .line 574
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getExpandEndContent()Ljava/lang/String;

    move-result-object v0

    .line 576
    iget-boolean v1, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->B:Z

    if-eqz v1, :cond_11

    .line 578
    iget-object v1, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->l:Landroid/text/DynamicLayout;

    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v1

    sub-int/2addr v1, v9

    .line 579
    iget-object v2, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->l:Landroid/text/DynamicLayout;

    invoke-virtual {v2, v1}, Landroid/text/DynamicLayout;->getLineWidth(I)F

    move-result v2

    move v3, v10

    const/4 v4, 0x0

    :goto_a
    if-ge v3, v1, :cond_f

    .line 582
    iget-object v5, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->l:Landroid/text/DynamicLayout;

    invoke-virtual {v5, v3}, Landroid/text/DynamicLayout;->getLineWidth(I)F

    move-result v5

    add-float/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_f
    int-to-float v1, v1

    div-float/2addr v4, v1

    sub-float/2addr v4, v2

    .line 585
    iget-object v1, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->i:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float/2addr v4, v1

    const/4 v1, 0x0

    cmpl-float v2, v4, v1

    if-lez v2, :cond_11

    .line 587
    iget-object v1, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->i:Landroid/text/TextPaint;

    invoke-virtual {v1, v14}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    move v2, v10

    :goto_b
    int-to-float v3, v2

    mul-float/2addr v3, v1

    cmpg-float v3, v3, v4

    if-gez v3, :cond_10

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_10
    sub-int/2addr v2, v9

    move v1, v10

    :goto_c
    if-ge v1, v2, :cond_11

    .line 594
    invoke-virtual {v8, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 600
    :cond_11
    iget-object v1, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->l:Landroid/text/DynamicLayout;

    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v1

    if-lez v1, :cond_12

    .line 601
    iget-object v1, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->l:Landroid/text/DynamicLayout;

    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v1

    sub-int/2addr v1, v9

    goto :goto_d

    :cond_12
    move v1, v10

    .line 603
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    .line 605
    iget-object v3, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->l:Landroid/text/DynamicLayout;

    invoke-virtual {v3, v1}, Landroid/text/DynamicLayout;->getLineWidth(I)F

    move-result v1

    sub-float/2addr v2, v1

    .line 606
    iget-object v1, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->i:Landroid/text/TextPaint;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float v1, v2, v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_13

    .line 608
    invoke-virtual {v8, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_10

    .line 610
    :cond_13
    iget-object v1, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->i:Landroid/text/TextPaint;

    invoke-virtual {v1, v14}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    move v3, v10

    :goto_e
    int-to-float v4, v3

    mul-float/2addr v4, v1

    cmpg-float v4, v4, v2

    if-gez v4, :cond_14

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_14
    move v1, v10

    :goto_f
    if-ge v1, v3, :cond_15

    .line 617
    invoke-virtual {v8, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 619
    :cond_15
    invoke-virtual {v8, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 622
    :goto_10
    iget-object v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->M:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v10

    goto :goto_11

    :cond_16
    iget-object v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->M:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 623
    :goto_11
    new-instance v1, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$5;

    invoke-direct {v1, v7}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$5;-><init>(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)V

    .line 643
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    iget-object v3, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->L:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/16 v3, 0x11

    .line 623
    invoke-virtual {v8, v1, v2, v0, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 644
    invoke-virtual {v7, v8}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->b(Landroid/text/SpannableStringBuilder;)V

    goto :goto_12

    .line 646
    :cond_17
    iget-object v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->M:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 647
    iget-object v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->M:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 648
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget v1, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->N:I

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    iget-object v2, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->M:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x11

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_12

    .line 655
    :cond_18
    invoke-virtual/range {p1 .. p1}, Lbts;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 656
    iget-object v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->M:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 657
    iget-object v0, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->M:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 658
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget v1, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->N:I

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    iget-object v2, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->M:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v3, 0x11

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 662
    :cond_19
    :goto_12
    invoke-virtual/range {p1 .. p1}, Lbts;->b()Ljava/util/List;

    move-result-object v0

    .line 664
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbts$a;

    .line 665
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {v1}, Lbts$a;->f()I

    move-result v3

    if-lt v2, v3, :cond_1a

    .line 666
    invoke-virtual {v1}, Lbts$a;->c()Lbtp;

    move-result-object v2

    sget-object v3, Lbtp;->LINK_TYPE:Lbtp;

    invoke-virtual {v2, v3}, Lbtp;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_13

    .line 690
    :cond_1b
    invoke-virtual {v1}, Lbts$a;->c()Lbtp;

    move-result-object v2

    sget-object v3, Lbtp;->MENTION_TYPE:Lbtp;

    invoke-virtual {v2, v3}, Lbtp;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 692
    iget-boolean v2, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->w:Z

    if-eqz v2, :cond_1d

    if-eqz p2, :cond_1d

    .line 693
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getHideEndContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    .line 694
    invoke-virtual {v1}, Lbts$a;->e()I

    move-result v3

    if-ge v3, v2, :cond_1a

    .line 695
    invoke-virtual {v1}, Lbts$a;->f()I

    move-result v3

    .line 696
    iget v4, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->o:I

    iget v5, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->D:I

    if-ge v4, v5, :cond_1c

    .line 697
    invoke-virtual {v1}, Lbts$a;->f()I

    move-result v4

    if-ge v2, v4, :cond_1c

    goto :goto_14

    :cond_1c
    move v2, v3

    .line 701
    :goto_14
    invoke-direct {v7, v8, v1, v2}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->b(Landroid/text/SpannableStringBuilder;Lbts$a;I)V

    goto :goto_13

    .line 704
    :cond_1d
    invoke-virtual {v1}, Lbts$a;->f()I

    move-result v2

    invoke-direct {v7, v8, v1, v2}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->b(Landroid/text/SpannableStringBuilder;Lbts$a;I)V

    goto :goto_13

    .line 706
    :cond_1e
    invoke-virtual {v1}, Lbts$a;->c()Lbtp;

    move-result-object v2

    sget-object v3, Lbtp;->SELF:Lbtp;

    invoke-virtual {v2, v3}, Lbtp;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 709
    iget-boolean v2, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->w:Z

    if-eqz v2, :cond_20

    if-eqz p2, :cond_20

    .line 710
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getHideEndContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    .line 711
    invoke-virtual {v1}, Lbts$a;->e()I

    move-result v3

    if-ge v3, v2, :cond_1a

    .line 712
    invoke-virtual {v1}, Lbts$a;->f()I

    move-result v3

    .line 713
    iget v4, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->o:I

    iget v5, v7, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->D:I

    if-ge v4, v5, :cond_1f

    .line 714
    invoke-virtual {v1}, Lbts$a;->f()I

    move-result v4

    if-ge v2, v4, :cond_1f

    goto :goto_15

    :cond_1f
    move v2, v3

    .line 718
    :goto_15
    invoke-direct {v7, v8, v1, v2}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->a(Landroid/text/SpannableStringBuilder;Lbts$a;I)V

    goto/16 :goto_13

    .line 721
    :cond_20
    invoke-virtual {v1}, Lbts$a;->f()I

    move-result v2

    invoke-direct {v7, v8, v1, v2}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->a(Landroid/text/SpannableStringBuilder;Lbts$a;I)V

    goto/16 :goto_13

    .line 727
    :cond_21
    invoke-virtual {v7, v10}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setHighlightColor(I)V

    .line 729
    invoke-virtual {v7, v8}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    return-object v8
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->a(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 8

    .line 299
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->b(Ljava/lang/CharSequence;)Lbts;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->v:Lbts;

    .line 301
    new-instance p1, Landroid/text/DynamicLayout;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->v:Lbts;

    .line 302
    invoke-virtual {v0}, Lbts;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->i:Landroid/text/TextPaint;

    iget v3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->p:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const v5, 0x3f99999a    # 1.2f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->l:Landroid/text/DynamicLayout;

    .line 305
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->l:Landroid/text/DynamicLayout;

    invoke-virtual {p1}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->D:I

    .line 307
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->P:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$c;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 308
    iget v2, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->D:I

    iget v3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->m:I

    if-le v2, v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-interface {p1, v2, v3}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$c;->a(IZ)V

    .line 311
    :cond_1
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->w:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->D:I

    iget v2, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->m:I

    if-gt p1, v2, :cond_2

    goto :goto_1

    .line 315
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->v:Lbts;

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->a(Lbts;Z)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1

    .line 313
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->v:Lbts;

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->a(Lbts;Z)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 241
    sget v0, Lcom/xiaopeng/musicradio/program/b$g;->social_contract:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->a:Ljava/lang/String;

    .line 242
    sget v0, Lcom/xiaopeng/musicradio/program/b$g;->social_expend:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->b:Ljava/lang/String;

    .line 243
    sget v0, Lcom/xiaopeng/musicradio/program/b$g;->social_text_target:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->c:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 247
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/musicradio/program/b$h;->ExpandableTextView:[I

    invoke-virtual {v1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 250
    sget p3, Lcom/xiaopeng/musicradio/program/b$h;->ExpandableTextView_ep_limit_line:I

    const/4 v1, 0x4

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->m:I

    .line 251
    sget p3, Lcom/xiaopeng/musicradio/program/b$h;->ExpandableTextView_ep_max_line:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->n:I

    .line 252
    sget p3, Lcom/xiaopeng/musicradio/program/b$h;->ExpandableTextView_ep_need_expand:I

    const/4 v1, 0x1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->w:Z

    .line 253
    sget p3, Lcom/xiaopeng/musicradio/program/b$h;->ExpandableTextView_ep_need_contract:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->u:Z

    .line 254
    sget p3, Lcom/xiaopeng/musicradio/program/b$h;->ExpandableTextView_ep_need_animation:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->C:Z

    .line 255
    sget p3, Lcom/xiaopeng/musicradio/program/b$h;->ExpandableTextView_ep_need_self:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->A:Z

    .line 256
    sget p3, Lcom/xiaopeng/musicradio/program/b$h;->ExpandableTextView_ep_need_mention:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->y:Z

    .line 257
    sget p3, Lcom/xiaopeng/musicradio/program/b$h;->ExpandableTextView_ep_need_link:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->z:Z

    .line 258
    sget p3, Lcom/xiaopeng/musicradio/program/b$h;->ExpandableTextView_ep_need_always_showright:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->B:Z

    .line 259
    sget p3, Lcom/xiaopeng/musicradio/program/b$h;->ExpandableTextView_ep_need_convert_url:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->x:Z

    .line 260
    sget p3, Lcom/xiaopeng/musicradio/program/b$h;->ExpandableTextView_ep_contract_text:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->L:Ljava/lang/String;

    .line 261
    sget p3, Lcom/xiaopeng/musicradio/program/b$h;->ExpandableTextView_ep_expand_text:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->K:Ljava/lang/String;

    .line 262
    iget-object p3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->K:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 263
    sget-object p3, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->K:Ljava/lang/String;

    .line 265
    :cond_0
    iget-object p3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->L:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 266
    sget-object p3, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->L:Ljava/lang/String;

    .line 268
    :cond_1
    sget p3, Lcom/xiaopeng/musicradio/program/b$h;->ExpandableTextView_ep_expand_color:I

    const-string v1, "#999999"

    .line 269
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 268
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->F:I

    .line 270
    sget p3, Lcom/xiaopeng/musicradio/program/b$h;->ExpandableTextView_ep_expand_color:I

    .line 271
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 270
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->N:I

    .line 272
    sget p3, Lcom/xiaopeng/musicradio/program/b$h;->ExpandableTextView_ep_contract_color:I

    .line 273
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 272
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->J:I

    .line 274
    sget p3, Lcom/xiaopeng/musicradio/program/b$h;->ExpandableTextView_ep_link_color:I

    const-string v1, "#FF6200"

    .line 275
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 274
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->H:I

    .line 276
    sget p3, Lcom/xiaopeng/musicradio/program/b$h;->ExpandableTextView_ep_self_color:I

    .line 277
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    .line 276
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->I:I

    .line 278
    sget p3, Lcom/xiaopeng/musicradio/program/b$h;->ExpandableTextView_ep_mention_color:I

    .line 279
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 278
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->G:I

    .line 280
    sget p3, Lcom/xiaopeng/musicradio/program/b$h;->ExpandableTextView_ep_link_res:I

    sget v1, Lcom/xiaopeng/musicradio/program/b$c;->link:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 281
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->q:Landroid/graphics/drawable/Drawable;

    .line 282
    iget p3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->m:I

    iput p3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->o:I

    .line 283
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 285
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/xiaopeng/musicradio/program/b$c;->link:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->q:Landroid/graphics/drawable/Drawable;

    .line 288
    :goto_0
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->j:Landroid/content/Context;

    .line 290
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->i:Landroid/text/TextPaint;

    .line 291
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->i:Landroid/text/TextPaint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 294
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->q:Landroid/graphics/drawable/Drawable;

    const/16 p2, 0x1e

    invoke-virtual {p1, v0, v0, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private a(Landroid/text/SpannableStringBuilder;Lbts$a;I)V
    .locals 2

    .line 758
    new-instance v0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$6;

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$6;-><init>(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;Lbts$a;)V

    .line 770
    invoke-virtual {p2}, Lbts$a;->e()I

    move-result p2

    const/16 v1, 0x11

    .line 758
    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private a(Lbtq;)V
    .locals 3

    .line 846
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->o:I

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->D:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz p1, :cond_1

    .line 848
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->C:Z

    .line 850
    :cond_1
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->C:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    .line 851
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 853
    new-instance v1, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$8;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$8;-><init>(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;Z)V

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v0, 0x64

    .line 866
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 867
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    .line 870
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->m:I

    iget v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->D:I

    sub-int/2addr v0, p1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->o:I

    goto :goto_1

    .line 872
    :cond_3
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->u:Z

    if-eqz p1, :cond_4

    .line 873
    iget p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->m:I

    iput p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->o:I

    .line 875
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->E:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->a(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;Lbtq;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->a(Lbtq;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->O:Z

    return p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->O:Z

    return p1
.end method

.method private b(Ljava/lang/CharSequence;)Lbts;
    .locals 20

    move-object/from16 v0, p0

    .line 917
    new-instance v1, Lbts;

    invoke-direct {v1}, Lbts;-><init>()V

    .line 918
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x2

    const-string v4, "\\[([^\\[]*)\\]\\(([^\\(]*)\\)"

    .line 921
    invoke-static {v4, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    move-object/from16 v5, p1

    .line 922
    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 923
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 927
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 929
    iget-boolean v8, v0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->A:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    .line 930
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v10, v9

    move v11, v10

    .line 931
    :goto_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 932
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    .line 933
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v12

    .line 934
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 936
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v10

    .line 937
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v11, "["

    .line 939
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    const-string v13, "]"

    invoke-virtual {v10, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v10, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v13, "("

    .line 940
    invoke-virtual {v10, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    const-string v14, ")"

    invoke-virtual {v10, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 941
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v10}, Lbtt;->a(I)Ljava/lang/String;

    move-result-object v10

    .line 942
    new-instance v13, Lbts$a;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    add-int/2addr v14, v3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v16

    add-int v16, v14, v16

    sget-object v19, Lbtp;->SELF:Lbtp;

    move-object v14, v13

    move-object/from16 v17, v11

    invoke-direct/range {v14 .. v19}, Lbts$a;-><init>(IILjava/lang/String;Ljava/lang/String;Lbtp;)V

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 943
    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v11, v12

    :cond_0
    move v10, v12

    goto/16 :goto_0

    .line 948
    :cond_1
    invoke-interface {v2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    move v10, v9

    .line 951
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 952
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 953
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 958
    iget-boolean v6, v0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->z:Z

    .line 979
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v6, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 981
    iget-boolean v4, v0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->y:Z

    if-eqz v4, :cond_4

    const-string v4, "@[\\w\\p{InCJKUnifiedIdeographs}-]{1,26}"

    .line 982
    invoke-static {v4, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 983
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 984
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 985
    :goto_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 987
    new-instance v6, Lbts$a;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lbtp;->MENTION_TYPE:Lbtp;

    invoke-direct {v6, v8, v10, v11, v12}, Lbts$a;-><init>(IILjava/lang/String;Lbtp;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 989
    :cond_3
    invoke-interface {v2, v9, v4}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 991
    :cond_4
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 992
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 993
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 994
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 996
    :cond_5
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 998
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lbts;->a(Ljava/lang/String;)V

    .line 999
    invoke-virtual {v1, v2}, Lbts;->a(Ljava/util/List;)V

    return-object v1
.end method

.method private b()V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->E:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    .line 346
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->m:I

    iput v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->o:I

    .line 348
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->p:I

    if-gtz v0, :cond_1

    .line 349
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    .line 350
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->p:I

    .line 353
    :cond_1
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->p:I

    if-gtz v0, :cond_3

    .line 354
    sget v0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->h:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    const-string v0, "                                                                                                                                                                                                                                                                                                                           "

    .line 355
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    :cond_2
    new-instance v0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$2;-><init>(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 365
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->E:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->a(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_0
    return-void
.end method

.method private b(Landroid/text/SpannableStringBuilder;Lbts$a;I)V
    .locals 2

    .line 782
    new-instance v0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$7;

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$7;-><init>(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;Lbts$a;)V

    .line 794
    invoke-virtual {p2}, Lbts$a;->e()I

    move-result p2

    const/16 v1, 0x11

    .line 782
    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->b()V

    return-void
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)Ljava/lang/CharSequence;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->E:Ljava/lang/CharSequence;

    return-object p0
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    .line 839
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->a(Lbtq;)V

    return-void
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->s:Z

    return p0
.end method

.method static synthetic e(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)Lbtr;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->k:Lbtr;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->c()V

    return-void
.end method

.method static synthetic g(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$b;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->t:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$b;

    return-object p0
.end method

.method private getExpandEndContent()Ljava/lang/String;
    .locals 5

    .line 375
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->M:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 376
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->L:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "  %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 379
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->M:Ljava/lang/String;

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->L:Ljava/lang/String;

    aput-object v2, v3, v1

    const-string v1, "  %s  %s"

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getExpandEndContentMore()Ljava/lang/String;
    .locals 5

    .line 385
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->M:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 386
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->L:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "...  %s"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 389
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->M:Ljava/lang/String;

    aput-object v4, v3, v2

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->L:Ljava/lang/String;

    aput-object v2, v3, v1

    const-string v1, "...  %s  %s"

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHideEndContent()Ljava/lang/String;
    .locals 6

    .line 400
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->M:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 401
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->B:Z

    if-eqz v3, :cond_0

    const-string v3, "  %s"

    goto :goto_0

    :cond_0
    const-string v3, "...  %s"

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->K:Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 404
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-boolean v3, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->B:Z

    if-eqz v3, :cond_2

    const-string v3, "  %s  %s"

    goto :goto_1

    :cond_2
    const-string v3, "...  %s  %s"

    :goto_1
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->M:Ljava/lang/String;

    aput-object v5, v4, v2

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->K:Ljava/lang/String;

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->F:I

    return p0
.end method

.method static synthetic i(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->J:I

    return p0
.end method

.method static synthetic j(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$d;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->r:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$d;

    return-object p0
.end method

.method static synthetic k(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->I:I

    return p0
.end method

.method static synthetic l(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->G:I

    return p0
.end method

.method static synthetic m(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->m:I

    return p0
.end method

.method static synthetic n(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->D:I

    return p0
.end method

.method static synthetic o(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->u:Z

    return p0
.end method


# virtual methods
.method public a(Landroid/text/SpannableStringBuilder;)V
    .locals 4

    .line 1298
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lapo;->d(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1299
    new-instance v0, Landroid/text/style/ImageSpan;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/program/b$c;->music_arrow_down_night:I

    invoke-direct {v0, v2, v3, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    goto :goto_0

    .line 1301
    :cond_0
    new-instance v0, Landroid/text/style/ImageSpan;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/program/b$c;->music_arrow_down_day:I

    invoke-direct {v0, v2, v3, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 1304
    :goto_0
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v3, 0x11

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public b(Landroid/text/SpannableStringBuilder;)V
    .locals 4

    .line 1309
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lapo;->d(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1310
    new-instance v0, Landroid/text/style/ImageSpan;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/program/b$c;->music_arrow_up_night:I

    invoke-direct {v0, v2, v3, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    goto :goto_0

    .line 1312
    :cond_0
    new-instance v0, Landroid/text/style/ImageSpan;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/xiaopeng/musicradio/program/b$c;->music_arrow_up_day:I

    invoke-direct {v0, v2, v3, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    .line 1314
    :goto_0
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v3, 0x11

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public getContractString()Ljava/lang/String;
    .locals 1

    .line 1236
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->L:Ljava/lang/String;

    return-object v0
.end method

.method public getContractTextColor()I
    .locals 1

    .line 1220
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->J:I

    return v0
.end method

.method public getEndExpandTextColor()I
    .locals 1

    .line 1244
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->N:I

    return v0
.end method

.method public getExpandOrContractClickListener()Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$b;
    .locals 1

    .line 1284
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->t:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$b;

    return-object v0
.end method

.method public getExpandString()Ljava/lang/String;
    .locals 1

    .line 1228
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->K:Ljava/lang/String;

    return-object v0
.end method

.method public getExpandTextColor()I
    .locals 1

    .line 1204
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->F:I

    return v0
.end method

.method public getExpandableLineCount()I
    .locals 1

    .line 1196
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->D:I

    return v0
.end method

.method public getExpandableLinkTextColor()I
    .locals 1

    .line 1212
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->H:I

    return v0
.end method

.method public getLinkClickListener()Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$d;
    .locals 1

    .line 1148
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->r:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$d;

    return-object v0
.end method

.method public getLinkDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1164
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->q:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOnGetLineCountListener()Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$c;
    .locals 1

    .line 1136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->P:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$c;

    return-object v0
.end method

.method public getSelfTextColor()I
    .locals 1

    .line 1260
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->I:I

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    .line 1107
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->f:Z

    .line 1108
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 1110
    iget-boolean v2, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->g:Z

    if-eqz v2, :cond_0

    .line 1111
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->f:Z

    return p1

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1115
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->setTextIsSelectable(Z)V

    :cond_1
    return p1
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->E:Ljava/lang/CharSequence;

    .line 335
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->O:Z

    if-eqz p1, :cond_0

    .line 336
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->b()V

    :cond_0
    return-void
.end method

.method public setContractString(Ljava/lang/String;)V
    .locals 0

    .line 1240
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->L:Ljava/lang/String;

    return-void
.end method

.method public setContractTextColor(I)V
    .locals 0

    .line 1224
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->J:I

    return-void
.end method

.method public setCurrStatus(Lbtq;)V
    .locals 0

    .line 835
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->a(Lbtq;)V

    return-void
.end method

.method public setEndExpandTextColor(I)V
    .locals 0

    .line 1248
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->N:I

    return-void
.end method

.method public setEndExpendContent(Ljava/lang/String;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->M:Ljava/lang/String;

    return-void
.end method

.method public setExpandOrContractClickListener(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$b;)V
    .locals 0

    .line 1288
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->t:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$b;

    return-void
.end method

.method public setExpandString(Ljava/lang/String;)V
    .locals 0

    .line 1232
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->K:Ljava/lang/String;

    return-void
.end method

.method public setExpandTextColor(I)V
    .locals 0

    .line 1208
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->F:I

    return-void
.end method

.method public setExpandableLineCount(I)V
    .locals 0

    .line 1200
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->D:I

    return-void
.end method

.method public setExpandableLinkTextColor(I)V
    .locals 0

    .line 1216
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->H:I

    return-void
.end method

.method public setLinkClickListener(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$d;)V
    .locals 0

    .line 1152
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->r:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$d;

    return-void
.end method

.method public setLinkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1168
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->q:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setNeedAlwaysShowRight(Z)V
    .locals 0

    .line 1280
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->B:Z

    return-void
.end method

.method public setNeedAnimation(Z)V
    .locals 0

    .line 1192
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->C:Z

    return-void
.end method

.method public setNeedContract(Z)V
    .locals 0

    .line 1176
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->u:Z

    return-void
.end method

.method public setNeedExpend(Z)V
    .locals 0

    .line 1184
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->w:Z

    return-void
.end method

.method public setNeedLink(Z)V
    .locals 0

    .line 1256
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->z:Z

    return-void
.end method

.method public setNeedMention(Z)V
    .locals 0

    .line 1160
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->y:Z

    return-void
.end method

.method public setNeedSelf(Z)V
    .locals 0

    .line 1272
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->A:Z

    return-void
.end method

.method public setOnGetLineCountListener(Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$c;)V
    .locals 0

    .line 1140
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->P:Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView$c;

    return-void
.end method

.method public setSelfTextColor(I)V
    .locals 0

    .line 1264
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/expandabletextviewlibrary/ExpandableTextView;->I:I

    return-void
.end method

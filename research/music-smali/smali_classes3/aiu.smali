.class public final Laiu;
.super Lait;
.source "CarUiTextViewImpl.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/ui/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lge;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lait;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Laiu;->a:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/android/car/ui/b;)Ljava/lang/CharSequence;
    .locals 4

    .line 150
    invoke-virtual {p1}, Lcom/android/car/ui/b;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 151
    invoke-virtual {p1}, Lcom/android/car/ui/b;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 152
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/car/ui/b;->b()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 153
    invoke-virtual {p1}, Lcom/android/car/ui/b;->a()I

    move-result v2

    invoke-direct {p0, v1, v2}, Laiu;->a(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 152
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 160
    :cond_1
    invoke-virtual {p1}, Lcom/android/car/ui/b;->d()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/car/ui/b;->a()I

    move-result p1

    invoke-direct {p0, v0, p1}, Laiu;->a(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 17

    move-object/from16 v7, p1

    move/from16 v8, p2

    .line 164
    invoke-virtual/range {p0 .. p0}, Laiu;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Layout;

    .line 165
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v9

    const/4 v10, 0x1

    if-ne v8, v10, :cond_0

    .line 168
    invoke-virtual/range {p0 .. p0}, Laiu;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    int-to-float v1, v9

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v7, v0, v1, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 174
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v11

    const/4 v12, 0x0

    move v0, v12

    move v13, v0

    move v14, v13

    move v15, v14

    :goto_0
    if-nez v13, :cond_8

    .line 180
    invoke-virtual/range {p0 .. p0}, Laiu;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v4, 0x1

    int-to-float v5, v9

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move v2, v14

    move v3, v11

    invoke-virtual/range {v0 .. v6}, Landroid/text/TextPaint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result v0

    add-int/2addr v0, v14

    const-string v1, "\n"

    .line 183
    invoke-static {v7, v1, v14, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 185
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    add-int/2addr v15, v10

    if-eq v15, v8, :cond_2

    add-int/lit8 v1, v11, -0x1

    if-le v0, v1, :cond_3

    :cond_2
    move v13, v10

    :cond_3
    if-nez v13, :cond_7

    .line 197
    invoke-interface {v7, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v12

    :cond_4
    sub-int v2, v0, v1

    sub-int/2addr v2, v10

    .line 199
    invoke-interface {v7, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_6

    add-int/lit8 v1, v1, 0x1

    sub-int v2, v0, v1

    if-eq v2, v14, :cond_5

    if-lt v1, v0, :cond_4

    :cond_5
    move v1, v12

    :cond_6
    sub-int/2addr v0, v1

    :cond_7
    move/from16 v16, v14

    move v14, v0

    move/from16 v0, v16

    goto :goto_0

    .line 212
    :cond_8
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 214
    invoke-interface {v7, v12, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 216
    new-instance v1, Ljava/util/Scanner;

    invoke-interface {v7, v0, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 218
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-virtual/range {p0 .. p0}, Laiu;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    int-to-float v2, v9

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v1, v2, v3}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 220
    invoke-virtual {v8, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 222
    instance-of v0, v7, Landroid/text/Spanned;

    if-eqz v0, :cond_9

    .line 223
    move-object v1, v7

    check-cast v1, Landroid/text/Spanned;

    const/4 v2, 0x0

    .line 224
    invoke-virtual {v8}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const-class v4, Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v5, v8

    .line 223
    invoke-static/range {v1 .. v6}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    :cond_9
    return-object v8
.end method

.method private a()V
    .locals 5

    .line 90
    iget-object v0, p0, Laiu;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-virtual {p0}, Laiu;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 92
    new-instance v0, L-$$Lambda$aiu$F4IXlzcA5mToo_NGfEt8RtcOrAo;

    invoke-direct {v0, p0}, L-$$Lambda$aiu$F4IXlzcA5mToo_NGfEt8RtcOrAo;-><init>(Laiu;)V

    invoke-static {p0, v0}, Lge;->a(Landroid/view/View;Ljava/lang/Runnable;)Lge;

    move-result-object v0

    iput-object v0, p0, Laiu;->b:Lge;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Laiu;->b:Lge;

    .line 100
    iget-object v0, p0, Laiu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, L-$$Lambda$aiu$Xpe8d14bqU6tyTUS4TI8muYXN_g;->INSTANCE:L-$$Lambda$aiu$Xpe8d14bqU6tyTUS4TI8muYXN_g;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 107
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v1, 0x0

    const-string v2, ""

    move-object v3, v2

    move v2, v1

    .line 109
    :goto_0
    iget-object v4, p0, Laiu;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 110
    iget-object v4, p0, Laiu;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/car/ui/b;

    .line 111
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v3

    invoke-direct {p0, v4}, Laiu;->a(Lcom/android/car/ui/b;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v2, 0x1

    const-string v3, "\n"

    goto :goto_0

    .line 115
    :cond_2
    sget-object v2, L-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;->INSTANCE:L-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;

    invoke-direct {p0, v0, v1, v2}, Laiu;->a(Ljava/lang/CharSequence;ZLjava/util/concurrent/Executor;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;ZLjava/util/concurrent/Executor;)V
    .locals 7

    .line 121
    invoke-virtual {p0}, Laiu;->getTextMetricsParams()Landroid/text/PrecomputedText$Params;

    move-result-object v4

    .line 122
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 123
    new-instance v6, L-$$Lambda$aiu$pOQ0zVR_8mp-JkiM5CDlCsrbz5k;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, L-$$Lambda$aiu$pOQ0zVR_8mp-JkiM5CDlCsrbz5k;-><init>(Laiu;Ljava/lang/ref/WeakReference;Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;Z)V

    invoke-interface {p3, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/ref/WeakReference;Landroid/text/PrecomputedText;Ljava/lang/CharSequence;Z)V
    .locals 1

    .line 132
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_0

    return-void

    .line 135
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Landroid/text/PrecomputedText;->getParams()Landroid/text/PrecomputedText$Params;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextMetricsParams(Landroid/text/PrecomputedText$Params;)V

    .line 136
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    if-eqz p4, :cond_1

    .line 141
    iget-object p1, p0, Laiu;->b:Lge;

    if-nez p1, :cond_1

    .line 142
    new-instance p1, L-$$Lambda$aiu$F4IXlzcA5mToo_NGfEt8RtcOrAo;

    invoke-direct {p1, p0}, L-$$Lambda$aiu$F4IXlzcA5mToo_NGfEt8RtcOrAo;-><init>(Laiu;)V

    invoke-static {p0, p1}, Lge;->a(Landroid/view/View;Ljava/lang/Runnable;)Lge;

    move-result-object p1

    iput-object p1, p0, Laiu;->b:Lge;

    :cond_1
    return-void
.end method

.method private synthetic a(Ljava/lang/ref/WeakReference;Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;Z)V
    .locals 7

    .line 125
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-static {p2, p3}, Landroid/text/PrecomputedText;->create(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;)Landroid/text/PrecomputedText;

    move-result-object v4

    .line 130
    new-instance p3, L-$$Lambda$aiu$VpEzjV19Qj8l8HG2aYRT6bW3Vr8;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, L-$$Lambda$aiu$VpEzjV19Qj8l8HG2aYRT6bW3Vr8;-><init>(Laiu;Ljava/lang/ref/WeakReference;Landroid/text/PrecomputedText;Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic b(Lcom/android/car/ui/b;)Z
    .locals 2

    .line 101
    invoke-virtual {p0}, Lcom/android/car/ui/b;->a()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/android/car/ui/b;->b()I

    move-result p0

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$F4IXlzcA5mToo_NGfEt8RtcOrAo(Laiu;)V
    .locals 0

    invoke-direct {p0}, Laiu;->a()V

    return-void
.end method

.method public static synthetic lambda$VpEzjV19Qj8l8HG2aYRT6bW3Vr8(Laiu;Ljava/lang/ref/WeakReference;Landroid/text/PrecomputedText;Ljava/lang/CharSequence;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Laiu;->a(Ljava/lang/ref/WeakReference;Landroid/text/PrecomputedText;Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public static synthetic lambda$Xpe8d14bqU6tyTUS4TI8muYXN_g(Lcom/android/car/ui/b;)Z
    .locals 0

    invoke-static {p0}, Laiu;->b(Lcom/android/car/ui/b;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$pOQ0zVR_8mp-JkiM5CDlCsrbz5k(Laiu;Ljava/lang/ref/WeakReference;Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Laiu;->a(Ljava/lang/ref/WeakReference;Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;Z)V

    return-void
.end method


# virtual methods
.method public setText(Lcom/android/car/ui/b;)V
    .locals 2

    .line 85
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Laiu;->a:Ljava/util/List;

    .line 86
    invoke-virtual {p1}, Lcom/android/car/ui/b;->d()Ljava/lang/CharSequence;

    move-result-object p1

    sget-object v0, L-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;->INSTANCE:L-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Laiu;->a(Ljava/lang/CharSequence;ZLjava/util/concurrent/Executor;)V

    return-void
.end method

.method public setText(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/car/ui/b;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Laiu;->a:Ljava/util/List;

    .line 77
    invoke-static {p1}, Lcom/android/car/ui/b;->a(Ljava/util/List;)Ljava/lang/CharSequence;

    move-result-object p1

    sget-object v0, L-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;->INSTANCE:L-$$Lambda$_14QHG018Z6p13d3hzJuGTWnNeo;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v0}, Laiu;->a(Ljava/lang/CharSequence;ZLjava/util/concurrent/Executor;)V

    return-void
.end method

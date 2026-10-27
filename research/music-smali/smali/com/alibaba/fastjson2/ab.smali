.class public abstract Lcom/alibaba/fastjson2/ab;
.super Ljava/lang/Object;
.source "JSONWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/ab$a;,
        Lcom/alibaba/fastjson2/ab$b;,
        Lcom/alibaba/fastjson2/ab$c;
    }
.end annotation


# static fields
.field static final a:J

.field static final b:[C


# instance fields
.field public final c:Lcom/alibaba/fastjson2/ab$a;

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Lcom/alibaba/fastjson2/ak;

.field protected final i:Ljava/nio/charset/Charset;

.field protected final j:C

.field protected final k:I

.field protected l:Z

.field protected m:I

.field protected n:I

.field protected o:Ljava/lang/Object;

.field protected p:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Ljava/lang/Object;",
            "Lcom/alibaba/fastjson2/ab$c;",
            ">;"
        }
    .end annotation
.end field

.field protected q:Lcom/alibaba/fastjson2/ab$c;

.field protected r:Ljava/lang/String;

.field protected s:Z

.field protected t:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 30
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v0, v2

    sput-wide v0, Lcom/alibaba/fastjson2/ab;->a:J

    const/16 v0, 0x10

    .line 31
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/fastjson2/ab;->b:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method protected constructor <init>(Lcom/alibaba/fastjson2/ab$a;Lcom/alibaba/fastjson2/ak;ZLjava/nio/charset/Charset;)V
    .locals 5

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    .line 61
    iput-object p2, p0, Lcom/alibaba/fastjson2/ab;->h:Lcom/alibaba/fastjson2/ak;

    .line 62
    iput-object p4, p0, Lcom/alibaba/fastjson2/ab;->i:Ljava/nio/charset/Charset;

    .line 63
    iput-boolean p3, p0, Lcom/alibaba/fastjson2/ab;->f:Z

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 64
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    if-ne p4, v1, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/ab;->d:Z

    if-nez p3, :cond_1

    .line 65
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    if-ne p4, v1, :cond_1

    move p4, p2

    goto :goto_1

    :cond_1
    move p4, v0

    :goto_1
    iput-boolean p4, p0, Lcom/alibaba/fastjson2/ab;->e:Z

    const-wide/16 v1, 0x0

    if-nez p3, :cond_2

    .line 66
    iget-wide p3, p1, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->UseSingleQuotes:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr p3, v3

    cmp-long p3, p3, v1

    if-eqz p3, :cond_2

    move p3, p2

    goto :goto_2

    :cond_2
    move p3, v0

    :goto_2
    iput-boolean p3, p0, Lcom/alibaba/fastjson2/ab;->g:Z

    .line 68
    iget-boolean p3, p0, Lcom/alibaba/fastjson2/ab;->g:Z

    if-eqz p3, :cond_3

    const/16 p3, 0x27

    goto :goto_3

    :cond_3
    const/16 p3, 0x22

    :goto_3
    iput-char p3, p0, Lcom/alibaba/fastjson2/ab;->j:C

    .line 71
    iget-wide p3, p1, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->LargeObject:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr p3, v3

    cmp-long p3, p3, v1

    if-eqz p3, :cond_4

    const/high16 p3, 0x40000000    # 2.0f

    goto :goto_4

    :cond_4
    const/high16 p3, 0x4000000

    :goto_4
    iput p3, p0, Lcom/alibaba/fastjson2/ab;->k:I

    .line 72
    iget-wide p3, p1, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object p1, Lcom/alibaba/fastjson2/ab$b;->PrettyFormat:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v3, p1, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr p3, v3

    cmp-long p1, p3, v1

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    move p2, v0

    :goto_5
    iput-boolean p2, p0, Lcom/alibaba/fastjson2/ab;->s:Z

    return-void
.end method

.method public static a(Lcom/alibaba/fastjson2/ab$a;)Lcom/alibaba/fastjson2/ab;
    .locals 4

    if-nez p0, :cond_0

    .line 543
    invoke-static {}, Lcom/alibaba/fastjson2/d;->b()Lcom/alibaba/fastjson2/ab$a;

    move-result-object p0

    .line 547
    :cond_0
    sget v0, Labf;->d:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 548
    sget-object v0, Labf;->g:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    sget-boolean v0, Labf;->r:Z

    if-nez v0, :cond_1

    sget-boolean v0, Labf;->t:Z

    if-nez v0, :cond_1

    .line 549
    new-instance v0, Lcom/alibaba/fastjson2/af;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/af;-><init>(Lcom/alibaba/fastjson2/ab$a;)V

    goto :goto_0

    .line 551
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/ae;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/ae;-><init>(Lcom/alibaba/fastjson2/ab$a;)V

    goto :goto_0

    .line 553
    :cond_2
    iget-wide v0, p0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->OptimizedForAscii:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 554
    sget-object v0, Labf;->C:Ljava/util/function/Function;

    if-eqz v0, :cond_4

    .line 555
    sget-object v0, Lcom/alibaba/fastjson2/d;->n:Ljava/util/function/Function;

    if-eqz v0, :cond_3

    .line 556
    sget-object v0, Lcom/alibaba/fastjson2/d;->n:Ljava/util/function/Function;

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/alibaba/fastjson2/ab;

    goto :goto_0

    .line 558
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/ai;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/ai;-><init>(Lcom/alibaba/fastjson2/ab$a;)V

    goto :goto_0

    .line 561
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/ah;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/ah;-><init>(Lcom/alibaba/fastjson2/ab$a;)V

    goto :goto_0

    .line 564
    :cond_5
    sget-object v0, Lcom/alibaba/fastjson2/d;->o:Ljava/util/function/Function;

    if-eqz v0, :cond_6

    .line 565
    sget-object v0, Lcom/alibaba/fastjson2/d;->o:Ljava/util/function/Function;

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/alibaba/fastjson2/ab;

    goto :goto_0

    .line 567
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/ad;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/ad;-><init>(Lcom/alibaba/fastjson2/ab$a;)V

    :goto_0
    return-object v0
.end method

.method public static varargs a([Lcom/alibaba/fastjson2/ab$b;)Lcom/alibaba/fastjson2/ab;
    .locals 4

    .line 575
    invoke-static {p0}, Lcom/alibaba/fastjson2/d;->a([Lcom/alibaba/fastjson2/ab$b;)Lcom/alibaba/fastjson2/ab$a;

    move-result-object p0

    .line 577
    sget v0, Labf;->d:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 578
    sget-object v0, Labf;->g:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    sget-boolean v0, Labf;->r:Z

    if-nez v0, :cond_0

    sget-boolean v0, Labf;->t:Z

    if-nez v0, :cond_0

    .line 579
    new-instance v0, Lcom/alibaba/fastjson2/af;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/af;-><init>(Lcom/alibaba/fastjson2/ab$a;)V

    goto :goto_0

    .line 581
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/ae;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/ae;-><init>(Lcom/alibaba/fastjson2/ab$a;)V

    goto :goto_0

    .line 583
    :cond_1
    iget-wide v0, p0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->OptimizedForAscii:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 584
    sget-object v0, Labf;->C:Ljava/util/function/Function;

    if-eqz v0, :cond_3

    .line 585
    sget-object v0, Lcom/alibaba/fastjson2/d;->n:Ljava/util/function/Function;

    if-eqz v0, :cond_2

    .line 586
    sget-object v0, Lcom/alibaba/fastjson2/d;->n:Ljava/util/function/Function;

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/alibaba/fastjson2/ab;

    goto :goto_0

    .line 588
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/ai;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/ai;-><init>(Lcom/alibaba/fastjson2/ab$a;)V

    goto :goto_0

    .line 591
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson2/ah;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/ah;-><init>(Lcom/alibaba/fastjson2/ab$a;)V

    goto :goto_0

    .line 594
    :cond_4
    sget-object v0, Lcom/alibaba/fastjson2/d;->o:Ljava/util/function/Function;

    if-eqz v0, :cond_5

    .line 595
    sget-object v0, Lcom/alibaba/fastjson2/d;->o:Ljava/util/function/Function;

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/alibaba/fastjson2/ab;

    goto :goto_0

    .line 597
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/ad;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/ad;-><init>(Lcom/alibaba/fastjson2/ab$a;)V

    :goto_0
    return-object v0
.end method

.method private static a(Ljava/lang/reflect/GenericArrayType;Ljava/lang/Class;)Z
    .locals 1

    .line 352
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 353
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 354
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p0

    .line 356
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Lcom/alibaba/fastjson2/ab$a;)Lcom/alibaba/fastjson2/ab;
    .locals 1

    .line 683
    sget-object v0, Labf;->C:Ljava/util/function/Function;

    if-eqz v0, :cond_1

    .line 684
    sget-object v0, Lcom/alibaba/fastjson2/d;->n:Ljava/util/function/Function;

    if-eqz v0, :cond_0

    .line 685
    sget-object v0, Lcom/alibaba/fastjson2/d;->n:Ljava/util/function/Function;

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/ab;

    move-object v0, p0

    goto :goto_0

    .line 687
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/ai;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/ai;-><init>(Lcom/alibaba/fastjson2/ab$a;)V

    goto :goto_0

    .line 690
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson2/ah;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/ah;-><init>(Lcom/alibaba/fastjson2/ab$a;)V

    :goto_0
    return-object v0
.end method

.method public static varargs b([Lcom/alibaba/fastjson2/ab$b;)Lcom/alibaba/fastjson2/ab;
    .locals 3

    .line 640
    new-instance v0, Lcom/alibaba/fastjson2/ac;

    new-instance v1, Lcom/alibaba/fastjson2/ab$a;

    sget-object v2, Lcom/alibaba/fastjson2/d;->C:Lahq;

    invoke-direct {v1, v2, p0}, Lcom/alibaba/fastjson2/ab$a;-><init>(Lahq;[Lcom/alibaba/fastjson2/ab$b;)V

    const/4 p0, 0x0

    invoke-direct {v0, v1, p0}, Lcom/alibaba/fastjson2/ac;-><init>(Lcom/alibaba/fastjson2/ab$a;Lcom/alibaba/fastjson2/ak;)V

    return-object v0
.end method

.method public static i()Lcom/alibaba/fastjson2/ab;
    .locals 5

    .line 505
    new-instance v0, Lcom/alibaba/fastjson2/ab$a;

    sget-object v1, Lcom/alibaba/fastjson2/d;->C:Lahq;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/ab$a;-><init>(Lahq;)V

    .line 507
    sget v1, Labf;->d:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 508
    sget-object v1, Labf;->g:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    sget-boolean v1, Labf;->r:Z

    if-nez v1, :cond_0

    sget-boolean v1, Labf;->t:Z

    if-nez v1, :cond_0

    .line 509
    new-instance v1, Lcom/alibaba/fastjson2/af;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/af;-><init>(Lcom/alibaba/fastjson2/ab$a;)V

    goto :goto_0

    .line 511
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson2/ae;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/ae;-><init>(Lcom/alibaba/fastjson2/ab$a;)V

    goto :goto_0

    .line 513
    :cond_1
    sget-wide v1, Lcom/alibaba/fastjson2/d;->g:J

    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->OptimizedForAscii:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_4

    .line 514
    sget-object v1, Labf;->C:Ljava/util/function/Function;

    if-eqz v1, :cond_3

    .line 515
    sget-object v1, Lcom/alibaba/fastjson2/d;->n:Ljava/util/function/Function;

    if-eqz v1, :cond_2

    .line 516
    sget-object v1, Lcom/alibaba/fastjson2/d;->n:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alibaba/fastjson2/ab;

    goto :goto_0

    .line 518
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson2/ai;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/ai;-><init>(Lcom/alibaba/fastjson2/ab$a;)V

    goto :goto_0

    .line 521
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson2/ah;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/ah;-><init>(Lcom/alibaba/fastjson2/ab$a;)V

    goto :goto_0

    .line 524
    :cond_4
    sget-object v1, Lcom/alibaba/fastjson2/d;->o:Ljava/util/function/Function;

    if-eqz v1, :cond_5

    .line 525
    sget-object v1, Lcom/alibaba/fastjson2/d;->o:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alibaba/fastjson2/ab;

    goto :goto_0

    .line 526
    :cond_5
    sget-object v1, Labf;->g:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_6

    sget-object v1, Labf;->B:Ljava/util/function/ToIntFunction;

    if-eqz v1, :cond_6

    sget-object v1, Labf;->C:Ljava/util/function/Function;

    if-eqz v1, :cond_6

    .line 527
    new-instance v1, Lcom/alibaba/fastjson2/ag;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/ag;-><init>(Lcom/alibaba/fastjson2/ab$a;)V

    goto :goto_0

    .line 529
    :cond_6
    new-instance v1, Lcom/alibaba/fastjson2/ad;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/ad;-><init>(Lcom/alibaba/fastjson2/ab$a;)V

    :goto_0
    return-object v1
.end method

.method public static j()Lcom/alibaba/fastjson2/ab;
    .locals 2

    .line 666
    invoke-static {}, Lcom/alibaba/fastjson2/d;->b()Lcom/alibaba/fastjson2/ab$a;

    move-result-object v0

    .line 668
    sget-object v1, Labf;->C:Ljava/util/function/Function;

    if-eqz v1, :cond_1

    .line 669
    sget-object v1, Lcom/alibaba/fastjson2/d;->n:Ljava/util/function/Function;

    if-eqz v1, :cond_0

    .line 670
    sget-object v1, Lcom/alibaba/fastjson2/d;->n:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson2/ab;

    move-object v1, v0

    goto :goto_0

    .line 672
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson2/ai;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/ai;-><init>(Lcom/alibaba/fastjson2/ab$a;)V

    goto :goto_0

    .line 675
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson2/ah;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/ah;-><init>(Lcom/alibaba/fastjson2/ab$a;)V

    :goto_0
    return-object v1
.end method


# virtual methods
.method public abstract a(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I
.end method

.method public final a(Ljava/lang/Class;)Laem;
    .locals 4

    .line 495
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->FieldBased:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 496
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-object v1, v1, Lcom/alibaba/fastjson2/ab$a;->b:Lahq;

    invoke-virtual {v1, p1, p1, v0}, Lahq;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Laem;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laem;
    .locals 4

    .line 500
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->FieldBased:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 501
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-object v1, v1, Lcom/alibaba/fastjson2/ab$a;->b:Lahq;

    invoke-virtual {v1, p1, p2, v0}, Lahq;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Laem;

    move-result-object p1

    return-object p1
.end method

.method public final a(Labq;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->ReferenceDetection:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq p2, v0, :cond_6

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    if-ne p2, v0, :cond_0

    goto :goto_3

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->q:Lcom/alibaba/fastjson2/ab$c;

    sget-object v2, Lcom/alibaba/fastjson2/ab$c;->a:Lcom/alibaba/fastjson2/ab$c;

    if-ne v0, v2, :cond_1

    .line 157
    invoke-virtual {p1}, Labq;->f()Lcom/alibaba/fastjson2/ab$c;

    move-result-object p1

    goto :goto_0

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->q:Lcom/alibaba/fastjson2/ab$c;

    invoke-virtual {p1, v0}, Labq;->a(Lcom/alibaba/fastjson2/ab$c;)Lcom/alibaba/fastjson2/ab$c;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/alibaba/fastjson2/ab;->q:Lcom/alibaba/fastjson2/ab$c;

    .line 161
    iget-object p1, p0, Lcom/alibaba/fastjson2/ab;->o:Ljava/lang/Object;

    if-ne p2, p1, :cond_2

    .line 162
    sget-object p1, Lcom/alibaba/fastjson2/ab$c;->a:Lcom/alibaba/fastjson2/ab$c;

    goto :goto_1

    .line 164
    :cond_2
    iget-object p1, p0, Lcom/alibaba/fastjson2/ab;->p:Ljava/util/IdentityHashMap;

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/ab$c;

    if-nez p1, :cond_3

    goto :goto_2

    .line 173
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab$c;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 165
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/alibaba/fastjson2/ab;->p:Ljava/util/IdentityHashMap;

    if-nez p1, :cond_5

    .line 166
    new-instance p1, Ljava/util/IdentityHashMap;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/alibaba/fastjson2/ab;->p:Ljava/util/IdentityHashMap;

    .line 168
    :cond_5
    iget-object p1, p0, Lcom/alibaba/fastjson2/ab;->p:Ljava/util/IdentityHashMap;

    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->q:Lcom/alibaba/fastjson2/ab$c;

    invoke-virtual {p1, p2, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_3
    return-object v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->ReferenceDetection:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq p2, v0, :cond_5

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    if-ne p2, v0, :cond_0

    goto :goto_2

    .line 130
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/ab$c;

    iget-object v2, p0, Lcom/alibaba/fastjson2/ab;->q:Lcom/alibaba/fastjson2/ab$c;

    invoke-direct {v0, v2, p1}, Lcom/alibaba/fastjson2/ab$c;-><init>(Lcom/alibaba/fastjson2/ab$c;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/fastjson2/ab;->q:Lcom/alibaba/fastjson2/ab$c;

    .line 133
    iget-object p1, p0, Lcom/alibaba/fastjson2/ab;->o:Ljava/lang/Object;

    if-ne p2, p1, :cond_1

    .line 134
    sget-object p1, Lcom/alibaba/fastjson2/ab$c;->a:Lcom/alibaba/fastjson2/ab$c;

    goto :goto_0

    .line 136
    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/ab;->p:Ljava/util/IdentityHashMap;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/ab$c;

    if-nez p1, :cond_2

    goto :goto_1

    .line 145
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab$c;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 137
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/alibaba/fastjson2/ab;->p:Ljava/util/IdentityHashMap;

    if-nez p1, :cond_4

    .line 138
    new-instance p1, Ljava/util/IdentityHashMap;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/alibaba/fastjson2/ab;->p:Ljava/util/IdentityHashMap;

    .line 140
    :cond_4
    iget-object p1, p0, Lcom/alibaba/fastjson2/ab;->p:Ljava/util/IdentityHashMap;

    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->q:Lcom/alibaba/fastjson2/ab$c;

    invoke-virtual {p1, p2, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    return-object v1
.end method

.method public a(B)V
    .locals 1

    .line 745
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract a(C)V
.end method

.method public abstract a(D)V
.end method

.method public final a(DLjava/text/DecimalFormat;)V
    .locals 1

    if-eqz p3, :cond_3

    .line 1049
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/ab;->f:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1053
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1058
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 1059
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/String;)V

    return-void

    .line 1054
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 1050
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/ab;->a(D)V

    return-void
.end method

.method public abstract a(F)V
.end method

.method public final a(FLjava/text/DecimalFormat;)V
    .locals 2

    if-eqz p2, :cond_3

    .line 987
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/ab;->f:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 991
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    float-to-double v0, p1

    .line 996
    invoke-virtual {p2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 997
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/String;)V

    return-void

    .line 992
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 988
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ab;->a(F)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 828
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract a(III)V
.end method

.method public abstract a(IIIIII)V
.end method

.method public abstract a(IIIIIIIIZ)V
.end method

.method public final a(ILjava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 962
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/ab;->f:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 967
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    return-void

    .line 963
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ab;->d(I)V

    return-void
.end method

.method public final a(Lcom/alibaba/fastjson2/ab$b;Z)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/ab$a;->a(Lcom/alibaba/fastjson2/ab$b;Z)V

    return-void
.end method

.method public a(Lcom/alibaba/fastjson2/e;)V
    .locals 0

    .line 1404
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ab;->a(Ljava/util/Map;)V

    return-void
.end method

.method public final a(Ljava/io/Reader;)V
    .locals 3

    .line 1208
    iget-char v0, p0, Lcom/alibaba/fastjson2/ab;->j:C

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/ab;->c(C)V

    const/16 v0, 0x800

    .line 1211
    :try_start_0
    new-array v0, v0, [C

    .line 1213
    :cond_0
    :goto_0
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/Reader;->read([CII)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v1, :cond_1

    .line 1226
    iget-char p1, p0, Lcom/alibaba/fastjson2/ab;->j:C

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ab;->c(C)V

    return-void

    :cond_1
    if-lez v1, :cond_0

    .line 1219
    :try_start_1
    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/alibaba/fastjson2/ab;->a([CIIZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1223
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "read string from reader error"

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(Ljava/io/Writer;)V
    .locals 2

    .line 1444
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1445
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1446
    iput p1, p0, Lcom/alibaba/fastjson2/ab;->n:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1448
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "flushTo error"

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public a(Ljava/lang/Enum;)V
    .locals 6

    if-nez p1, :cond_0

    .line 1163
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 1167
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->WriteEnumUsingToString:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1168
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 1169
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v4, Lcom/alibaba/fastjson2/ab$b;->WriteEnumsUsingName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 1170
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 1172
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ab;->d(I)V

    :goto_0
    return-void
.end method

.method public abstract a(Ljava/lang/Integer;)V
.end method

.method public abstract a(Ljava/lang/Long;)V
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/alibaba/fastjson2/ab;->o:Ljava/lang/Object;

    .line 119
    sget-object p1, Lcom/alibaba/fastjson2/ab$c;->a:Lcom/alibaba/fastjson2/ab$c;

    iput-object p1, p0, Lcom/alibaba/fastjson2/ab;->q:Lcom/alibaba/fastjson2/ab$c;

    return-void
.end method

.method public abstract a(Ljava/lang/String;)V
.end method

.method public abstract a(Ljava/math/BigDecimal;JLjava/text/DecimalFormat;)V
.end method

.method public a(Ljava/time/Instant;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1298
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 1302
    :cond_0
    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_INSTANT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0, p1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p1

    .line 1303
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    return-void
.end method

.method public abstract a(Ljava/time/LocalDate;)V
.end method

.method public abstract a(Ljava/time/LocalDateTime;)V
.end method

.method public abstract a(Ljava/time/LocalTime;)V
.end method

.method public abstract a(Ljava/time/OffsetDateTime;)V
.end method

.method public abstract a(Ljava/time/OffsetTime;)V
.end method

.method public abstract a(Ljava/time/ZonedDateTime;)V
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1236
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->m()V

    .line 1237
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    if-eqz v1, :cond_0

    .line 1239
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->o()V

    .line 1242
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1243
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1245
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->n()V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 9

    if-nez p1, :cond_0

    .line 1370
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 1374
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->ReferenceDetection:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->PrettyFormat:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v0, v2

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v0, v2

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v0, v2

    .line 1379
    iget-object v2, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$a;->l:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1380
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/Class;)Laem;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 1381
    invoke-interface/range {v2 .. v8}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    :cond_1
    const/16 v0, 0x7b

    .line 1385
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/ab;->a(C)V

    const/4 v0, 0x1

    .line 1387
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-nez v0, :cond_2

    const/16 v0, 0x2c

    .line 1389
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/ab;->a(C)V

    .line 1393
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 1392
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/ab;->h(Ljava/lang/Object;)V

    const/16 v0, 0x3a

    .line 1394
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/ab;->a(C)V

    .line 1396
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 1395
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/ab;->h(Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/16 p1, 0x7d

    .line 1400
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ab;->a(C)V

    return-void
.end method

.method public abstract a(Ljava/util/UUID;)V
.end method

.method public abstract a(S)V
.end method

.method public a([B)V
    .locals 4

    if-nez p1, :cond_0

    .line 715
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->s()V

    return-void

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->WriteByteArrayAsBase64:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 720
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ab;->b([B)V

    return-void

    .line 724
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->m()V

    const/4 v0, 0x0

    .line 725
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    if-eqz v0, :cond_2

    .line 727
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->o()V

    .line 729
    :cond_2
    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/ab;->d(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 731
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->n()V

    return-void
.end method

.method public a([BJ)V
    .locals 0

    .line 832
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string p2, "UnsupportedOperation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a([C)V
    .locals 2

    .line 753
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/alibaba/fastjson2/ab;->a([CII)V

    return-void
.end method

.method public a([CII)V
    .locals 0

    .line 757
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string p2, "UnsupportedOperation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract a([CIIZ)V
.end method

.method public abstract a([D)V
.end method

.method public final a([DLjava/text/DecimalFormat;)V
    .locals 3

    if-eqz p2, :cond_4

    .line 1071
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/ab;->f:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 1077
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 1081
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->m()V

    const/4 v0, 0x0

    .line 1082
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    if-eqz v0, :cond_2

    .line 1084
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->o()V

    .line 1087
    :cond_2
    aget-wide v1, p1, v0

    invoke-virtual {p2, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 1088
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1090
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->n()V

    return-void

    .line 1072
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ab;->a([D)V

    return-void
.end method

.method public a([F)V
    .locals 2

    if-nez p1, :cond_0

    .line 1002
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 1006
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->m()V

    const/4 v0, 0x0

    .line 1007
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    if-eqz v0, :cond_1

    .line 1009
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->o()V

    .line 1011
    :cond_1
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/ab;->a(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1013
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->n()V

    return-void
.end method

.method public final a([FLjava/text/DecimalFormat;)V
    .locals 3

    if-eqz p2, :cond_4

    .line 1017
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/ab;->f:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 1023
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 1027
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->m()V

    const/4 v0, 0x0

    .line 1028
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    if-eqz v0, :cond_2

    .line 1030
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->o()V

    .line 1032
    :cond_2
    aget v1, p1, v0

    float-to-double v1, v1

    invoke-virtual {p2, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    .line 1033
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1035
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->n()V

    return-void

    .line 1018
    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ab;->a([F)V

    return-void
.end method

.method public abstract a([I)V
.end method

.method public abstract a([J)V
.end method

.method public abstract a([Ljava/lang/String;)V
.end method

.method public a([Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 1099
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->s()V

    return-void

    .line 1103
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->m()V

    const/4 v0, 0x0

    .line 1104
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    if-eqz v0, :cond_1

    .line 1106
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->o()V

    .line 1108
    :cond_1
    aget-boolean v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/ab;->b(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1110
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->n()V

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/ab;->d:Z

    return v0
.end method

.method public final a(ILjava/lang/Object;)Z
    .locals 0

    .line 177
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/ab;->b(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ab;->f(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(J)Z
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-boolean v0, v0, Lcom/alibaba/fastjson2/ab$a;->o:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected a(JJ)Z
    .locals 9

    .line 836
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->BrowserCompatible:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1, p2}, Labo;->a(J)Z

    move-result p1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v4

    .line 837
    :goto_0
    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v5, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->WriteLongAsString:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v7, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v5, v7

    and-long p2, p3, v5

    cmp-long p2, p2, v2

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v4

    :goto_1
    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v4

    :cond_3
    :goto_2
    return v1
.end method

.method public final a(Lcom/alibaba/fastjson2/ab$b;)Z
    .locals 4

    .line 271
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    iget-wide v2, p1, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final a(Ljava/lang/Object;J)Z
    .locals 6

    .line 475
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    or-long/2addr p2, v0

    .line 477
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 481
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->NotWriteHashMapArrayListClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v4, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v4, p2

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 483
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 484
    const-class v4, Ljava/util/HashMap;

    if-eq v0, v4, :cond_1

    const-class v4, Ljava/util/ArrayList;

    if-ne v0, v4, :cond_2

    :cond_1
    return v1

    .line 490
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->NotWriteRootClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v4, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr p2, v4

    cmp-long p2, p2, v2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/alibaba/fastjson2/ab;->o:Ljava/lang/Object;

    if-eq p1, p2, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Class;)Z
    .locals 8

    .line 291
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    .line 292
    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->WriteClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    if-nez p1, :cond_1

    return v3

    .line 300
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p2, :cond_2

    return v3

    .line 305
    :cond_2
    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->NotWriteHashMapArrayListClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v6, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v6, v0

    cmp-long p2, v6, v4

    if-eqz p2, :cond_4

    .line 306
    const-class p2, Ljava/util/HashMap;

    if-eq v2, p2, :cond_3

    const-class p2, Ljava/util/ArrayList;

    if-ne v2, p2, :cond_4

    :cond_3
    return v3

    .line 311
    :cond_4
    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->NotWriteRootClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v6, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v0, v6

    cmp-long p2, v0, v4

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/alibaba/fastjson2/ab;->o:Ljava/lang/Object;

    if-eq p1, p2, :cond_6

    :cond_5
    const/4 v3, 0x1

    :cond_6
    return v3
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Class;J)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 424
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p2, :cond_1

    return v0

    .line 429
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$a;->l:J

    or-long/2addr p3, v2

    .line 431
    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->WriteClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v2, p3

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    return v0

    .line 435
    :cond_2
    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->NotWriteHashMapArrayListClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v2, p3

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 436
    const-class v2, Ljava/util/HashMap;

    if-ne v1, v2, :cond_4

    if-eqz p2, :cond_3

    .line 437
    const-class v1, Ljava/lang/Object;

    if-eq p2, v1, :cond_3

    const-class v1, Ljava/util/Map;

    if-eq p2, v1, :cond_3

    const-class v1, Ljava/util/AbstractMap;

    if-ne p2, v1, :cond_5

    :cond_3
    return v0

    .line 440
    :cond_4
    const-class p2, Ljava/util/ArrayList;

    if-ne v1, p2, :cond_5

    return v0

    .line 445
    :cond_5
    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->NotWriteRootClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v1, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long p2, p3, v1

    cmp-long p2, p2, v4

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/alibaba/fastjson2/ab;->o:Ljava/lang/Object;

    if-eq p1, p2, :cond_7

    :cond_6
    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z
    .locals 8

    .line 316
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    .line 317
    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->WriteClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    if-nez p1, :cond_0

    goto :goto_1

    .line 323
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v6, 0x0

    .line 325
    instance-of v7, p2, Ljava/lang/Class;

    if-eqz v7, :cond_1

    .line 326
    move-object v6, p2

    check-cast v6, Ljava/lang/Class;

    goto :goto_0

    .line 327
    :cond_1
    instance-of v7, p2, Ljava/lang/reflect/GenericArrayType;

    if-eqz v7, :cond_2

    .line 328
    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    invoke-static {p2, v2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/reflect/GenericArrayType;Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_3

    return v3

    .line 331
    :cond_2
    instance-of v7, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_3

    .line 332
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p2

    .line 333
    instance-of v7, p2, Ljava/lang/Class;

    if-eqz v7, :cond_3

    .line 334
    move-object v6, p2

    check-cast v6, Ljava/lang/Class;

    :cond_3
    :goto_0
    if-ne v2, v6, :cond_4

    return v3

    .line 341
    :cond_4
    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->NotWriteHashMapArrayListClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v6, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v6, v0

    cmp-long p2, v6, v4

    if-eqz p2, :cond_6

    .line 342
    const-class p2, Ljava/util/HashMap;

    if-eq v2, p2, :cond_5

    const-class p2, Ljava/util/ArrayList;

    if-ne v2, p2, :cond_6

    :cond_5
    return v3

    .line 347
    :cond_6
    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->NotWriteRootClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v6, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v0, v6

    cmp-long p2, v0, v4

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/alibaba/fastjson2/ab;->o:Ljava/lang/Object;

    if-eq p1, p2, :cond_8

    :cond_7
    const/4 v3, 0x1

    :cond_8
    :goto_1
    return v3
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z
    .locals 7

    .line 381
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    or-long/2addr p3, v0

    .line 383
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v0, p3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    .line 391
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v4, 0x0

    .line 393
    instance-of v5, p2, Ljava/lang/Class;

    if-eqz v5, :cond_2

    .line 394
    move-object v4, p2

    check-cast v4, Ljava/lang/Class;

    goto :goto_0

    .line 395
    :cond_2
    instance-of v5, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_3

    .line 396
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p2

    .line 397
    instance-of v5, p2, Ljava/lang/Class;

    if-eqz v5, :cond_3

    .line 398
    move-object v4, p2

    check-cast v4, Ljava/lang/Class;

    :cond_3
    :goto_0
    if-ne v0, v4, :cond_4

    return v1

    .line 405
    :cond_4
    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->NotWriteHashMapArrayListClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v5, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v5, p3

    cmp-long p2, v5, v2

    if-eqz p2, :cond_7

    .line 406
    const-class p2, Ljava/util/HashMap;

    if-ne v0, p2, :cond_6

    if-eqz v4, :cond_5

    .line 407
    const-class p2, Ljava/lang/Object;

    if-eq v4, p2, :cond_5

    const-class p2, Ljava/util/Map;

    if-eq v4, p2, :cond_5

    const-class p2, Ljava/util/AbstractMap;

    if-ne v4, p2, :cond_7

    :cond_5
    return v1

    .line 410
    :cond_6
    const-class p2, Ljava/util/ArrayList;

    if-ne v0, p2, :cond_7

    return v1

    .line 415
    :cond_7
    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->NotWriteRootClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v4, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long p2, p3, v4

    cmp-long p2, p2, v2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/alibaba/fastjson2/ab;->o:Ljava/lang/Object;

    if-eq p1, p2, :cond_9

    :cond_8
    const/4 v1, 0x1

    :cond_9
    return v1
.end method

.method protected a(Ljava/math/BigDecimal;J)Z
    .locals 7

    .line 848
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->BrowserCompatible:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Labo;->b(Ljava/math/BigDecimal;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigDecimal;->precision()I

    move-result p1

    const/16 v0, 0x10

    if-lt p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v4

    .line 849
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v5, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr p2, v5

    cmp-long p2, p2, v2

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v4

    :goto_1
    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v4

    :cond_3
    :goto_2
    return v1
.end method

.method protected a(Ljava/math/BigInteger;J)Z
    .locals 7

    .line 842
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->BrowserCompatible:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Labo;->c(Ljava/math/BigInteger;)Z

    move-result p1

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v4

    .line 843
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v5, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr p2, v5

    cmp-long p2, p2, v2

    if-eqz p2, :cond_1

    move p2, v1

    goto :goto_1

    :cond_1
    move p2, v4

    :goto_1
    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v4

    :cond_3
    :goto_2
    return v1
.end method

.method protected final a(Ljava/time/LocalDate;Lcom/alibaba/fastjson2/ab$a;)Z
    .locals 4

    .line 1263
    iget-boolean v0, p2, Lcom/alibaba/fastjson2/ab$a;->h:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-boolean v0, p2, Lcom/alibaba/fastjson2/ab$a;->f:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1272
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/ab$a;->j()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1275
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/ab$a;->h()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1276
    sget-object p2, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p1, p2}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1278
    :cond_1
    invoke-virtual {v0, p1}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p1

    .line 1280
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 1264
    :cond_3
    :goto_1
    sget-object v0, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {p1, v0}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object p1

    .line 1265
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/ab$a;->b()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1

    .line 1266
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object p1

    .line 1267
    invoke-virtual {p1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    .line 1268
    iget-boolean p1, p2, Lcom/alibaba/fastjson2/ab$a;->f:Z

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const-wide/16 p1, 0x3e8

    div-long/2addr v2, p1

    :goto_2
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson2/ab;->e(J)V

    return v1
.end method

.method public final a(Z)Z
    .locals 4

    .line 237
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-boolean v0, v0, Lcom/alibaba/fastjson2/ab$a;->o:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, p1, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object p1, Lcom/alibaba/fastjson2/ab$b;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, p1, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public abstract a(Ljava/nio/charset/Charset;)[B
.end method

.method public final b()Lcom/alibaba/fastjson2/ab$a;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    return-object v0
.end method

.method public final b(ILjava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->ReferenceDetection:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq p2, v0, :cond_9

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    if-ne p2, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    if-nez p1, :cond_2

    .line 195
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->q:Lcom/alibaba/fastjson2/ab$c;

    iget-object v0, v0, Lcom/alibaba/fastjson2/ab$c;->f:Lcom/alibaba/fastjson2/ab$c;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/alibaba/fastjson2/ab;->q:Lcom/alibaba/fastjson2/ab$c;

    iget-object p1, p1, Lcom/alibaba/fastjson2/ab$c;->f:Lcom/alibaba/fastjson2/ab$c;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->q:Lcom/alibaba/fastjson2/ab$c;

    new-instance v2, Lcom/alibaba/fastjson2/ab$c;

    invoke-direct {v2, v0, p1}, Lcom/alibaba/fastjson2/ab$c;-><init>(Lcom/alibaba/fastjson2/ab$c;I)V

    iput-object v2, v0, Lcom/alibaba/fastjson2/ab$c;->f:Lcom/alibaba/fastjson2/ab$c;

    :goto_0
    move-object p1, v2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 197
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->q:Lcom/alibaba/fastjson2/ab$c;

    iget-object v0, v0, Lcom/alibaba/fastjson2/ab$c;->g:Lcom/alibaba/fastjson2/ab$c;

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/alibaba/fastjson2/ab;->q:Lcom/alibaba/fastjson2/ab$c;

    iget-object p1, p1, Lcom/alibaba/fastjson2/ab$c;->g:Lcom/alibaba/fastjson2/ab$c;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->q:Lcom/alibaba/fastjson2/ab$c;

    new-instance v2, Lcom/alibaba/fastjson2/ab$c;

    invoke-direct {v2, v0, p1}, Lcom/alibaba/fastjson2/ab$c;-><init>(Lcom/alibaba/fastjson2/ab$c;I)V

    iput-object v2, v0, Lcom/alibaba/fastjson2/ab$c;->g:Lcom/alibaba/fastjson2/ab$c;

    goto :goto_0

    .line 198
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/ab$c;

    iget-object v2, p0, Lcom/alibaba/fastjson2/ab;->q:Lcom/alibaba/fastjson2/ab$c;

    invoke-direct {v0, v2, p1}, Lcom/alibaba/fastjson2/ab$c;-><init>(Lcom/alibaba/fastjson2/ab$c;I)V

    move-object p1, v0

    :goto_1
    iput-object p1, p0, Lcom/alibaba/fastjson2/ab;->q:Lcom/alibaba/fastjson2/ab$c;

    .line 201
    iget-object p1, p0, Lcom/alibaba/fastjson2/ab;->o:Ljava/lang/Object;

    if-ne p2, p1, :cond_5

    .line 202
    sget-object p1, Lcom/alibaba/fastjson2/ab$c;->a:Lcom/alibaba/fastjson2/ab$c;

    goto :goto_2

    .line 204
    :cond_5
    iget-object p1, p0, Lcom/alibaba/fastjson2/ab;->p:Ljava/util/IdentityHashMap;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/ab$c;

    if-nez p1, :cond_6

    goto :goto_3

    .line 213
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab$c;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 205
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/alibaba/fastjson2/ab;->p:Ljava/util/IdentityHashMap;

    if-nez p1, :cond_8

    .line 206
    new-instance p1, Ljava/util/IdentityHashMap;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Ljava/util/IdentityHashMap;-><init>(I)V

    iput-object p1, p0, Lcom/alibaba/fastjson2/ab;->p:Ljava/util/IdentityHashMap;

    .line 208
    :cond_8
    iget-object p1, p0, Lcom/alibaba/fastjson2/ab;->p:Ljava/util/IdentityHashMap;

    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->q:Lcom/alibaba/fastjson2/ab$c;

    invoke-virtual {p1, p2, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    :goto_4
    return-object v1
.end method

.method public abstract b(B)V
.end method

.method public abstract b(C)V
.end method

.method public final b(I)V
    .locals 1

    .line 888
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/ab;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 889
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/ab;->l:Z

    goto :goto_0

    .line 891
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->o()V

    .line 894
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ab;->d(I)V

    return-void
.end method

.method public abstract b(III)V
.end method

.method public abstract b(IIIIII)V
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->q:Lcom/alibaba/fastjson2/ab$c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->ReferenceDetection:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq p1, v0, :cond_1

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/ab;->q:Lcom/alibaba/fastjson2/ab$c;

    iget-object p1, p1, Lcom/alibaba/fastjson2/ab$c;->b:Lcom/alibaba/fastjson2/ab$c;

    iput-object p1, p0, Lcom/alibaba/fastjson2/ab;->q:Lcom/alibaba/fastjson2/ab$c;

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 6

    .line 858
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/ab;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 859
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/ab;->l:Z

    goto :goto_0

    .line 861
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->o()V

    .line 864
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v2, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->UnquoteFieldName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v4, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 865
    iget-char v2, p0, Lcom/alibaba/fastjson2/ab;->j:C

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_2

    const/16 v2, 0x5c

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    if-eqz v0, :cond_4

    .line 870
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/String;)V

    return-void

    .line 874
    :cond_4
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    return-void
.end method

.method public abstract b(Ljava/math/BigInteger;J)V
.end method

.method public b(Ljava/util/List;)V
    .locals 9

    if-nez p1, :cond_0

    .line 1342
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->s()V

    return-void

    .line 1346
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->ReferenceDetection:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->PrettyFormat:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v0, v2

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v0, v2

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v0, v2

    .line 1351
    iget-object v2, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$a;->l:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1352
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/Class;)Laem;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 1353
    invoke-interface/range {v2 .. v8}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    :cond_1
    const/16 v0, 0x5b

    .line 1357
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/ab;->a(C)V

    const/4 v0, 0x0

    .line 1358
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1359
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_2

    const/16 v2, 0x2c

    .line 1361
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson2/ab;->a(C)V

    .line 1363
    :cond_2
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/ab;->h(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/16 p1, 0x5d

    .line 1365
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ab;->a(C)V

    return-void
.end method

.method public abstract b(Z)V
.end method

.method public abstract b([B)V
.end method

.method public abstract b([C)V
.end method

.method public abstract b([CII)V
.end method

.method public final b(J)Z
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Class;J)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 454
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p2, :cond_1

    return v0

    .line 459
    :cond_1
    iget-object p2, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v2, p2, Lcom/alibaba/fastjson2/ab$a;->l:J

    or-long p2, p3, v2

    .line 461
    sget-object p4, Lcom/alibaba/fastjson2/ab$b;->WriteClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, p4, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v2, p2

    const-wide/16 v4, 0x0

    cmp-long p4, v2, v4

    if-nez p4, :cond_2

    return v0

    .line 465
    :cond_2
    sget-object p4, Lcom/alibaba/fastjson2/ab$b;->NotWriteHashMapArrayListClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, p4, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v2, p2

    cmp-long p4, v2, v4

    if-eqz p4, :cond_3

    .line 466
    const-class p4, Ljava/util/HashMap;

    if-ne v1, p4, :cond_3

    return v0

    .line 471
    :cond_3
    sget-object p4, Lcom/alibaba/fastjson2/ab$b;->NotWriteRootClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v1, p4, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr p2, v1

    cmp-long p2, p2, v4

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/alibaba/fastjson2/ab;->o:Ljava/lang/Object;

    if-eq p1, p2, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method public b([BJ)Z
    .locals 0

    .line 1204
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string p2, "UnsupportedOperation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/alibaba/fastjson2/ab;->m:I

    return v0
.end method

.method public final c(J)J
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    or-long/2addr p1, v0

    return-wide p1
.end method

.method public abstract c(C)V
.end method

.method public c(I)V
    .locals 1

    .line 914
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract c(III)V
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1200
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string v0, "UnsupportedOperation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract c([B)V
.end method

.method public final c(Ljava/lang/Object;)Z
    .locals 4

    .line 253
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->ReferenceDetection:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 255
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lahq;->d(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract close()V
.end method

.method public abstract d(I)V
.end method

.method public final d(J)V
    .locals 1

    .line 878
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/ab;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 879
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/ab;->l:Z

    goto :goto_0

    .line 881
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->o()V

    .line 884
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/ab;->e(J)V

    return-void
.end method

.method public abstract d(Ljava/lang/String;)V
.end method

.method public abstract d([B)V
.end method

.method public final d()Z
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->WriteNulls:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final d(Ljava/lang/Object;)Z
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->p:Ljava/util/IdentityHashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract e(J)V
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1251
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    return-void
.end method

.method public abstract e([B)V
.end method

.method public final e()Z
    .locals 4

    .line 245
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->ReferenceDetection:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->p:Ljava/util/IdentityHashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f(J)V
    .locals 0

    .line 975
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/ab;->e(J)V

    return-void
.end method

.method public abstract f(Ljava/lang/String;)V
.end method

.method public final f()Z
    .locals 4

    .line 267
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->BeanToArray:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f(Ljava/lang/Object;)Z
    .locals 8

    .line 363
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    .line 364
    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->WriteClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 368
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->NotWriteHashMapArrayListClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v6, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v6, v0

    cmp-long v2, v6, v4

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 370
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 371
    const-class v6, Ljava/util/HashMap;

    if-eq v2, v6, :cond_1

    const-class v6, Ljava/util/ArrayList;

    if-ne v2, v6, :cond_2

    :cond_1
    return v3

    .line 376
    :cond_2
    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->NotWriteRootClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v6, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v0, v6

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->o:Ljava/lang/Object;

    if-eq p1, v0, :cond_4

    :cond_3
    const/4 v3, 0x1

    :cond_4
    return v3
.end method

.method public final g()J
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    return-wide v0
.end method

.method public g(Ljava/lang/Object;)V
    .locals 1

    .line 898
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/ab;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 899
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/ab;->l:Z

    goto :goto_0

    .line 901
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->o()V

    .line 904
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ab;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public h(Ljava/lang/Object;)V
    .locals 9

    if-nez p1, :cond_0

    .line 1409
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 1413
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1414
    iget-object v1, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    invoke-virtual {v1, v0, v0}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laem;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    .line 1415
    invoke-interface/range {v2 .. v8}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void
.end method

.method public final h()Z
    .locals 4

    .line 287
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->IgnoreErrorGetter:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract k()V
.end method

.method public abstract l()V
.end method

.method public abstract m()V
.end method

.method public abstract n()V
.end method

.method public abstract o()V
.end method

.method public abstract p()V
.end method

.method public abstract q()V
.end method

.method public r()V
    .locals 6

    .line 1117
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object v4, Lcom/alibaba/fastjson2/ab$b;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v2, v4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1118
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v4, Lcom/alibaba/fastjson2/ab$b;->UseSingleQuotes:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-string v0, "\'\'"

    goto :goto_0

    :cond_0
    const-string v0, "\"\""

    goto :goto_0

    :cond_1
    const-string v0, "null"

    .line 1122
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/String;)V

    return-void
.end method

.method public s()V
    .locals 6

    .line 1127
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object v4, Lcom/alibaba/fastjson2/ab$b;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v2, v4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-string v0, "[]"

    goto :goto_0

    :cond_0
    const-string v0, "null"

    .line 1132
    :goto_0
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final t()V
    .locals 6

    .line 1136
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object v4, Lcom/alibaba/fastjson2/ab$b;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v2, v4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1137
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson2/ab;->e(J)V

    goto :goto_0

    .line 1139
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->q()V

    :goto_0
    return-void
.end method

.method public final u()V
    .locals 6

    .line 1144
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object v4, Lcom/alibaba/fastjson2/ab$b;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v2, v4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1145
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/ab;->b(Z)V

    goto :goto_0

    .line 1147
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ab;->q()V

    :goto_0
    return-void
.end method

.method public abstract v()[B
.end method

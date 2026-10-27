.class final Lalv$b;
.super Ljava/lang/Object;
.source "MinimalEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lalv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lalv$b$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lalv;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lalv$b$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lalp;


# direct methods
.method constructor <init>(Lalv;Lalp;Lalv$a;)V
    .locals 12

    .line 458
    iput-object p1, p0, Lalv$b;->a:Lalv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lalv$b;->b:Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-eqz p3, :cond_7

    .line 464
    invoke-static {p3}, Lalv$a;->a(Lalv$a;)I

    move-result v4

    add-int v10, v1, v4

    .line 465
    invoke-static {p3}, Lalv$a;->e(Lalv$a;)Lalv$a;

    move-result-object v1

    .line 467
    invoke-static {p3}, Lalv$a;->c(Lalv$a;)Lalo;

    move-result-object v4

    sget-object v5, Lalo;->BYTE:Lalo;

    if-ne v4, v5, :cond_0

    if-nez v1, :cond_0

    .line 468
    invoke-static {p3}, Lalv$a;->b(Lalv$a;)I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    .line 469
    invoke-static {p3}, Lalv$a;->b(Lalv$a;)I

    move-result v4

    invoke-static {v1}, Lalv$a;->b(Lalv$a;)I

    move-result v5

    if-eq v4, v5, :cond_2

    :cond_1
    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    if-eqz v4, :cond_3

    move v2, v3

    :cond_3
    if-eqz v1, :cond_4

    .line 475
    invoke-static {v1}, Lalv$a;->c(Lalv$a;)Lalo;

    move-result-object v3

    invoke-static {p3}, Lalv$a;->c(Lalv$a;)Lalo;

    move-result-object v5

    if-ne v3, v5, :cond_4

    if-eqz v4, :cond_5

    .line 476
    :cond_4
    iget-object v3, p0, Lalv$b;->b:Ljava/util/List;

    new-instance v11, Lalv$b$a;

    invoke-static {p3}, Lalv$a;->c(Lalv$a;)Lalo;

    move-result-object v7

    invoke-static {p3}, Lalv$a;->f(Lalv$a;)I

    move-result v8

    invoke-static {p3}, Lalv$a;->b(Lalv$a;)I

    move-result v9

    move-object v5, v11

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lalv$b$a;-><init>(Lalv$b;Lalo;III)V

    invoke-interface {v3, v0, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v10, v0

    :cond_5
    if-eqz v4, :cond_6

    .line 481
    iget-object v3, p0, Lalv$b;->b:Ljava/util/List;

    new-instance v11, Lalv$b$a;

    sget-object v6, Lalo;->ECI:Lalo;

    invoke-static {p3}, Lalv$a;->f(Lalv$a;)I

    move-result v7

    invoke-static {p3}, Lalv$a;->b(Lalv$a;)I

    move-result v8

    const/4 v9, 0x0

    move-object v4, v11

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lalv$b$a;-><init>(Lalv$b;Lalo;III)V

    invoke-interface {v3, v0, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_6
    move-object p3, v1

    move v1, v10

    goto :goto_0

    .line 488
    :cond_7
    invoke-static {p1}, Lalv;->c(Lalv;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 489
    iget-object p3, p0, Lalv$b;->b:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lalv$b$a;

    if-eqz p3, :cond_8

    .line 490
    invoke-static {p3}, Lalv$b$a;->a(Lalv$b$a;)Lalo;

    move-result-object p3

    sget-object v1, Lalo;->ECI:Lalo;

    if-eq p3, v1, :cond_8

    if-eqz v2, :cond_8

    .line 492
    iget-object p3, p0, Lalv$b;->b:Ljava/util/List;

    new-instance v1, Lalv$b$a;

    sget-object v6, Lalo;->ECI:Lalo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lalv$b$a;-><init>(Lalv$b;Lalo;III)V

    invoke-interface {p3, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 494
    :cond_8
    iget-object p3, p0, Lalv$b;->b:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lalv$b$a;

    .line 496
    iget-object v1, p0, Lalv$b;->b:Ljava/util/List;

    invoke-static {p3}, Lalv$b$a;->a(Lalv$b$a;)Lalo;

    move-result-object p3

    sget-object v2, Lalo;->ECI:Lalo;

    if-eq p3, v2, :cond_9

    goto :goto_2

    :cond_9
    move v0, v3

    :goto_2
    new-instance p3, Lalv$b$a;

    sget-object v6, Lalo;->FNC1_FIRST_POSITION:Lalo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p3

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lalv$b$a;-><init>(Lalv$b;Lalo;III)V

    invoke-interface {v1, v0, p3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 500
    :cond_a
    invoke-virtual {p2}, Lalp;->a()I

    move-result p3

    .line 503
    sget-object v0, Lalv$1;->a:[I

    invoke-static {p2}, Lalv;->b(Lalp;)Lalv$c;

    move-result-object v1

    invoke-virtual {v1}, Lalv$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v3, :cond_c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    const/16 v3, 0x1b

    const/16 v0, 0x28

    goto :goto_3

    :cond_b
    const/16 v3, 0xa

    const/16 v0, 0x1a

    goto :goto_3

    :cond_c
    const/16 v0, 0x9

    .line 518
    :goto_3
    invoke-direct {p0, p2}, Lalv$b;->a(Lalp;)I

    move-result p2

    :goto_4
    if-ge p3, v0, :cond_d

    .line 520
    invoke-static {p3}, Lalp;->a(I)Lalp;

    move-result-object v1

    .line 521
    invoke-static {p1}, Lalv;->d(Lalv;)Laln;

    move-result-object v2

    .line 520
    invoke-static {p2, v1, v2}, Lals;->a(ILalp;Laln;)Z

    move-result v1

    if-nez v1, :cond_d

    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_d
    :goto_5
    if-le p3, v3, :cond_e

    add-int/lit8 v0, p3, -0x1

    .line 525
    invoke-static {v0}, Lalp;->a(I)Lalp;

    move-result-object v0

    .line 526
    invoke-static {p1}, Lalv;->d(Lalv;)Laln;

    move-result-object v1

    .line 525
    invoke-static {p2, v0, v1}, Lals;->a(ILalp;Laln;)Z

    move-result v0

    if-eqz v0, :cond_e

    add-int/lit8 p3, p3, -0x1

    goto :goto_5

    .line 529
    :cond_e
    invoke-static {p3}, Lalp;->a(I)Lalp;

    move-result-object p1

    iput-object p1, p0, Lalv$b;->c:Lalp;

    return-void
.end method

.method private a(Lalp;)I
    .locals 3

    .line 541
    iget-object v0, p0, Lalv$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lalv$b$a;

    .line 542
    invoke-static {v2, p1}, Lalv$b$a;->a(Lalv$b$a;Lalp;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method static synthetic a(Lalv$b;)Lalp;
    .locals 0

    .line 453
    iget-object p0, p0, Lalv$b;->c:Lalp;

    return-object p0
.end method


# virtual methods
.method a()I
    .locals 1

    .line 536
    iget-object v0, p0, Lalv$b;->c:Lalp;

    invoke-direct {p0, v0}, Lalv$b;->a(Lalp;)I

    move-result v0

    return v0
.end method

.method a(Lale;)V
    .locals 2

    .line 551
    iget-object v0, p0, Lalv$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lalv$b$a;

    .line 552
    invoke-static {v1, p1}, Lalv$b$a;->a(Lalv$b$a;Lale;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method b()Lalp;
    .locals 1

    .line 557
    iget-object v0, p0, Lalv$b;->c:Lalp;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    iget-object v1, p0, Lalv$b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lalv$b$a;

    if-eqz v2, :cond_0

    const-string v2, ","

    .line 565
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    :cond_0
    invoke-virtual {v3}, Lalv$b$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, v3

    goto :goto_0

    .line 570
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/alibaba/fastjson2/ab$a;
.super Ljava/lang/Object;
.source "JSONWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final a:Ljava/time/ZoneId;


# instance fields
.field public final b:Lahq;

.field c:Ljava/time/format/DateTimeFormatter;

.field d:Ljava/lang/String;

.field e:Ljava/util/Locale;

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:J

.field m:Ljava/time/ZoneId;

.field n:I

.field o:Z

.field p:Lqu;

.field q:Lqt;

.field r:Lqr;

.field s:Lqw;

.field t:Lqj;

.field u:Lqh;

.field v:Lqp;

.field w:Lqm;

.field x:Lql;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1457
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/ab$a;->a:Ljava/time/ZoneId;

    return-void
.end method

.method public constructor <init>(Lahq;)V
    .locals 2

    .line 1483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 1471
    iput v0, p0, Lcom/alibaba/fastjson2/ab$a;->n:I

    if-eqz p1, :cond_1

    .line 1488
    sget-wide v0, Lcom/alibaba/fastjson2/d;->g:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/ab$a;->l:J

    .line 1489
    iput-object p1, p0, Lcom/alibaba/fastjson2/ab$a;->b:Lahq;

    .line 1490
    sget-object p1, Lcom/alibaba/fastjson2/d;->i:Ljava/time/ZoneId;

    iput-object p1, p0, Lcom/alibaba/fastjson2/ab$a;->m:Ljava/time/ZoneId;

    .line 1492
    sget-object p1, Lcom/alibaba/fastjson2/d;->h:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 1494
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 1485
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "objectWriterProvider must not null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs constructor <init>(Lahq;[Lcom/alibaba/fastjson2/ab$b;)V
    .locals 4

    .line 1530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    .line 1471
    iput v0, p0, Lcom/alibaba/fastjson2/ab$a;->n:I

    if-eqz p1, :cond_2

    .line 1535
    sget-wide v0, Lcom/alibaba/fastjson2/d;->g:J

    iput-wide v0, p0, Lcom/alibaba/fastjson2/ab$a;->l:J

    .line 1536
    iput-object p1, p0, Lcom/alibaba/fastjson2/ab$a;->b:Lahq;

    .line 1537
    sget-object p1, Lcom/alibaba/fastjson2/d;->i:Ljava/time/ZoneId;

    iput-object p1, p0, Lcom/alibaba/fastjson2/ab$a;->m:Ljava/time/ZoneId;

    const/4 p1, 0x0

    .line 1539
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 1540
    iget-wide v0, p0, Lcom/alibaba/fastjson2/ab$a;->l:J

    aget-object v2, p2, p1

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/fastjson2/ab$a;->l:J

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1543
    :cond_0
    sget-object p1, Lcom/alibaba/fastjson2/d;->h:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 1545
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ab$a;->a(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 1532
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "objectWriterProvider must not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1550
    iget-wide v0, p0, Lcom/alibaba/fastjson2/ab$a;->l:J

    return-wide v0
.end method

.method public a(Ljava/lang/Class;)Laem;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Laem<",
            "TT;>;"
        }
    .end annotation

    .line 1635
    iget-wide v0, p0, Lcom/alibaba/fastjson2/ab$a;->l:J

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

    .line 1636
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/ab$a;->b:Lahq;

    invoke-virtual {v1, p1, p1, v0}, Lahq;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Laem;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laem;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Laem<",
            "TT;>;"
        }
    .end annotation

    .line 1640
    iget-wide v0, p0, Lcom/alibaba/fastjson2/ab$a;->l:J

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

    .line 1641
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/ab$a;->b:Lahq;

    invoke-virtual {v1, p1, p2, v0}, Lahq;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Z)Laem;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/alibaba/fastjson2/ab$b;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1569
    iget-wide v0, p0, Lcom/alibaba/fastjson2/ab$a;->l:J

    iget-wide p1, p1, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/alibaba/fastjson2/ab$a;->l:J

    goto :goto_0

    .line 1571
    :cond_0
    iget-wide v0, p0, Lcom/alibaba/fastjson2/ab$a;->l:J

    iget-wide p1, p1, Lcom/alibaba/fastjson2/ab$b;->mask:J

    not-long p1, p1

    and-long/2addr p1, v0

    iput-wide p1, p0, Lcom/alibaba/fastjson2/ab$a;->l:J

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 1697
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab$a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 1698
    iput-object v0, p0, Lcom/alibaba/fastjson2/ab$a;->c:Ljava/time/format/DateTimeFormatter;

    :cond_1
    if-eqz p1, :cond_8

    .line 1701
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    .line 1703
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "iso8601"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v5

    goto :goto_0

    :sswitch_1
    const-string v1, "yyyy-MM-ddTHH:mm:ss"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v3

    goto :goto_0

    :sswitch_2
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    goto :goto_0

    :sswitch_3
    const-string v1, "unixtime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v4

    goto :goto_0

    :sswitch_4
    const-string v1, "millis"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v6

    :cond_2
    :goto_0
    if-eqz v0, :cond_7

    if-eq v0, v5, :cond_6

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    const-string v0, "d"

    .line 1727
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v0, "H"

    .line 1728
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    move-object v3, p1

    move v1, v0

    move v0, v5

    :goto_1
    move p1, v6

    move v2, p1

    :goto_2
    move v5, v2

    goto :goto_3

    :cond_3
    move-object v3, p1

    move v0, v5

    move v1, v0

    move v2, v1

    move p1, v6

    move v5, p1

    goto :goto_3

    :cond_4
    const-string p1, "yyyy-MM-dd\'T\'HH:mm:ss"

    move-object v3, p1

    move v0, v5

    move v1, v0

    goto :goto_1

    :cond_5
    move-object v3, p1

    move p1, v5

    move v0, v6

    move v1, v0

    move v2, v1

    goto :goto_2

    :cond_6
    move-object v3, p1

    move p1, v6

    move v0, p1

    move v1, v0

    move v2, v1

    goto :goto_3

    :cond_7
    move-object v3, p1

    move p1, v6

    move v0, p1

    move v1, v0

    move v2, v1

    move v6, v5

    goto :goto_2

    .line 1731
    :goto_3
    iput-boolean v6, p0, Lcom/alibaba/fastjson2/ab$a;->f:Z

    .line 1732
    iput-boolean v5, p0, Lcom/alibaba/fastjson2/ab$a;->g:Z

    .line 1733
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/ab$a;->h:Z

    .line 1734
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/ab$a;->j:Z

    .line 1735
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/ab$a;->k:Z

    .line 1736
    iput-boolean v2, p0, Lcom/alibaba/fastjson2/ab$a;->i:Z

    move-object p1, v3

    .line 1739
    :cond_8
    iput-object p1, p0, Lcom/alibaba/fastjson2/ab$a;->d:Ljava/lang/String;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x400565ba -> :sswitch_4
        -0x112ad7ab -> :sswitch_3
        0x4f76f1a0 -> :sswitch_2
        0x6d5d7dd4 -> :sswitch_1
        0x7ce21384 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Ljava/time/ZoneId;)V
    .locals 0

    .line 1656
    iput-object p1, p0, Lcom/alibaba/fastjson2/ab$a;->m:Ljava/time/ZoneId;

    return-void
.end method

.method public a(Lqh;)V
    .locals 0

    .line 1813
    iput-object p1, p0, Lcom/alibaba/fastjson2/ab$a;->u:Lqh;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1815
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/ab$a;->o:Z

    :cond_0
    return-void
.end method

.method public a(Lqj;)V
    .locals 0

    .line 1824
    iput-object p1, p0, Lcom/alibaba/fastjson2/ab$a;->t:Lqj;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1826
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/ab$a;->o:Z

    :cond_0
    return-void
.end method

.method public a(Lqm;)V
    .locals 0

    .line 1780
    iput-object p1, p0, Lcom/alibaba/fastjson2/ab$a;->w:Lqm;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1782
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/ab$a;->o:Z

    :cond_0
    return-void
.end method

.method public a(Lqp;)V
    .locals 0

    .line 1835
    iput-object p1, p0, Lcom/alibaba/fastjson2/ab$a;->v:Lqp;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1837
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/ab$a;->o:Z

    :cond_0
    return-void
.end method

.method public a(Lqr;)V
    .locals 0

    .line 1758
    iput-object p1, p0, Lcom/alibaba/fastjson2/ab$a;->r:Lqr;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1760
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/ab$a;->o:Z

    :cond_0
    return-void
.end method

.method public a(Lqt;)V
    .locals 0

    .line 1802
    iput-object p1, p0, Lcom/alibaba/fastjson2/ab$a;->q:Lqt;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1804
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/ab$a;->o:Z

    :cond_0
    return-void
.end method

.method public a(Lqu;)V
    .locals 0

    .line 1747
    iput-object p1, p0, Lcom/alibaba/fastjson2/ab$a;->p:Lqu;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1749
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/ab$a;->o:Z

    :cond_0
    return-void
.end method

.method public a(Lqw;)V
    .locals 0

    .line 1769
    iput-object p1, p0, Lcom/alibaba/fastjson2/ab$a;->s:Lqw;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1771
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/ab$a;->o:Z

    :cond_0
    return-void
.end method

.method public varargs a([Lcom/alibaba/fastjson2/ab$b;)V
    .locals 5

    const/4 v0, 0x0

    .line 1562
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1563
    iget-wide v1, p0, Lcom/alibaba/fastjson2/ab$a;->l:J

    aget-object v3, p1, v0

    iget-wide v3, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lcom/alibaba/fastjson2/ab$a;->l:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(J)Z
    .locals 2

    .line 1558
    iget-wide v0, p0, Lcom/alibaba/fastjson2/ab$a;->l:J

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

.method public a(Lcom/alibaba/fastjson2/ab$b;)Z
    .locals 4

    .line 1554
    iget-wide v0, p0, Lcom/alibaba/fastjson2/ab$a;->l:J

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

.method public b()Ljava/time/ZoneId;
    .locals 1

    .line 1649
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab$a;->m:Ljava/time/ZoneId;

    if-nez v0, :cond_0

    .line 1650
    sget-object v0, Lcom/alibaba/fastjson2/ab$a;->a:Ljava/time/ZoneId;

    iput-object v0, p0, Lcom/alibaba/fastjson2/ab$a;->m:Ljava/time/ZoneId;

    .line 1652
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab$a;->m:Ljava/time/ZoneId;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1660
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1664
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/ab$a;->f:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .line 1668
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/ab$a;->h:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .line 1672
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/ab$a;->g:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .line 1676
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/ab$a;->j:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .line 1680
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/ab$a;->k:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .line 1684
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/ab$a;->i:Z

    return v0
.end method

.method public j()Ljava/time/format/DateTimeFormatter;
    .locals 2

    .line 1688
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab$a;->c:Ljava/time/format/DateTimeFormatter;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson2/ab$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/fastjson2/ab$a;->f:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/fastjson2/ab$a;->g:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/fastjson2/ab$a;->h:Z

    if-nez v1, :cond_1

    .line 1689
    iget-object v1, p0, Lcom/alibaba/fastjson2/ab$a;->e:Ljava/util/Locale;

    if-nez v1, :cond_0

    .line 1690
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    goto :goto_0

    .line 1691
    :cond_0
    invoke-static {v0, v1}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/alibaba/fastjson2/ab$a;->c:Ljava/time/format/DateTimeFormatter;

    .line 1693
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab$a;->c:Ljava/time/format/DateTimeFormatter;

    return-object v0
.end method

.method public k()Lqu;
    .locals 1

    .line 1743
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab$a;->p:Lqu;

    return-object v0
.end method

.method public l()Lqr;
    .locals 1

    .line 1754
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab$a;->r:Lqr;

    return-object v0
.end method

.method public m()Lqw;
    .locals 1

    .line 1765
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab$a;->s:Lqw;

    return-object v0
.end method

.method public n()Lqm;
    .locals 1

    .line 1776
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab$a;->w:Lqm;

    return-object v0
.end method

.method public o()Lql;
    .locals 1

    .line 1787
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab$a;->x:Lql;

    return-object v0
.end method

.method public p()Lqt;
    .locals 1

    .line 1798
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab$a;->q:Lqt;

    return-object v0
.end method

.method public q()Lqh;
    .locals 1

    .line 1809
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab$a;->u:Lqh;

    return-object v0
.end method

.method public r()Lqj;
    .locals 1

    .line 1820
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab$a;->t:Lqj;

    return-object v0
.end method

.method public s()Lqp;
    .locals 1

    .line 1831
    iget-object v0, p0, Lcom/alibaba/fastjson2/ab$a;->v:Lqp;

    return-object v0
.end method

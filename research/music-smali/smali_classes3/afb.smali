.class final Lafb;
.super Lahp;
.source "ObjectWriterArrayFinal.java"


# static fields
.field public static final a:Lafb;

.field public static final b:Lafb;

.field public static final c:Lafb;


# instance fields
.field final d:[B

.field final e:J

.field final f:Ljava/lang/Class;

.field volatile g:Laem;

.field public final h:Ljava/text/DecimalFormat;

.field public final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lafb;

    const-class v1, Ljava/lang/Float;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lafb;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    sput-object v0, Lafb;->a:Lafb;

    .line 15
    new-instance v0, Lafb;

    const-class v1, Ljava/lang/Double;

    invoke-direct {v0, v1, v2}, Lafb;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    sput-object v0, Lafb;->b:Lafb;

    .line 16
    new-instance v0, Lafb;

    const-class v1, Ljava/math/BigDecimal;

    invoke-direct {v0, v1, v2}, Lafb;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    sput-object v0, Lafb;->c:Lafb;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Lahp;-><init>()V

    .line 26
    iput-object p1, p0, Lafb;->f:Ljava/lang/Class;

    .line 27
    iput-object p2, p0, Lafb;->h:Ljava/text/DecimalFormat;

    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x5b

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Labo;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 30
    invoke-static {p2}, Lcom/alibaba/fastjson2/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lafb;->d:[B

    .line 31
    invoke-static {p2}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lafb;->e:J

    .line 32
    invoke-static {p1}, Lahq;->d(Ljava/lang/Class;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lafb;->i:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 7

    if-nez p2, :cond_0

    .line 116
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->s()V

    return-void

    .line 120
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->e()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 122
    iget-boolean p3, p0, Lafb;->i:Z

    .line 125
    :cond_1
    move-object p5, p2

    check-cast p5, [Ljava/lang/Object;

    .line 127
    invoke-virtual {p1, p2, p4}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 128
    iget-object p2, p0, Lafb;->d:[B

    iget-wide v0, p0, Lafb;->e:J

    invoke-virtual {p1, p2, v0, v1}, Lcom/alibaba/fastjson2/ab;->b([BJ)Z

    .line 131
    :cond_2
    array-length p2, p5

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->c(I)V

    const/4 p2, 0x0

    .line 132
    :goto_0
    array-length p4, p5

    if-ge p2, p4, :cond_6

    .line 133
    aget-object p4, p5, p2

    if-nez p4, :cond_3

    .line 135
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_1

    .line 139
    :cond_3
    invoke-virtual {p0, p1}, Lafb;->b(Lcom/alibaba/fastjson2/ab;)Laem;

    move-result-object v0

    if-eqz p3, :cond_4

    .line 142
    invoke-virtual {p1, p2, p4}, Lcom/alibaba/fastjson2/ab;->b(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    if-eqz p6, :cond_4

    .line 144
    invoke-virtual {p1, p6}, Lcom/alibaba/fastjson2/ab;->f(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 150
    :cond_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lafb;->f:Ljava/lang/Class;

    const-wide/16 v5, 0x0

    move-object v1, p1

    move-object v2, p4

    invoke-interface/range {v0 .. v6}, Laem;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    if-eqz p3, :cond_5

    .line 153
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public b(Lcom/alibaba/fastjson2/ab;)Laem;
    .locals 2

    .line 36
    iget-object v0, p0, Lafb;->g:Laem;

    if-nez v0, :cond_6

    .line 38
    iget-object v0, p0, Lafb;->f:Ljava/lang/Class;

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_1

    .line 39
    iget-object p1, p0, Lafb;->h:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_0

    .line 40
    new-instance v0, Lage;

    invoke-direct {v0, p1}, Lage;-><init>(Ljava/text/DecimalFormat;)V

    goto :goto_1

    .line 42
    :cond_0
    sget-object p1, Lage;->a:Lage;

    :goto_0
    move-object v0, p1

    goto :goto_1

    .line 44
    :cond_1
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_3

    .line 45
    iget-object p1, p0, Lafb;->h:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_2

    .line 46
    new-instance v0, Lagb;

    invoke-direct {v0, p1}, Lagb;-><init>(Ljava/text/DecimalFormat;)V

    goto :goto_1

    .line 48
    :cond_2
    sget-object p1, Lagb;->a:Lagb;

    goto :goto_0

    .line 50
    :cond_3
    const-class v1, Ljava/math/BigDecimal;

    if-ne v0, v1, :cond_5

    .line 51
    iget-object p1, p0, Lafb;->h:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_4

    .line 52
    new-instance v0, Lafp;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lafp;-><init>(Ljava/text/DecimalFormat;Ljava/util/function/Function;)V

    goto :goto_1

    .line 54
    :cond_4
    sget-object p1, Lafp;->a:Lafp;

    goto :goto_0

    .line 57
    :cond_5
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Class;)Laem;

    move-result-object p1

    goto :goto_0

    .line 59
    :goto_1
    iput-object v0, p0, Lafb;->g:Laem;

    :cond_6
    return-object v0
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 8

    .line 66
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/ab;->f:Z

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual/range {p0 .. p6}, Lafb;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 72
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->s()V

    return-void

    .line 76
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->e()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 78
    iget-boolean p3, p0, Lafb;->i:Z

    .line 81
    :cond_2
    check-cast p2, [Ljava/lang/Object;

    .line 83
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->m()V

    const/4 p4, 0x0

    .line 84
    :goto_0
    array-length v0, p2

    if-ge p4, v0, :cond_7

    if-eqz p4, :cond_3

    .line 86
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->o()V

    .line 89
    :cond_3
    aget-object v0, p2, p4

    if-nez v0, :cond_4

    .line 91
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_1

    .line 94
    :cond_4
    invoke-virtual {p0, p1}, Lafb;->b(Lcom/alibaba/fastjson2/ab;)Laem;

    move-result-object v1

    if-eqz p3, :cond_5

    .line 96
    invoke-virtual {p1, p4, v0}, Lcom/alibaba/fastjson2/ab;->b(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 98
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/ab;->f(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 104
    :cond_5
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lafb;->f:Ljava/lang/Class;

    move-object v2, p1

    move-object v3, v0

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    if-eqz p3, :cond_6

    .line 107
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/Object;)V

    :cond_6
    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 110
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->n()V

    return-void
.end method

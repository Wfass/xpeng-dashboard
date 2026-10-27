.class final Lafz;
.super Lahp;
.source "ObjectWriterImplCurrency.java"


# static fields
.field static final a:Lafz;

.field static final b:Lafz;

.field static final c:[B

.field static final d:J


# instance fields
.field final e:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lafz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lafz;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lafz;->a:Lafz;

    .line 14
    new-instance v0, Lafz;

    invoke-direct {v0, v1}, Lafz;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lafz;->b:Lafz;

    .line 16
    const-class v0, Ljava/util/Currency;

    invoke-static {v0}, Labo;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson2/b;->a(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lafz;->c:[B

    .line 17
    const-class v0, Ljava/util/Currency;

    invoke-static {v0}, Labo;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lafz;->d:J

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lahp;-><init>()V

    .line 22
    iput-object p1, p0, Lafz;->e:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 28
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 32
    :cond_0
    check-cast p2, Ljava/util/Currency;

    .line 33
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->f(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lafz;->e:Ljava/lang/Class;

    if-nez p3, :cond_1

    .line 34
    sget-object p3, Lafz;->c:[B

    sget-wide p4, Lafz;->d:J

    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/ab;->b([BJ)Z

    .line 37
    :cond_1
    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 1

    .line 42
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/ab;->f:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual/range {p0 .. p6}, Lafz;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 47
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 51
    :cond_1
    check-cast p2, Ljava/util/Currency;

    .line 52
    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    return-void
.end method

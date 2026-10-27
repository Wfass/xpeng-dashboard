.class final Lahe;
.super Lahp;
.source "ObjectWriterImplOptional.java"


# static fields
.field static final a:Lahe;


# instance fields
.field b:Ljava/lang/reflect/Type;

.field c:J

.field final d:Ljava/lang/String;

.field final e:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lahe;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lahe;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lahe;->a:Lahe;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lahp;-><init>()V

    .line 28
    iput-object p1, p0, Lahe;->d:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lahe;->e:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/String;Ljava/util/Locale;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lahp;-><init>()V

    .line 33
    iput-object p1, p0, Lahe;->b:Ljava/lang/reflect/Type;

    .line 34
    iput-object p2, p0, Lahe;->d:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lahe;->e:Ljava/util/Locale;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Locale;)Lahe;
    .locals 1

    if-nez p0, :cond_0

    .line 21
    sget-object p0, Lahe;->a:Lahe;

    return-object p0

    .line 24
    :cond_0
    new-instance v0, Lahe;

    invoke-direct {v0, p0, p1}, Lahe;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 7

    if-nez p2, :cond_0

    .line 41
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 45
    :cond_0
    check-cast p2, Ljava/util/Optional;

    .line 46
    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p4

    if-nez p4, :cond_1

    .line 47
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 51
    :cond_1
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    .line 52
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Class;)Laem;

    move-result-object v0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v3, p3

    move-wide v5, p5

    .line 53
    invoke-interface/range {v0 .. v6}, Laem;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 7

    if-nez p2, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 63
    :cond_0
    check-cast p2, Ljava/util/Optional;

    .line 64
    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p4

    if-nez p4, :cond_1

    .line 65
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 69
    :cond_1
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    .line 70
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 72
    iget-object p4, p0, Lahe;->d:Ljava/lang/String;

    const/4 p5, 0x0

    if-eqz p4, :cond_2

    .line 73
    iget-object p6, p0, Lahe;->e:Ljava/util/Locale;

    invoke-static {p5, p5, p4, p6, p2}, Labq;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Class;)Laem;

    move-result-object p5

    :cond_2
    if-nez p5, :cond_3

    .line 77
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Class;)Laem;

    move-result-object p2

    move-object v0, p2

    goto :goto_0

    :cond_3
    move-object v0, p5

    .line 79
    :goto_0
    iget-object v4, p0, Lahe;->b:Ljava/lang/reflect/Type;

    iget-wide v5, p0, Lahe;->c:J

    move-object v1, p1

    move-object v3, p3

    invoke-interface/range {v0 .. v6}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void
.end method

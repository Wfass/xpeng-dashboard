.class abstract Labx;
.super Laca;
.source "FieldWriterBoolVal.java"


# direct methods
.method constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 22
    invoke-direct/range {p0 .. p10}, Laca;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    .line 29
    :try_start_0
    invoke-virtual {p0, p2}, Labx;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_0

    .line 38
    iget-wide v1, p0, Labx;->d:J

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->g()J

    move-result-wide v3

    or-long/2addr v1, v3

    .line 39
    iget-object v3, p0, Labx;->y:Ljava/lang/Object;

    if-nez v3, :cond_0

    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    return v0

    .line 44
    :cond_0
    invoke-virtual {p0, p1, p2}, Labx;->a(Lcom/alibaba/fastjson2/ab;Z)V

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    .line 31
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 34
    :cond_1
    throw p2
.end method

.class final Laac;
.super Laai;
.source "AnyOf.java"


# instance fields
.field final a:[Laai;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/e;Laai;)V
    .locals 3

    .line 17
    invoke-direct {p0, p1}, Laai;-><init>(Lcom/alibaba/fastjson2/e;)V

    const-string v0, "anyOf"

    .line 18
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/e;->c(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 19
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONArray;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result v0

    new-array v0, v0, [Laai;

    iput-object v0, p0, Laac;->a:[Laai;

    const/4 v0, 0x0

    .line 24
    :goto_0
    iget-object v1, p0, Laac;->a:[Laai;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 25
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 26
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 27
    iget-object v2, p0, Laac;->a:[Laai;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Laab;->a:Laab;

    goto :goto_1

    :cond_0
    sget-object v1, Laab;->b:Laai;

    :goto_1
    aput-object v1, v2, v0

    goto :goto_2

    .line 29
    :cond_1
    iget-object v2, p0, Laac;->a:[Laai;

    check-cast v1, Lcom/alibaba/fastjson2/e;

    invoke-static {v1, p2}, Laai;->a(Lcom/alibaba/fastjson2/e;Laai;)Laai;

    move-result-object v1

    aput-object v1, v2, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 20
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string p2, "anyOf not found"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([Laai;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0, v0}, Laai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Laac;->a:[Laai;

    return-void
.end method


# virtual methods
.method public a()Laai$b;
    .locals 1

    .line 36
    sget-object v0, Laai$b;->AnyOf:Laai$b;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Laaq;
    .locals 5

    .line 41
    iget-object v0, p0, Laac;->a:[Laai;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 42
    invoke-virtual {v3, p1}, Laai;->a(Ljava/lang/Object;)Laaq;

    move-result-object v3

    .line 43
    sget-object v4, Laac;->u:Laaq;

    if-ne v3, v4, :cond_0

    .line 44
    sget-object p1, Laac;->u:Laaq;

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 47
    :cond_1
    sget-object p1, Laac;->w:Laaq;

    return-object p1
.end method

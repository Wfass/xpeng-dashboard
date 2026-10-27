.class final Laak;
.super Laai;
.source "NullSchema.java"


# direct methods
.method constructor <init>(Lcom/alibaba/fastjson2/e;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Laai;-><init>(Lcom/alibaba/fastjson2/e;)V

    return-void
.end method


# virtual methods
.method public a()Laai$b;
    .locals 1

    .line 13
    sget-object v0, Laai$b;->Null:Laai$b;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Laaq;
    .locals 4

    if-nez p1, :cond_0

    .line 19
    sget-object p1, Laak;->u:Laaq;

    return-object p1

    .line 22
    :cond_0
    new-instance v0, Laaq;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Laai$b;->Null:Laai$b;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "expect type %s, but %s"

    invoke-direct {v0, v3, p1, v1}, Laaq;-><init>(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

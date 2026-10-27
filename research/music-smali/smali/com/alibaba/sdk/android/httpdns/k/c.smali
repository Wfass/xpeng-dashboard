.class public Lcom/alibaba/sdk/android/httpdns/k/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/httpdns/k/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x493e0

    iput v0, p0, Lcom/alibaba/sdk/android/httpdns/k/c;->a:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/httpdns/k/c;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;[I)V
    .locals 7

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->fixRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v6, Lcom/alibaba/sdk/android/httpdns/k/b;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/httpdns/k/b;-><init>(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;[I)V

    iget-object p2, p0, Lcom/alibaba/sdk/android/httpdns/k/c;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)[I
    .locals 4

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->fixRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/k/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/sdk/android/httpdns/k/b;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/k/b;->a()J

    move-result-wide v0

    iget v2, p0, Lcom/alibaba/sdk/android/httpdns/k/c;->a:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/k/b;->a()[I

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->fixRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/k/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/sdk/android/httpdns/k/b;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/k/b;->a()J

    move-result-wide v0

    iget v2, p0, Lcom/alibaba/sdk/android/httpdns/k/c;->a:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/k/b;->a()[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Ljava/lang/String;)[I
    .locals 4

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->fixRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/k/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/sdk/android/httpdns/k/b;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/k/b;->a()J

    move-result-wide v0

    iget v2, p0, Lcom/alibaba/sdk/android/httpdns/k/c;->a:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/k/b;->b()[I

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/utils/CommonUtil;->fixRegion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/k/c;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/sdk/android/httpdns/k/b;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/k/b;->a()J

    move-result-wide v0

    iget v2, p0, Lcom/alibaba/sdk/android/httpdns/k/c;->a:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/httpdns/k/b;->b()[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.class final Lcom/google/common/collect/r$b;
.super Lcom/google/common/collect/r;
.source "DiscreteDomain.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/r<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/collect/r$b;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 119
    new-instance v0, Lcom/google/common/collect/r$b;

    invoke-direct {v0}, Lcom/google/common/collect/r$b;-><init>()V

    sput-object v0, Lcom/google/common/collect/r$b;->INSTANCE:Lcom/google/common/collect/r$b;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/r;-><init>(ZLcom/google/common/collect/r$1;)V

    return-void
.end method

.method static synthetic g()Lcom/google/common/collect/r$b;
    .locals 1

    .line 118
    sget-object v0, Lcom/google/common/collect/r$b;->INSTANCE:Lcom/google/common/collect/r$b;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Comparable;Ljava/lang/Comparable;)J
    .locals 0

    .line 118
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/r$b;->a(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(Ljava/lang/Long;Ljava/lang/Long;)J
    .locals 7

    .line 149
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 150
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    const-wide/16 v3, 0x0

    if-lez v2, :cond_0

    cmp-long v2, v0, v3

    if-gez v2, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    return-wide p1

    .line 153
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long p1, v5, p1

    if-gez p1, :cond_1

    cmp-long p1, v0, v3

    if-lez p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    return-wide p1

    :cond_1
    return-wide v0
.end method

.method public bridge synthetic a(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 0

    .line 118
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/r$b;->a(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic a(Ljava/lang/Comparable;J)Ljava/lang/Comparable;
    .locals 0

    .line 118
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/collect/r$b;->a(Ljava/lang/Long;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4

    .line 127
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 128
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method a(Ljava/lang/Long;J)Ljava/lang/Long;
    .locals 4

    const-string v0, "distance"

    .line 139
    invoke-static {p2, p3, v0}, Lcom/google/common/collect/m;->a(JLjava/lang/String;)J

    .line 140
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, p2

    const-wide/16 p2, 0x0

    cmp-long v2, v0, p2

    if-gez v2, :cond_1

    .line 142
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v2, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "overflow"

    invoke-static {p1, p2}, Lcom/google/common/base/o;->a(ZLjava/lang/Object;)V

    .line 144
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .locals 0

    .line 118
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/r$b;->b(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4

    .line 133
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 134
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public synthetic c()Ljava/lang/Comparable;
    .locals 1

    .line 118
    invoke-virtual {p0}, Lcom/google/common/collect/r$b;->e()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Ljava/lang/Comparable;
    .locals 1

    .line 118
    invoke-virtual {p0}, Lcom/google/common/collect/r$b;->f()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/Long;
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    .line 161
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/Long;
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 166
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DiscreteDomain.longs()"

    return-object v0
.end method

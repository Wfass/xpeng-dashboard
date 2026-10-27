.class Labd$b;
.super Ljava/lang/Object;
.source "GuavaSupport.java"

# interfaces
.implements Laem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/lang/Class;

.field final b:Ljava/lang/String;

.field final c:J

.field final d:Ljava/util/function/Function;

.field protected e:[B


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Labd$b;->a:Ljava/lang/Class;

    .line 178
    invoke-static {p1}, Labo;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Labd$b;->b:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Labd$b;->b:Ljava/lang/String;

    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Labd$b;->c:J

    :try_start_0
    const-string v0, "asMap"

    const/4 v1, 0x0

    .line 181
    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 182
    invoke-static {p1}, Laat;->e(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p1

    iput-object p1, p0, Labd$b;->d:Ljava/util/function/Function;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 184
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "create Guava AsMapWriter error"

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 196
    invoke-virtual {p1, p2, p4, p5, p6}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 197
    iget-object p3, p0, Labd$b;->e:[B

    if-nez p3, :cond_0

    .line 198
    iget-object p3, p0, Labd$b;->b:Ljava/lang/String;

    invoke-static {p3}, Lcom/alibaba/fastjson2/b;->a(Ljava/lang/String;)[B

    move-result-object p3

    iput-object p3, p0, Labd$b;->e:[B

    .line 200
    :cond_0
    iget-object p3, p0, Labd$b;->e:[B

    iget-wide p4, p0, Labd$b;->c:J

    invoke-virtual {p1, p3, p4, p5}, Lcom/alibaba/fastjson2/ab;->b([BJ)Z

    .line 203
    :cond_1
    iget-object p3, p0, Labd$b;->d:Ljava/util/function/Function;

    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 204
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/util/Map;)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 190
    iget-object p3, p0, Labd$b;->d:Ljava/util/function/Function;

    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 191
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/util/Map;)V

    return-void
.end method

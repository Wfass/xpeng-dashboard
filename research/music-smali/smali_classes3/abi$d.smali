.class Labi$d;
.super Ljava/lang/Object;
.source "JodaSupport.java"

# interfaces
.implements Laem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field final a:Ljava/lang/Class;

.field final b:Ljava/util/function/ToIntFunction;

.field final c:Ljava/util/function/Function;

.field final d:Ljava/util/function/Function;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 3

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput-object p1, p0, Labi$d;->a:Ljava/lang/Class;

    :try_start_0
    const-string v0, "getMinimumDaysInFirstWeek"

    const/4 v1, 0x0

    .line 222
    new-array v2, v1, [Ljava/lang/Class;

    .line 223
    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 222
    invoke-static {v0}, Laat;->a(Ljava/lang/reflect/Method;)Ljava/util/function/ToIntFunction;

    move-result-object v0

    iput-object v0, p0, Labi$d;->b:Ljava/util/function/ToIntFunction;

    const-string v0, "getZone"

    .line 225
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 226
    invoke-static {p1}, Laat;->e(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object v0

    iput-object v0, p0, Labi$d;->c:Ljava/util/function/Function;

    .line 228
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "getID"

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 227
    invoke-static {p1}, Laat;->e(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p1

    iput-object p1, p0, Labi$d;->d:Ljava/util/function/Function;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 231
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "getMethod error"

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 237
    iget-object p3, p0, Labi$d;->c:Ljava/util/function/Function;

    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 238
    iget-object p4, p0, Labi$d;->d:Ljava/util/function/Function;

    invoke-interface {p4, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 240
    iget-object p4, p0, Labi$d;->b:Ljava/util/function/ToIntFunction;

    invoke-interface {p4, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p2

    .line 242
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->k()V

    const/4 p4, 0x4

    if-eq p2, p4, :cond_0

    const-string p4, "minimumDaysInFirstWeek"

    .line 244
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->d(I)V

    :cond_0
    const-string/jumbo p2, "zoneId"

    .line 247
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->l()V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 254
    iget-object p3, p0, Labi$d;->c:Ljava/util/function/Function;

    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 255
    iget-object p4, p0, Labi$d;->d:Ljava/util/function/Function;

    invoke-interface {p4, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 257
    iget-object p4, p0, Labi$d;->b:Ljava/util/function/ToIntFunction;

    invoke-interface {p4, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p2

    .line 258
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->k()V

    const-string p4, "minimumDaysInFirstWeek"

    .line 259
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->d(I)V

    const-string/jumbo p2, "zoneId"

    .line 261
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->l()V

    return-void
.end method

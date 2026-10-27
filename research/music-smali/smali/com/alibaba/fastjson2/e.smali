.class public Lcom/alibaba/fastjson2/e;
.super Ljava/util/LinkedHashMap;
.source "JSONObject.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/lang/reflect/InvocationHandler;"
    }
.end annotation


# static fields
.field static a:Lwk; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwk<",
            "Lcom/alibaba/fastjson2/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field static final b:J

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 39
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->ReferenceDetection:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->PrettyFormat:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v0, v2

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v0, v2

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v0, v2

    sput-wide v0, Lcom/alibaba/fastjson2/e;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/util/LinkedHashMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/e;
    .locals 3

    .line 1857
    new-instance v0, Lcom/alibaba/fastjson2/e;

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/e;-><init>(IF)V

    .line 1858
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/e;
    .locals 3

    .line 1876
    new-instance v0, Lcom/alibaba/fastjson2/e;

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson2/e;-><init>(IF)V

    .line 1877
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1878
    invoke-virtual {v0, p2, p3}, Lcom/alibaba/fastjson2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/e;
    .locals 2

    .line 1971
    new-instance v0, Lcom/alibaba/fastjson2/e;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/e;-><init>(I)V

    .line 1972
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1973
    invoke-virtual {v0, p2, p3}, Lcom/alibaba/fastjson2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1974
    invoke-virtual {v0, p4, p5}, Lcom/alibaba/fastjson2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1975
    invoke-virtual {v0, p6, p7}, Lcom/alibaba/fastjson2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1976
    invoke-virtual {v0, p8, p9}, Lcom/alibaba/fastjson2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private a(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 8

    .line 1622
    invoke-static {p1}, Laax;->a(Ljava/lang/reflect/AnnotatedElement;)[Ljava/lang/annotation/Annotation;

    move-result-object p1

    .line 1623
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v4, p1, v2

    .line 1624
    invoke-interface {v4}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v5

    .line 1625
    const-class v6, Lqc;

    invoke-static {v4, v6}, Laax;->a(Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lqc;

    .line 1626
    invoke-static {v6}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1627
    invoke-interface {v6}, Lqc;->b()Ljava/lang/String;

    move-result-object v3

    .line 1628
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v3, v1

    goto :goto_1

    .line 1631
    :cond_0
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.alibaba.fastjson.annotation.JSONField"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1632
    new-instance v6, Lcom/alibaba/fastjson2/e$a;

    invoke-direct {v6, v4}, Lcom/alibaba/fastjson2/e$a;-><init>(Ljava/lang/annotation/Annotation;)V

    .line 1633
    invoke-static {v5, v6}, Laax;->e(Ljava/lang/Class;Ljava/util/function/Consumer;)V

    .line 1634
    iget-object v4, v6, Lcom/alibaba/fastjson2/e$a;->b:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 1635
    iget-object v3, v6, Lcom/alibaba/fastjson2/e$a;->b:Ljava/lang/String;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public static j(Ljava/lang/String;)Lcom/alibaba/fastjson2/e;
    .locals 0

    .line 2012
    invoke-static {p0}, Lcom/alibaba/fastjson2/a;->b(Ljava/lang/String;)Lcom/alibaba/fastjson2/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)I
    .locals 2

    .line 668
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    .line 674
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 675
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    .line 678
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 679
    check-cast p1, Ljava/lang/String;

    .line 681
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 p2, 0x2e

    .line 685
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    .line 686
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    double-to-int p1, p1

    return p1

    .line 689
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_4
    :goto_0
    return p2

    .line 692
    :cond_5
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not cast \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' to int value"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a(Ljava/lang/String;J)J
    .locals 1

    .line 555
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-wide p2

    .line 561
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1

    .line 562
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    return-wide p1

    .line 565
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 566
    check-cast p1, Ljava/lang/String;

    .line 568
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 p2, 0x2e

    .line 572
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_3

    .line 573
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    double-to-long p1, p1

    return-wide p1

    .line 576
    :cond_3
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1

    :cond_4
    :goto_0
    return-wide p2

    .line 579
    :cond_5
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can not cast \'"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' to long value"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a()Lcom/alibaba/fastjson2/e;
    .locals 1

    .line 1810
    new-instance v0, Lcom/alibaba/fastjson2/e;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/e;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 95
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/u$d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/u$d;",
            ")TT;"
        }
    .end annotation

    .line 1292
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1298
    :cond_0
    const-class v1, Ljava/lang/Object;

    if-ne p2, v1, :cond_1

    array-length v1, p3

    if-nez v1, :cond_1

    return-object p1

    .line 1303
    :cond_1
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p3, v3

    .line 1304
    sget-object v5, Lcom/alibaba/fastjson2/u$d;->FieldBased:Lcom/alibaba/fastjson2/u$d;

    if-ne v4, v5, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1310
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1311
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v3

    .line 1312
    invoke-virtual {v3, v1, p2}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1314
    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1317
    :cond_4
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_5

    .line 1318
    invoke-virtual {v3, p2, v2}, Lzx;->a(Ljava/lang/reflect/Type;Z)Lwk;

    move-result-object p2

    .line 1319
    check-cast p1, Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Lwk;->a(Ljava/util/Map;[Lcom/alibaba/fastjson2/u$d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1322
    :cond_5
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_6

    .line 1323
    invoke-virtual {v3, p2, v2}, Lzx;->a(Ljava/lang/reflect/Type;Z)Lwk;

    move-result-object p2

    .line 1324
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p2, p1}, Lwk;->createInstance(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1327
    :cond_6
    invoke-static {p2}, Labo;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    .line 1328
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object p1

    .line 1334
    :cond_7
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 1335
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 1336
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "null"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_2

    .line 1340
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1341
    invoke-virtual {v3, p2, v2}, Lzx;->a(Ljava/lang/reflect/Type;Z)Lwk;

    move-result-object v0

    .line 1342
    instance-of v4, v0, Lxt;

    if-eqz v4, :cond_a

    .line 1343
    invoke-static {v1}, Labc;->b(Ljava/lang/String;)J

    move-result-wide p1

    .line 1344
    check-cast v0, Lxt;

    .line 1345
    invoke-virtual {v0, p1, p2}, Lxt;->d(J)Ljava/lang/Enum;

    move-result-object p1

    return-object p1

    :cond_9
    :goto_2
    return-object v0

    .line 1350
    :cond_a
    invoke-static {p1}, Lcom/alibaba/fastjson2/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1351
    invoke-static {p1}, Lcom/alibaba/fastjson2/u;->c(Ljava/lang/String;)Lcom/alibaba/fastjson2/u;

    move-result-object v1

    .line 1352
    iget-object v4, v1, Lcom/alibaba/fastjson2/u;->a:Lcom/alibaba/fastjson2/u$c;

    invoke-virtual {v4, p3}, Lcom/alibaba/fastjson2/u$c;->a([Lcom/alibaba/fastjson2/u$d;)V

    if-nez v0, :cond_b

    .line 1355
    invoke-virtual {v3, p2, v2}, Lzx;->a(Ljava/lang/reflect/Type;Z)Lwk;

    move-result-object v0

    :cond_b
    move-object v4, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v5, v1

    .line 1358
    invoke-interface/range {v4 .. v9}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 1359
    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u;->b()Z

    move-result p3

    if-eqz p3, :cond_c

    return-object p2

    .line 1360
    :cond_c
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not support input "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/u$d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/u$d;",
            ")TT;"
        }
    .end annotation

    .line 1378
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1384
    :cond_0
    const-class v1, Ljava/lang/Object;

    if-ne p2, v1, :cond_1

    array-length v1, p3

    if-nez v1, :cond_1

    return-object p1

    .line 1389
    :cond_1
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p3, v3

    .line 1390
    sget-object v5, Lcom/alibaba/fastjson2/u$d;->FieldBased:Lcom/alibaba/fastjson2/u$d;

    if-ne v4, v5, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1396
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1397
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v3

    .line 1398
    invoke-virtual {v3, v1, p2}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1400
    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1403
    :cond_4
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_5

    .line 1404
    invoke-virtual {v3, p2, v2}, Lzx;->a(Ljava/lang/reflect/Type;Z)Lwk;

    move-result-object p2

    .line 1405
    check-cast p1, Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Lwk;->a(Ljava/util/Map;[Lcom/alibaba/fastjson2/u$d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1408
    :cond_5
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_6

    .line 1409
    invoke-virtual {v3, p2, v2}, Lzx;->a(Ljava/lang/reflect/Type;Z)Lwk;

    move-result-object p2

    .line 1410
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p2, p1}, Lwk;->createInstance(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1413
    :cond_6
    instance-of v1, p2, Ljava/lang/Class;

    if-eqz v1, :cond_7

    .line 1414
    move-object v1, p2

    check-cast v1, Ljava/lang/Class;

    .line 1415
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object p1

    .line 1420
    :cond_7
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1421
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 1422
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "null"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    return-object v0

    .line 1427
    :cond_9
    invoke-static {p1}, Lcom/alibaba/fastjson2/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1428
    invoke-static {p1}, Lcom/alibaba/fastjson2/u;->c(Ljava/lang/String;)Lcom/alibaba/fastjson2/u;

    move-result-object v5

    .line 1429
    iget-object p1, v5, Lcom/alibaba/fastjson2/u;->a:Lcom/alibaba/fastjson2/u$c;

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/u$c;->a([Lcom/alibaba/fastjson2/u$d;)V

    .line 1431
    invoke-virtual {v3, p2, v2}, Lzx;->a(Ljava/lang/reflect/Type;Z)Lwk;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    .line 1432
    invoke-interface/range {v4 .. v9}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Lcom/alibaba/fastjson2/e;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1455
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/e;->d(Ljava/lang/String;)Lcom/alibaba/fastjson2/e;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1461
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs a(Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson2/u$d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/u$d;",
            ")TT;"
        }
    .end annotation

    .line 1184
    array-length v0, p2

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v3, v2

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v5, p2, v1

    .line 1185
    sget-object v6, Lcom/alibaba/fastjson2/u$d;->FieldBased:Lcom/alibaba/fastjson2/u$d;

    if-ne v5, v6, :cond_0

    const/4 v2, 0x1

    .line 1188
    :cond_0
    iget-wide v5, v5, Lcom/alibaba/fastjson2/u$d;->mask:J

    or-long/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1191
    :cond_1
    const-class p2, Ljava/lang/String;

    if-ne p1, p2, :cond_2

    .line 1192
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/e;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1195
    :cond_2
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object p2

    .line 1196
    invoke-virtual {p2, p1, v2}, Lzx;->a(Ljava/lang/reflect/Type;Z)Lwk;

    move-result-object p1

    .line 1197
    invoke-interface {p1, p0, v3, v4}, Lwk;->a(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 0

    .line 135
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 8

    .line 194
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 200
    :cond_0
    instance-of v2, v0, Lcom/alibaba/fastjson2/JSONArray;

    if-eqz v2, :cond_1

    .line 201
    check-cast v0, Lcom/alibaba/fastjson2/JSONArray;

    return-object v0

    .line 204
    :cond_1
    instance-of v2, v0, Lcom/alibaba/fastjson2/e;

    if-eqz v2, :cond_2

    .line 205
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object p1

    return-object p1

    .line 208
    :cond_2
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 209
    check-cast v0, Ljava/lang/String;

    .line 211
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 215
    :cond_3
    invoke-static {v0}, Lcom/alibaba/fastjson2/u;->c(Ljava/lang/String;)Lcom/alibaba/fastjson2/u;

    move-result-object v3

    .line 216
    sget-object p1, Lcom/alibaba/fastjson2/e;->a:Lwk;

    if-nez p1, :cond_4

    .line 217
    const-class p1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-virtual {v3, p1}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object p1

    sput-object p1, Lcom/alibaba/fastjson2/e;->a:Lwk;

    .line 219
    :cond_4
    sget-object v2, Lcom/alibaba/fastjson2/e;->a:Lwk;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-interface/range {v2 .. v7}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/JSONArray;

    return-object p1

    :cond_5
    :goto_0
    return-object v1

    .line 222
    :cond_6
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_7

    .line 223
    new-instance v1, Lcom/alibaba/fastjson2/JSONArray;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 224
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 228
    :cond_7
    instance-of p1, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_8

    .line 229
    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONArray;->of([Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object p1

    return-object p1

    .line 232
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 233
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 234
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    .line 235
    new-instance v1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v1, p1}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_9

    .line 237
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 238
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_9
    return-object v1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/e;->a()Lcom/alibaba/fastjson2/e;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 145
    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Character;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/util/UUID;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 150
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method

.method public d(Ljava/lang/String;)Lcom/alibaba/fastjson2/e;
    .locals 8

    .line 262
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 268
    :cond_0
    instance-of v2, v0, Lcom/alibaba/fastjson2/e;

    if-eqz v2, :cond_1

    .line 269
    check-cast v0, Lcom/alibaba/fastjson2/e;

    return-object v0

    .line 272
    :cond_1
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 273
    check-cast v0, Ljava/lang/String;

    .line 275
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 279
    :cond_2
    invoke-static {v0}, Lcom/alibaba/fastjson2/u;->c(Ljava/lang/String;)Lcom/alibaba/fastjson2/u;

    move-result-object v3

    .line 280
    sget-object v2, Lcom/alibaba/fastjson2/d;->K:Lwk;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-interface/range {v2 .. v7}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/e;

    return-object p1

    :cond_3
    :goto_0
    return-object v1

    .line 283
    :cond_4
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_5

    .line 284
    new-instance v1, Lcom/alibaba/fastjson2/e;

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/e;-><init>(Ljava/util/Map;)V

    .line 285
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 289
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 290
    invoke-static {}, Lcom/alibaba/fastjson2/d;->d()Lahq;

    move-result-object v2

    invoke-virtual {v2, p1}, Lahq;->b(Ljava/lang/Class;)Laem;

    move-result-object p1

    .line 291
    instance-of v2, p1, Laez;

    if-eqz v2, :cond_6

    .line 292
    check-cast p1, Laez;

    .line 293
    invoke-virtual {p1, v0}, Laez;->b(Ljava/lang/Object;)Lcom/alibaba/fastjson2/e;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v1
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 306
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 312
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 313
    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 316
    :cond_1
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 317
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const/4 p1, 0x0

    .line 318
    sget-object v2, Laay;->a:Ljava/time/ZoneId;

    invoke-static {v0, v1, p1, v2}, Laay;->a(JZLjava/time/ZoneId;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 321
    :cond_2
    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/lang/Character;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/util/UUID;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/lang/Enum;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/time/temporal/TemporalAccessor;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 330
    :cond_3
    invoke-static {p1}, Lcom/alibaba/fastjson2/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 327
    :cond_4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    .line 478
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 484
    :cond_0
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 485
    check-cast p1, Ljava/lang/Long;

    return-object p1

    .line 488
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 489
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 492
    :cond_2
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 493
    check-cast p1, Ljava/lang/String;

    .line 495
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "null"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x2e

    .line 499
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 500
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 503
    :cond_4
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    return-object v0

    .line 506
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not cast \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' to Long"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g(Ljava/lang/String;)J
    .locals 3

    .line 518
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 524
    :cond_0
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_1

    .line 525
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 528
    :cond_1
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 529
    check-cast p1, Ljava/lang/String;

    .line 531
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "null"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x2e

    .line 535
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 536
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0

    .line 539
    :cond_3
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_4
    :goto_0
    return-wide v0

    .line 542
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not cast \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' to long value"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 106
    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Character;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/util/UUID;

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 117
    :cond_1
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 171
    instance-of v0, p1, Ljava/lang/Number;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Character;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/util/UUID;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 177
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 176
    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;)Z
    .locals 3

    .line 886
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 892
    :cond_0
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 893
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 896
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 897
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_2

    move v0, v2

    :cond_2
    return v0

    .line 900
    :cond_3
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 901
    check-cast p1, Ljava/lang/String;

    const-string v1, "true"

    .line 902
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    move v0, v2

    :cond_5
    return v0

    .line 905
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not cast \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' to boolean value"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i(Ljava/lang/String;)Ljava/math/BigDecimal;
    .locals 3

    .line 989
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 995
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_5

    .line 996
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_1

    .line 997
    check-cast p1, Ljava/math/BigDecimal;

    return-object p1

    .line 1000
    :cond_1
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_2

    .line 1001
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p1, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    .line 1004
    :cond_2
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 1005
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 1006
    invoke-static {p1}, Labo;->a(F)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 1009
    :cond_3
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 1010
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 1011
    invoke-static {v0, v1}, Labo;->a(D)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 1014
    :cond_4
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 1015
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 1018
    :cond_5
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 1019
    check-cast p1, Ljava/lang/String;

    .line 1020
    invoke-static {p1}, Labo;->b(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 1023
    :cond_6
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 1024
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    goto :goto_0

    :cond_7
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    :goto_0
    return-object p1

    .line 1027
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not cast \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' to BigDecimal"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1474
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1475
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result v1

    .line 1477
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v6, "This method \'"

    const/4 v7, 0x0

    if-ne v1, v5, :cond_8

    const-string v1, "equals"

    .line 1479
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1480
    aget-object p1, p3, v7

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 1484
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 1485
    array-length v8, v1

    if-ne v8, v5, :cond_1

    .line 1486
    aget-object v1, v1, v7

    goto :goto_0

    :cond_1
    move-object v1, v4

    .line 1489
    :goto_0
    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v9, "\' is not a setter"

    if-eq v2, v8, :cond_3

    if-ne v2, v1, :cond_2

    goto :goto_1

    .line 1490
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1493
    :cond_3
    :goto_1
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_6

    const-string p2, "set"

    .line 1498
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1502
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 1503
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 1506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 1504
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\' is an illegal setter"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1499
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1509
    :cond_6
    :goto_2
    aget-object p3, p3, v7

    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson2/e;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    sget-object p2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v2, p2, :cond_7

    return-object p1

    :cond_7
    return-object v4

    :cond_8
    if-nez v1, :cond_1a

    .line 1519
    sget-object p3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v1, "\' is not a getter"

    if-eq v2, p3, :cond_19

    .line 1523
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_16

    const-string p3, "get"

    .line 1530
    invoke-virtual {v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    const-string v8, "\' is an illegal getter"

    if-nez p3, :cond_9

    const-string p3, "with"

    invoke-virtual {v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_d

    goto :goto_3

    :cond_9
    move p3, v7

    .line 1531
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz p3, :cond_a

    const/4 v3, 0x4

    :cond_a
    if-le v9, v3, :cond_d

    .line 1533
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v3

    new-array p1, p1, [C

    .line 1534
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {v0, v3, p3, p1, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 1535
    aget-char p3, p1, v7

    const/16 v1, 0x41

    if-lt p3, v1, :cond_b

    aget-char p3, p1, v7

    const/16 v1, 0x5a

    if-gt p3, v1, :cond_b

    .line 1536
    aget-char p3, p1, v7

    add-int/lit8 p3, p3, 0x20

    int-to-char p3, p3

    aput-char p3, p1, v7

    .line 1538
    :cond_b
    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p1}, Ljava/lang/String;-><init>([C)V

    .line 1539
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    .line 1543
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_17

    return-object v4

    .line 1540
    :cond_c
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    const-string p3, "is"

    .line 1547
    invoke-virtual {v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_10

    const-string p1, "isEmpty"

    .line 1548
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const-string p1, "empty"

    .line 1549
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_17

    .line 1551
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/e;->isEmpty()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_e
    const/4 p1, 0x2

    .line 1554
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1555
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_f

    .line 1558
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1560
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_17

    .line 1562
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 1556
    :cond_f
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_10
    const-string p3, "hashCode"

    .line 1565
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_11

    .line 1566
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/e;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_11
    const-string p3, "toString"

    .line 1567
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 1568
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/e;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_12
    const-string p3, "entrySet"

    .line 1569
    invoke-virtual {v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_13

    .line 1570
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/e;->entrySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    :cond_13
    const-string p3, "size"

    .line 1571
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_14

    .line 1572
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/e;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 1574
    :cond_14
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p3

    .line 1575
    invoke-virtual {p3}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1576
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v3

    if-nez v3, :cond_15

    sget-boolean v3, Labf;->r:Z

    if-nez v3, :cond_15

    sget-boolean v3, Labf;->s:Z

    if-nez v3, :cond_15

    .line 1581
    invoke-static {p3}, Labf;->b(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    .line 1584
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    .line 1585
    invoke-static {v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 1582
    invoke-virtual {v0, p3, p2, v1, p3}, Ljava/lang/invoke/MethodHandles$Lookup;->findSpecial(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object p2

    .line 1588
    invoke-polymorphic {p2, p1}, Ljava/lang/invoke/MethodHandle;->invoke([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1590
    :cond_15
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1593
    :cond_16
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_17

    return-object v4

    .line 1599
    :cond_17
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_18

    .line 1601
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object p3

    .line 1603
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object p2

    .line 1602
    invoke-virtual {p3, v0, p2}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object p2

    if-eqz p2, :cond_18

    .line 1607
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_18
    return-object p1

    .line 1520
    :cond_19
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1614
    :cond_1a
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->toGenericString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1105
    invoke-static {}, Lcom/alibaba/fastjson2/ab;->i()Lcom/alibaba/fastjson2/ab;

    move-result-object v0

    .line 1106
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;)V

    .line 1107
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/ab;->a(Lcom/alibaba/fastjson2/e;)V

    .line 1108
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 1109
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/ab;->close()V

    :cond_0
    return-object v1

    :catch_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 1105
    :try_start_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

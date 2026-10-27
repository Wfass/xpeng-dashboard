.class public Lcom/alibaba/fastjson2/JSONArray;
.super Ljava/util/ArrayList;
.source "JSONArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field static arrayWriter:Laem; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laem<",
            "Lcom/alibaba/fastjson2/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 1

    .line 59
    array-length v0, p1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static copyOf(Ljava/util/Collection;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 1

    .line 1416
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static from(Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 0

    .line 1503
    invoke-static {p0}, Lcom/alibaba/fastjson2/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/JSONArray;

    return-object p0
.end method

.method public static varargs from(Ljava/lang/Object;[Lcom/alibaba/fastjson2/ab$b;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 0

    .line 1510
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/a;->b(Ljava/lang/Object;[Lcom/alibaba/fastjson2/ab$b;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/fastjson2/JSONArray;

    return-object p0
.end method

.method public static of(Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 2

    .line 1402
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 1403
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 2

    .line 1430
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 1431
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1432
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 2

    .line 1448
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    .line 1449
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1450
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1451
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static varargs of([Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 1

    .line 1389
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONArray;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs parse(Ljava/lang/String;[Lcom/alibaba/fastjson2/u$d;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 0

    .line 1484
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/a;->a(Ljava/lang/String;[Lcom/alibaba/fastjson2/u$d;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseArray(Ljava/lang/String;[Lcom/alibaba/fastjson2/u$d;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 0

    .line 1462
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/a;->a(Ljava/lang/String;[Lcom/alibaba/fastjson2/u$d;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object p0

    return-object p0
.end method

.method public static parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1496
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/a;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parseArray(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/u$d;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/u$d;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1473
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson2/a;->a(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson2/u$d;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson2/ab$b;)Ljava/lang/String;
    .locals 0

    .line 943
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/a;->a(Ljava/lang/Object;[Lcom/alibaba/fastjson2/ab$b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addArray()Lcom/alibaba/fastjson2/JSONArray;
    .locals 1

    .line 1298
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 1299
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public addObject()Lcom/alibaba/fastjson2/e;
    .locals 1

    .line 1292
    new-instance v0, Lcom/alibaba/fastjson2/e;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/e;-><init>()V

    .line 1293
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 1376
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONArray;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public fluentAdd(Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 0

    .line 1313
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public fluentAddAll(Ljava/util/Collection;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Lcom/alibaba/fastjson2/JSONArray;"
        }
    .end annotation

    .line 1361
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public fluentClear()Lcom/alibaba/fastjson2/JSONArray;
    .locals 0

    .line 1321
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONArray;->clear()V

    return-object p0
.end method

.method public fluentRemove(I)Lcom/alibaba/fastjson2/JSONArray;
    .locals 0

    .line 1329
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->remove(I)Ljava/lang/Object;

    return-object p0
.end method

.method public fluentRemove(Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 0

    .line 1345
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public fluentRemoveAll(Ljava/util/Collection;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Lcom/alibaba/fastjson2/JSONArray;"
        }
    .end annotation

    .line 1353
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->removeAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public fluentSet(ILjava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;
    .locals 0

    .line 1337
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONArray;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public getBigDecimal(I)Ljava/math/BigDecimal;
    .locals 3

    .line 780
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 786
    :cond_0
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_5

    .line 787
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_1

    .line 788
    check-cast p1, Ljava/math/BigDecimal;

    return-object p1

    .line 791
    :cond_1
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_2

    .line 792
    new-instance v0, Ljava/math/BigDecimal;

    check-cast p1, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    .line 795
    :cond_2
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 796
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 797
    invoke-static {p1}, Labo;->a(F)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 800
    :cond_3
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 801
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 802
    invoke-static {v0, v1}, Labo;->a(D)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 805
    :cond_4
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 806
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 809
    :cond_5
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 810
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Labo;->b(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 813
    :cond_6
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_8

    .line 814
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

    .line 817
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

.method public getBigInteger(I)Ljava/math/BigInteger;
    .locals 3

    .line 738
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 744
    :cond_0
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 745
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_1

    .line 746
    check-cast p1, Ljava/math/BigInteger;

    return-object p1

    .line 749
    :cond_1
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_2

    .line 750
    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 753
    :cond_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 754
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 757
    :cond_3
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 758
    check-cast p1, Ljava/lang/String;

    .line 760
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "null"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 764
    :cond_4
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-object v0

    .line 767
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not cast \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' to BigInteger"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBoolean(I)Ljava/lang/Boolean;
    .locals 4

    .line 670
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 676
    :cond_0
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 677
    check-cast p1, Ljava/lang/Boolean;

    return-object p1

    .line 680
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 681
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_2

    move v2, v3

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 684
    :cond_3
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 685
    check-cast p1, Ljava/lang/String;

    .line 687
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "null"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const-string v0, "true"

    .line 691
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    move v2, v3

    :cond_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_7
    :goto_0
    return-object v0

    .line 694
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not cast \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' to Boolean"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBooleanValue(I)Z
    .locals 3

    .line 706
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 712
    :cond_0
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 713
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 716
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 717
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_2

    move v0, v2

    :cond_2
    return v0

    .line 720
    :cond_3
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 721
    check-cast p1, Ljava/lang/String;

    const-string v1, "true"

    .line 722
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

    .line 725
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

.method public getByte(I)Ljava/lang/Byte;
    .locals 3

    .line 605
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 611
    :cond_0
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 612
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 615
    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 616
    check-cast p1, Ljava/lang/String;

    .line 618
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 622
    :cond_2
    invoke-static {p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    return-object v0

    .line 625
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not cast \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' to Byte"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getByteValue(I)B
    .locals 3

    .line 638
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 644
    :cond_0
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 645
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    return p1

    .line 648
    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 649
    check-cast p1, Ljava/lang/String;

    .line 651
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 655
    :cond_2
    invoke-static {p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0

    .line 658
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not cast \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' to byte value"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDate(I)Ljava/util/Date;
    .locals 5

    .line 828
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 834
    :cond_0
    instance-of v1, p1, Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 835
    check-cast p1, Ljava/util/Date;

    return-object p1

    .line 838
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 839
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    return-object v0

    .line 843
    :cond_2
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object p1

    .line 846
    :cond_3
    invoke-static {p1}, Labo;->a(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public getDate(ILjava/util/Date;)Ljava/util/Date;
    .locals 0

    .line 853
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->getDate(I)Ljava/util/Date;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p1, p2

    :cond_0
    return-object p1
.end method

.method public getDouble(I)Ljava/lang/Double;
    .locals 3

    .line 257
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 263
    :cond_0
    instance-of v1, p1, Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 264
    check-cast p1, Ljava/lang/Double;

    return-object p1

    .line 267
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 268
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 271
    :cond_2
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 272
    check-cast p1, Ljava/lang/String;

    .line 274
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 278
    :cond_3
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    return-object v0

    .line 281
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not cast \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' to Double"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDoubleValue(I)D
    .locals 3

    .line 294
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 300
    :cond_0
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_1

    .line 301
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 304
    :cond_1
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 305
    check-cast p1, Ljava/lang/String;

    .line 307
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "null"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 311
    :cond_2
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    :cond_3
    :goto_0
    return-wide v0

    .line 314
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not cast \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' to double value"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFloat(I)Ljava/lang/Float;
    .locals 3

    .line 327
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 333
    :cond_0
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 334
    check-cast p1, Ljava/lang/Float;

    return-object p1

    .line 337
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 338
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 341
    :cond_2
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 342
    check-cast p1, Ljava/lang/String;

    .line 344
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 348
    :cond_3
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    return-object v0

    .line 351
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not cast \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' to Float"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFloatValue(I)F
    .locals 3

    .line 364
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 370
    :cond_0
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 371
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    return p1

    .line 374
    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 375
    check-cast p1, Ljava/lang/String;

    .line 377
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 381
    :cond_2
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0

    .line 384
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not cast \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' to float value"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInstant(I)Ljava/time/Instant;
    .locals 5

    .line 868
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 874
    :cond_0
    instance-of v1, p1, Ljava/time/Instant;

    if-eqz v1, :cond_1

    .line 875
    check-cast p1, Ljava/time/Instant;

    return-object p1

    .line 878
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 879
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    return-object v0

    .line 883
    :cond_2
    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    return-object p1

    .line 886
    :cond_3
    invoke-static {p1}, Labo;->b(Ljava/lang/Object;)Ljava/time/Instant;

    move-result-object p1

    return-object p1
.end method

.method public getIntValue(I)I
    .locals 3

    .line 502
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 508
    :cond_0
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 509
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1

    .line 512
    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 513
    check-cast p1, Ljava/lang/String;

    .line 515
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 519
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0

    .line 522
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not cast \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' to int value"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getInteger(I)Ljava/lang/Integer;
    .locals 3

    .line 466
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 471
    :cond_0
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 472
    check-cast p1, Ljava/lang/Integer;

    return-object p1

    .line 475
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 476
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 479
    :cond_2
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 480
    check-cast p1, Ljava/lang/String;

    .line 482
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 486
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    return-object v0

    .line 489
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not cast \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' to Integer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getJSONArray(I)Lcom/alibaba/fastjson2/JSONArray;
    .locals 8

    .line 121
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 127
    :cond_0
    instance-of v2, v0, Lcom/alibaba/fastjson2/JSONArray;

    if-eqz v2, :cond_1

    .line 128
    check-cast v0, Lcom/alibaba/fastjson2/JSONArray;

    return-object v0

    .line 131
    :cond_1
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 132
    check-cast v0, Ljava/lang/String;

    .line 134
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 138
    :cond_2
    invoke-static {v0}, Lcom/alibaba/fastjson2/u;->c(Ljava/lang/String;)Lcom/alibaba/fastjson2/u;

    move-result-object v3

    .line 139
    sget-object v2, Lcom/alibaba/fastjson2/d;->J:Lwk;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-interface/range {v2 .. v7}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/fastjson2/JSONArray;

    return-object p1

    :cond_3
    :goto_0
    return-object v1

    .line 142
    :cond_4
    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_5

    .line 143
    new-instance v1, Lcom/alibaba/fastjson2/JSONArray;

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 144
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson2/JSONArray;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 148
    :cond_5
    instance-of p1, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_6

    .line 149
    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONArray;->of([Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object p1

    return-object p1

    .line 152
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 154
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    .line 155
    new-instance v1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v1, p1}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_7

    .line 157
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 158
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    return-object v1
.end method

.method public getJSONObject(I)Lcom/alibaba/fastjson2/e;
    .locals 8

    .line 175
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 181
    :cond_0
    instance-of v2, v0, Lcom/alibaba/fastjson2/e;

    if-eqz v2, :cond_1

    .line 182
    check-cast v0, Lcom/alibaba/fastjson2/e;

    return-object v0

    .line 185
    :cond_1
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 186
    check-cast v0, Ljava/lang/String;

    .line 188
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 192
    :cond_2
    invoke-static {v0}, Lcom/alibaba/fastjson2/u;->c(Ljava/lang/String;)Lcom/alibaba/fastjson2/u;

    move-result-object v3

    .line 193
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

    .line 196
    :cond_4
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_5

    .line 197
    new-instance v1, Lcom/alibaba/fastjson2/e;

    check-cast v0, Ljava/util/Map;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/e;-><init>(Ljava/util/Map;)V

    .line 198
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson2/JSONArray;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 202
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 203
    invoke-static {}, Lcom/alibaba/fastjson2/d;->d()Lahq;

    move-result-object v2

    invoke-virtual {v2, p1}, Lahq;->b(Ljava/lang/Class;)Laem;

    move-result-object p1

    .line 204
    instance-of v2, p1, Laez;

    if-eqz v2, :cond_6

    .line 205
    check-cast p1, Laez;

    .line 206
    invoke-virtual {p1, v0}, Laez;->b(Ljava/lang/Object;)Lcom/alibaba/fastjson2/e;

    move-result-object p1

    return-object p1

    :cond_6
    return-object v1
.end method

.method public getLong(I)Ljava/lang/Long;
    .locals 3

    .line 397
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 402
    :cond_0
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 403
    check-cast p1, Ljava/lang/Long;

    return-object p1

    .line 406
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 407
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 410
    :cond_2
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 411
    check-cast p1, Ljava/lang/String;

    .line 413
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 417
    :cond_3
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    return-object v0

    .line 420
    :cond_5
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

.method public getLongValue(I)J
    .locals 3

    .line 433
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 439
    :cond_0
    instance-of v2, p1, Ljava/lang/Number;

    if-eqz v2, :cond_1

    .line 440
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 443
    :cond_1
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 444
    check-cast p1, Ljava/lang/String;

    .line 446
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "null"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 450
    :cond_2
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_3
    :goto_0
    return-wide v0

    .line 453
    :cond_4
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

.method public varargs getObject(ILjava/lang/Class;[Lcom/alibaba/fastjson2/u$d;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/u$d;",
            ")TT;"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    .line 1207
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/fastjson2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 1213
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 1214
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v5

    .line 1215
    invoke-virtual {v5, v4, v0}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1218
    invoke-interface {v4, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    const-wide/16 v6, 0x0

    .line 1223
    array-length v4, v1

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v8, v4, :cond_3

    aget-object v10, v1, v8

    .line 1224
    iget-wide v11, v10, Lcom/alibaba/fastjson2/u$d;->mask:J

    or-long/2addr v6, v11

    .line 1225
    sget-object v11, Lcom/alibaba/fastjson2/u$d;->FieldBased:Lcom/alibaba/fastjson2/u$d;

    if-ne v10, v11, :cond_2

    const/4 v9, 0x1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1230
    :cond_3
    instance-of v4, v2, Ljava/util/Map;

    if-eqz v4, :cond_4

    .line 1231
    invoke-virtual {v5, v0, v9}, Lzx;->a(Ljava/lang/reflect/Type;Z)Lwk;

    move-result-object v0

    .line 1232
    check-cast v2, Ljava/util/Map;

    invoke-interface {v0, v2, v6, v7}, Lwk;->a(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1235
    :cond_4
    instance-of v4, v2, Ljava/util/Collection;

    if-eqz v4, :cond_5

    .line 1236
    invoke-virtual {v5, v0, v9}, Lzx;->a(Ljava/lang/reflect/Type;Z)Lwk;

    move-result-object v0

    .line 1237
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Lwk;->createInstance(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1240
    :cond_5
    invoke-static/range {p2 .. p2}, Labo;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 1241
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    return-object v2

    .line 1247
    :cond_6
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 1248
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 1249
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "null"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_1

    .line 1253
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1254
    invoke-virtual {v5, v0, v9}, Lzx;->a(Ljava/lang/reflect/Type;Z)Lwk;

    move-result-object v3

    .line 1255
    instance-of v6, v3, Lxt;

    if-eqz v6, :cond_9

    .line 1256
    invoke-static {v4}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 1257
    check-cast v3, Lxt;

    .line 1258
    invoke-virtual {v3, v0, v1}, Lxt;->d(J)Ljava/lang/Enum;

    move-result-object v0

    return-object v0

    :cond_8
    :goto_1
    return-object v3

    .line 1263
    :cond_9
    invoke-static {v2}, Lcom/alibaba/fastjson2/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1264
    invoke-static {v2}, Lcom/alibaba/fastjson2/u;->c(Ljava/lang/String;)Lcom/alibaba/fastjson2/u;

    move-result-object v4

    .line 1265
    iget-object v6, v4, Lcom/alibaba/fastjson2/u;->a:Lcom/alibaba/fastjson2/u$c;

    invoke-virtual {v6, v1}, Lcom/alibaba/fastjson2/u$c;->a([Lcom/alibaba/fastjson2/u$d;)V

    if-nez v3, :cond_a

    .line 1268
    invoke-virtual {v5, v0, v9}, Lzx;->a(Ljava/lang/reflect/Type;Z)Lwk;

    move-result-object v3

    :cond_a
    move-object v10, v3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move-object v11, v4

    .line 1271
    invoke-interface/range {v10 .. v15}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 1272
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/u;->b()Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 1273
    :cond_b
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support input "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs getObject(ILjava/lang/reflect/Type;[Lcom/alibaba/fastjson2/u$d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson2/u$d;",
            ")TT;"
        }
    .end annotation

    .line 1148
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1154
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1155
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v1

    .line 1156
    invoke-virtual {v1, v0, p2}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1159
    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide/16 v2, 0x0

    .line 1164
    array-length v0, p3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_3

    aget-object v6, p3, v4

    .line 1165
    iget-wide v7, v6, Lcom/alibaba/fastjson2/u$d;->mask:J

    or-long/2addr v2, v7

    .line 1166
    sget-object v7, Lcom/alibaba/fastjson2/u$d;->FieldBased:Lcom/alibaba/fastjson2/u$d;

    if-ne v6, v7, :cond_2

    const/4 v5, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1171
    :cond_3
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 1172
    invoke-virtual {v1, p2, v5}, Lzx;->a(Ljava/lang/reflect/Type;Z)Lwk;

    move-result-object p2

    .line 1173
    check-cast p1, Ljava/util/Map;

    invoke-interface {p2, p1, v2, v3}, Lwk;->a(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1176
    :cond_4
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_5

    .line 1177
    invoke-virtual {v1, p2, v5}, Lzx;->a(Ljava/lang/reflect/Type;Z)Lwk;

    move-result-object p2

    .line 1178
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p2, p1}, Lwk;->createInstance(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1181
    :cond_5
    invoke-static {p2}, Labo;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    .line 1182
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return-object p1

    .line 1186
    :cond_6
    invoke-static {p1}, Lcom/alibaba/fastjson2/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1187
    invoke-static {p1}, Lcom/alibaba/fastjson2/u;->c(Ljava/lang/String;)Lcom/alibaba/fastjson2/u;

    move-result-object v7

    .line 1188
    iget-object p1, v7, Lcom/alibaba/fastjson2/u;->a:Lcom/alibaba/fastjson2/u$c;

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/u$c;->a([Lcom/alibaba/fastjson2/u$d;)V

    .line 1190
    invoke-virtual {v1, p2, v5}, Lzx;->a(Ljava/lang/reflect/Type;Z)Lwk;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    .line 1191
    invoke-interface/range {v6 .. v11}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getObject(ILjava/util/function/Function;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/function/Function<",
            "Lcom/alibaba/fastjson2/e;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1282
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson2/e;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1288
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getShort(I)Ljava/lang/Short;
    .locals 3

    .line 535
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 541
    :cond_0
    instance-of v1, p1, Ljava/lang/Short;

    if-eqz v1, :cond_1

    .line 542
    check-cast p1, Ljava/lang/Short;

    return-object p1

    .line 545
    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 546
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    .line 549
    :cond_2
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 550
    check-cast p1, Ljava/lang/String;

    .line 552
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 556
    :cond_3
    invoke-static {p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    return-object v0

    .line 559
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not cast \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' to Short"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getShortValue(I)S
    .locals 3

    .line 572
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 578
    :cond_0
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 579
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    return p1

    .line 582
    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 583
    check-cast p1, Ljava/lang/String;

    .line 585
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 589
    :cond_2
    invoke-static {p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0

    .line 592
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not cast \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' to short value"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3

    .line 220
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 226
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 227
    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 230
    :cond_1
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 231
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const/4 p1, 0x0

    .line 232
    sget-object v2, Laay;->a:Ljava/time/ZoneId;

    invoke-static {v0, v1, p1, v2}, Laay;->a(JZLjava/time/ZoneId;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 235
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

    .line 244
    :cond_3
    invoke-static {p1}, Lcom/alibaba/fastjson2/a;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 241
    :cond_4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isValid(Laai;)Z
    .locals 0

    .line 1370
    invoke-virtual {p1, p0}, Laai;->a(Ljava/lang/Object;)Laaq;

    move-result-object p1

    .line 1371
    invoke-virtual {p1}, Laaq;->a()Z

    move-result p1

    return p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 84
    invoke-super {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gez p1, :cond_1

    add-int/2addr p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 89
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v1

    .line 92
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    if-ge p1, v0, :cond_2

    .line 98
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit16 v2, v0, 0x1000

    if-ge p1, v2, :cond_4

    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-eq p1, v0, :cond_3

    .line 106
    invoke-super {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move p1, v2

    goto :goto_0

    .line 108
    :cond_3
    invoke-super {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v1
.end method

.method public to(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 987
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_0

    .line 988
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 991
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    .line 992
    invoke-virtual {v0, p1}, Lzx;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object p1

    .line 993
    invoke-interface {p1, p0}, Lwk;->createInstance(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public to(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 973
    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_0

    .line 974
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 977
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    .line 978
    invoke-virtual {v0, p1}, Lzx;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object p1

    .line 979
    invoke-interface {p1, p0}, Lwk;->createInstance(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs toArray(Ljava/lang/Class;[Lcom/alibaba/fastjson2/u$d;)[Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/u$d;",
            ")[TT;"
        }
    .end annotation

    .line 1081
    array-length v0, p2

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v6, p2, v2

    .line 1082
    iget-wide v7, v6, Lcom/alibaba/fastjson2/u$d;->mask:J

    or-long/2addr v4, v7

    .line 1083
    sget-object v7, Lcom/alibaba/fastjson2/u$d;->FieldBased:Lcom/alibaba/fastjson2/u$d;

    if-ne v6, v7, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1088
    :cond_1
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object p2

    .line 1089
    invoke-virtual {p2, p1, v3}, Lzx;->a(Ljava/lang/reflect/Type;Z)Lwk;

    move-result-object v0

    .line 1091
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 1092
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 1093
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1096
    instance-of v6, v3, Lcom/alibaba/fastjson2/e;

    if-eqz v6, :cond_2

    .line 1097
    check-cast v3, Ljava/util/Map;

    invoke-interface {v0, v3, v4, v5}, Lwk;->a(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    .line 1098
    :cond_2
    instance-of v6, v3, Ljava/util/Map;

    if-eqz v6, :cond_3

    .line 1099
    check-cast v3, Ljava/util/Map;

    invoke-interface {v0, v3, v4, v5}, Lwk;->a(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_6

    .line 1100
    invoke-virtual {p1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    .line 1103
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 1104
    invoke-virtual {p2, v6, p1}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 1106
    invoke-interface {v7, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1107
    aput-object v3, v2, v1

    goto :goto_3

    .line 1111
    :cond_5
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cannot be converted to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1115
    :cond_6
    :goto_2
    aput-object v3, v2, v1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    return-object v2
.end method

.method public varargs toJSONBBytes([Lcom/alibaba/fastjson2/ab$b;)[B
    .locals 1

    .line 953
    invoke-static {p1}, Lcom/alibaba/fastjson2/ab;->b([Lcom/alibaba/fastjson2/ab$b;)Lcom/alibaba/fastjson2/ab;

    move-result-object p1

    .line 954
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;)V

    .line 955
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/ab;->b(Ljava/util/List;)V

    .line 956
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->v()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 957
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->close()V

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_1

    .line 953
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method

.method public varargs toJSONString([Lcom/alibaba/fastjson2/ab$b;)Ljava/lang/String;
    .locals 0

    .line 932
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->toString([Lcom/alibaba/fastjson2/ab$b;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs toJavaList(Ljava/lang/Class;[Lcom/alibaba/fastjson2/u$d;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/u$d;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1129
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONArray;->toList(Ljava/lang/Class;[Lcom/alibaba/fastjson2/u$d;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public toJavaObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1004
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONArray;->to(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs toList(Ljava/lang/Class;[Lcom/alibaba/fastjson2/u$d;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson2/u$d;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1024
    array-length v0, p2

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v4, v2

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v6, p2, v2

    .line 1025
    iget-wide v7, v6, Lcom/alibaba/fastjson2/u$d;->mask:J

    or-long/2addr v4, v7

    .line 1026
    sget-object v7, Lcom/alibaba/fastjson2/u$d;->FieldBased:Lcom/alibaba/fastjson2/u$d;

    if-ne v6, v7, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1031
    :cond_1
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object p2

    .line 1032
    invoke-virtual {p2, p1, v3}, Lzx;->a(Ljava/lang/reflect/Type;Z)Lwk;

    move-result-object v0

    .line 1034
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1035
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 1036
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1039
    instance-of v6, v3, Lcom/alibaba/fastjson2/e;

    if-eqz v6, :cond_2

    .line 1040
    check-cast v3, Ljava/util/Map;

    invoke-interface {v0, v3, v4, v5}, Lwk;->a(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    .line 1041
    :cond_2
    instance-of v6, v3, Ljava/util/Map;

    if-eqz v6, :cond_3

    .line 1042
    check-cast v3, Ljava/util/Map;

    invoke-interface {v0, v3, v4, v5}, Lwk;->a(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_6

    .line 1043
    invoke-virtual {p1, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_2

    .line 1046
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 1047
    invoke-virtual {p2, v6, p1}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 1049
    invoke-interface {v7, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1050
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1054
    :cond_5
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cannot be converted to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1058
    :cond_6
    :goto_2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 896
    invoke-static {}, Lcom/alibaba/fastjson2/ab;->i()Lcom/alibaba/fastjson2/ab;

    move-result-object v0

    .line 897
    :try_start_0
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;)V

    .line 898
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson2/ab;->b(Ljava/util/List;)V

    .line 899
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 900
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/ab;->close()V

    :cond_0
    return-object v1

    :catch_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 896
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

.method public varargs toString([Lcom/alibaba/fastjson2/ab$b;)Ljava/lang/String;
    .locals 7

    .line 911
    invoke-static {p1}, Lcom/alibaba/fastjson2/ab;->a([Lcom/alibaba/fastjson2/ab$b;)Lcom/alibaba/fastjson2/ab;

    move-result-object p1

    .line 912
    :try_start_0
    iget-object v0, p1, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$a;->l:J

    sget-wide v2, Lcom/alibaba/fastjson2/e;->b:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 913
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/ab;->b(Ljava/util/List;)V

    goto :goto_0

    .line 915
    :cond_0
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;)V

    .line 916
    sget-object v0, Lcom/alibaba/fastjson2/JSONArray;->arrayWriter:Laem;

    if-nez v0, :cond_1

    .line 917
    const-class v0, Lcom/alibaba/fastjson2/JSONArray;

    const-class v1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laem;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson2/JSONArray;->arrayWriter:Laem;

    .line 919
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson2/JSONArray;->arrayWriter:Laem;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p1

    move-object v2, p0

    invoke-interface/range {v0 .. v6}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    .line 921
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    .line 922
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->close()V

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    if-eqz p1, :cond_3

    .line 911
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v0
.end method

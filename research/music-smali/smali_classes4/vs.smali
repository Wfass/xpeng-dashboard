.class Lvs;
.super Lvw;
.source "FieldReaderMapFieldReadOnly.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lvw<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Laai;Ljava/lang/reflect/Field;)V
    .locals 11

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 15
    invoke-direct/range {v0 .. v10}, Lvw;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/lang/Object;Laai;Ljava/lang/reflect/Field;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 45
    :cond_0
    :try_start_0
    iget-object v0, p0, Lvs;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    if-eq p1, v0, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util.Collections$UnmodifiableMap"

    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 59
    :cond_2
    check-cast p2, Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 47
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lvs;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 82
    :try_start_0
    iget-object v0, p0, Lvs;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 84
    :catch_0
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "set "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lvs;->b:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " error"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "TT;)V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lvs;->y:Lwk;

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v0

    iget-object v1, p0, Lvs;->d:Ljava/lang/reflect/Type;

    .line 100
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v0

    iput-object v0, p0, Lvs;->y:Lwk;

    .line 104
    :cond_0
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/u;->b:Z

    if-eqz v0, :cond_1

    .line 105
    iget-object v1, p0, Lvs;->y:Lwk;

    iget-object v3, p0, Lvs;->d:Ljava/lang/reflect/Type;

    iget-object v4, p0, Lvs;->b:Ljava/lang/String;

    iget-wide v5, p0, Lvs;->e:J

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lwk;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lvs;->y:Lwk;

    iget-object v2, p0, Lvs;->d:Ljava/lang/reflect/Type;

    iget-object v3, p0, Lvs;->b:Ljava/lang/String;

    iget-wide v4, p0, Lvs;->e:J

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 110
    :goto_0
    invoke-virtual {p0, p2, p1}, Lvs;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/alibaba/fastjson2/u;)Lwk;
    .locals 2

    .line 20
    iget-object v0, p0, Lvs;->v:Lwk;

    if-eqz v0, :cond_0

    .line 21
    iget-object p1, p0, Lvs;->v:Lwk;

    return-object p1

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Lvs;->a(Lcom/alibaba/fastjson2/u;)Lwk;

    move-result-object v0

    .line 25
    instance-of v1, v0, Lyw;

    if-eqz v1, :cond_1

    .line 26
    sget-object p1, Lzm;->a:Lzm;

    iput-object p1, p0, Lvs;->v:Lwk;

    return-object p1

    .line 29
    :cond_1
    instance-of v1, v0, Lza;

    if-eqz v1, :cond_2

    .line 30
    check-cast v0, Lza;

    iget-object v0, v0, Lza;->d:Ljava/lang/reflect/Type;

    .line 31
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object p1

    iput-object p1, p0, Lvs;->v:Lwk;

    return-object p1

    .line 34
    :cond_2
    sget-object p1, Lze;->a:Lze;

    return-object p1
.end method

.method public c(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V
    .locals 7

    .line 66
    :try_start_0
    iget-object v0, p0, Lvs;->h:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->K()Ljava/lang/String;

    move-result-object v6

    .line 73
    invoke-virtual {p0, p1}, Lvs;->c(Lcom/alibaba/fastjson2/u;)Lwk;

    move-result-object v0

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p1

    move-object v3, v6

    .line 74
    invoke-interface/range {v0 .. v5}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 75
    invoke-interface {p2, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception p2

    .line 68
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lvs;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

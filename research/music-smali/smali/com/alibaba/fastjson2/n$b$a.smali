.class Lcom/alibaba/fastjson2/n$b$a;
.super Ljava/lang/Object;
.source "JSONPathSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/n$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/alibaba/fastjson2/g$a;

.field final synthetic b:Lcom/alibaba/fastjson2/n$b;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/n$b;Lcom/alibaba/fastjson2/g$a;)V
    .locals 0

    .line 1306
    iput-object p1, p0, Lcom/alibaba/fastjson2/n$b$a;->b:Lcom/alibaba/fastjson2/n$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1307
    iput-object p2, p0, Lcom/alibaba/fastjson2/n$b$a;->a:Lcom/alibaba/fastjson2/g$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 5

    .line 1311
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1312
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1313
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1314
    iget-object v2, p0, Lcom/alibaba/fastjson2/n$b$a;->b:Lcom/alibaba/fastjson2/n$b;

    iget-object v2, v2, Lcom/alibaba/fastjson2/n$b;->c:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1315
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 1316
    iget-object v0, p0, Lcom/alibaba/fastjson2/n$b$a;->a:Lcom/alibaba/fastjson2/g$a;

    iput-boolean v1, v0, Lcom/alibaba/fastjson2/g$a;->h:Z

    goto :goto_0

    .line 1318
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1320
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/n$b$a;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 1324
    :cond_2
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_3

    .line 1325
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1326
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson2/n$b$a;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 1329
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1330
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v2

    invoke-virtual {v2, v0}, Lzx;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v2

    .line 1331
    instance-of v3, v2, Lwz;

    if-eqz v3, :cond_4

    .line 1332
    iget-object v3, p0, Lcom/alibaba/fastjson2/n$b$a;->b:Lcom/alibaba/fastjson2/n$b;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/n$b;->d:J

    invoke-interface {v2, v3, v4}, Lwk;->b(J)Lsu;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    .line 1334
    invoke-virtual {v2, p1, v0}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1335
    iget-object p1, p0, Lcom/alibaba/fastjson2/n$b$a;->a:Lcom/alibaba/fastjson2/g$a;

    iput-boolean v1, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 1340
    :cond_4
    invoke-static {}, Lcom/alibaba/fastjson2/d;->d()Lahq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lahq;->b(Ljava/lang/Class;)Laem;

    move-result-object v0

    .line 1341
    invoke-interface {v0}, Laem;->e_()Ljava/util/List;

    move-result-object v0

    .line 1342
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labq;

    .line 1343
    invoke-virtual {v1, p1}, Labq;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1344
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/n$b$a;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    return-void
.end method

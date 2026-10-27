.class final Lcom/alibaba/fastjson2/n$e;
.super Lcom/alibaba/fastjson2/n;
.source "JSONPathSegment.java"

# interfaces
.implements Lcom/alibaba/fastjson2/n$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "e"
.end annotation


# static fields
.field static final a:Lcom/alibaba/fastjson2/n$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1888
    new-instance v0, Lcom/alibaba/fastjson2/n$e;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/n$e;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/n$e;->a:Lcom/alibaba/fastjson2/n$e;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1885
    invoke-direct {p0}, Lcom/alibaba/fastjson2/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/g$a;)V
    .locals 2

    .line 1908
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    if-nez v0, :cond_0

    .line 1909
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    goto :goto_0

    .line 1910
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-object v0, v0, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 1911
    :goto_0
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 1912
    new-instance v1, Lcom/alibaba/fastjson2/JSONArray;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>(Ljava/util/Collection;)V

    iput-object v1, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 1913
    iput-boolean v0, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 1917
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string v0, "TODO"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/alibaba/fastjson2/u;Lcom/alibaba/fastjson2/g$a;)V
    .locals 2

    .line 1892
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1893
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->E()V

    .line 1894
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 1895
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->o()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1896
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->J()Ljava/lang/String;

    move-result-object v1

    .line 1897
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1898
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->P()V

    goto :goto_0

    .line 1900
    :cond_0
    iput-object v0, p2, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    return-void

    .line 1903
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string p2, "TODO"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

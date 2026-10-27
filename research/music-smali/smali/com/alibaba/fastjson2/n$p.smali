.class final Lcom/alibaba/fastjson2/n$p;
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
    name = "p"
.end annotation


# static fields
.field static final a:Lcom/alibaba/fastjson2/n$p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1856
    new-instance v0, Lcom/alibaba/fastjson2/n$p;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/n$p;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/n$p;->a:Lcom/alibaba/fastjson2/n$p;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1853
    invoke-direct {p0}, Lcom/alibaba/fastjson2/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/g$a;)V
    .locals 3

    .line 1865
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    if-nez v0, :cond_0

    .line 1866
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    goto :goto_0

    .line 1867
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-object v0, v0, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1870
    iput-object v0, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 1871
    iput-boolean v1, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 1875
    :cond_1
    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 1876
    new-instance v2, Lcom/alibaba/fastjson2/JSONArray;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>(Ljava/util/Collection;)V

    iput-object v2, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    .line 1877
    iput-boolean v1, p1, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 1881
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string v0, "TODO"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/alibaba/fastjson2/u;Lcom/alibaba/fastjson2/g$a;)V
    .locals 0

    .line 1860
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson2/n$p;->a(Lcom/alibaba/fastjson2/g$a;)V

    return-void
.end method

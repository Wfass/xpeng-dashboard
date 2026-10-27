.class abstract Lcom/alibaba/fastjson2/n;
.super Ljava/lang/Object;
.source "JSONPathSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/n$c;,
        Lcom/alibaba/fastjson2/n$e;,
        Lcom/alibaba/fastjson2/n$p;,
        Lcom/alibaba/fastjson2/n$f;,
        Lcom/alibaba/fastjson2/n$o;,
        Lcom/alibaba/fastjson2/n$g;,
        Lcom/alibaba/fastjson2/n$h;,
        Lcom/alibaba/fastjson2/n$b;,
        Lcom/alibaba/fastjson2/n$m;,
        Lcom/alibaba/fastjson2/n$n;,
        Lcom/alibaba/fastjson2/n$a;,
        Lcom/alibaba/fastjson2/n$j;,
        Lcom/alibaba/fastjson2/n$i;,
        Lcom/alibaba/fastjson2/n$l;,
        Lcom/alibaba/fastjson2/n$k;,
        Lcom/alibaba/fastjson2/n$d;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/alibaba/fastjson2/g$a;)V
.end method

.method public abstract a(Lcom/alibaba/fastjson2/u;Lcom/alibaba/fastjson2/g$a;)V
.end method

.method public b(Lcom/alibaba/fastjson2/g$a;Ljava/lang/Object;)V
    .locals 1

    .line 41
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UnsupportedOperation "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Lcom/alibaba/fastjson2/g$a;)Z
    .locals 2

    .line 37
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnsupportedOperation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Lcom/alibaba/fastjson2/g$a;)Z
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/n;->a(Lcom/alibaba/fastjson2/g$a;)V

    .line 33
    iget-object p1, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

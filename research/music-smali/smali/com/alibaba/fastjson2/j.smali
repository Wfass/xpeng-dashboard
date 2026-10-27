.class abstract Lcom/alibaba/fastjson2/j;
.super Lcom/alibaba/fastjson2/n;
.source "JSONPathFilter.java"

# interfaces
.implements Lcom/alibaba/fastjson2/n$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/j$h;,
        Lcom/alibaba/fastjson2/j$k;,
        Lcom/alibaba/fastjson2/j$g;,
        Lcom/alibaba/fastjson2/j$e;,
        Lcom/alibaba/fastjson2/j$l;,
        Lcom/alibaba/fastjson2/j$o;,
        Lcom/alibaba/fastjson2/j$p;,
        Lcom/alibaba/fastjson2/j$m;,
        Lcom/alibaba/fastjson2/j$c;,
        Lcom/alibaba/fastjson2/j$q;,
        Lcom/alibaba/fastjson2/j$f;,
        Lcom/alibaba/fastjson2/j$b;,
        Lcom/alibaba/fastjson2/j$a;,
        Lcom/alibaba/fastjson2/j$s;,
        Lcom/alibaba/fastjson2/j$n;,
        Lcom/alibaba/fastjson2/j$d;,
        Lcom/alibaba/fastjson2/j$i;,
        Lcom/alibaba/fastjson2/j$j;,
        Lcom/alibaba/fastjson2/j$r;
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/alibaba/fastjson2/n;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/alibaba/fastjson2/j;->a:Z

    return-void
.end method


# virtual methods
.method public a(Z)Lcom/alibaba/fastjson2/j;
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/j;->a:Z

    return-object p0
.end method

.method public a()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/j;->a:Z

    return v0
.end method

.method abstract a(Lcom/alibaba/fastjson2/g$a;Ljava/lang/Object;)Z
.end method

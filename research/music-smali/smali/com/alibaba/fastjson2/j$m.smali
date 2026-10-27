.class final Lcom/alibaba/fastjson2/j$m;
.super Lcom/alibaba/fastjson2/j$f;
.source "JSONPathFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "m"
.end annotation


# instance fields
.field final a:Lcom/alibaba/fastjson2/j$r;

.field final b:Lcom/alibaba/fastjson2/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;J[Ljava/lang/String;[JLjava/util/function/Function;Lcom/alibaba/fastjson2/j$r;Lcom/alibaba/fastjson2/e;)V
    .locals 0

    .line 803
    invoke-direct/range {p0 .. p6}, Lcom/alibaba/fastjson2/j$f;-><init>(Ljava/lang/String;J[Ljava/lang/String;[JLjava/util/function/Function;)V

    .line 804
    iput-object p7, p0, Lcom/alibaba/fastjson2/j$m;->a:Lcom/alibaba/fastjson2/j$r;

    .line 805
    iput-object p8, p0, Lcom/alibaba/fastjson2/j$m;->b:Lcom/alibaba/fastjson2/e;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Z
    .locals 2

    .line 810
    iget-object v0, p0, Lcom/alibaba/fastjson2/j$m;->a:Lcom/alibaba/fastjson2/j$r;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson2/j$r;->EQ:Lcom/alibaba/fastjson2/j$r;

    if-ne v0, v1, :cond_0

    .line 811
    iget-object v0, p0, Lcom/alibaba/fastjson2/j$m;->b:Lcom/alibaba/fastjson2/e;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/e;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 813
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "not support operator : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/fastjson2/j$m;->a:Lcom/alibaba/fastjson2/j$r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

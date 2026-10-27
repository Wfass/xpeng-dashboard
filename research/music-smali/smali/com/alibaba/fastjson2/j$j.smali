.class final Lcom/alibaba/fastjson2/j$j;
.super Lcom/alibaba/fastjson2/j$f;
.source "JSONPathFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "j"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;J[Ljava/lang/String;[JLjava/util/function/Function;)V
    .locals 0

    .line 109
    invoke-direct/range {p0 .. p6}, Lcom/alibaba/fastjson2/j$f;-><init>(Ljava/lang/String;J[Ljava/lang/String;[JLjava/util/function/Function;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/alibaba/fastjson2/j$j;->g:Ljava/util/function/Function;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/alibaba/fastjson2/j$j;->g:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

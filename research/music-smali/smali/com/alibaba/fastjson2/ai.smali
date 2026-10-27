.class Lcom/alibaba/fastjson2/ai;
.super Lcom/alibaba/fastjson2/ah;
.source "JSONWriterUTF8JDK9.java"


# direct methods
.method constructor <init>(Lcom/alibaba/fastjson2/ab$a;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson2/ah;-><init>(Lcom/alibaba/fastjson2/ab$a;)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/ai;->r()V

    return-void

    .line 18
    :cond_0
    sget-object v0, Labf;->B:Ljava/util/function/ToIntFunction;

    invoke-interface {v0, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    .line 19
    sget-object v1, Labf;->C:Ljava/util/function/Function;

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-nez v0, :cond_1

    .line 22
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ai;->f([B)V

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/ai;->g([B)V

    :goto_0
    return-void
.end method

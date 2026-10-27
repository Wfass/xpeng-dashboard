.class public Lags;
.super Lahp;
.source "ObjectWriterImplJSONP.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lahp<",
        "Lcom/alibaba/fastjson2/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lahp;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 13
    invoke-virtual {p1, p5, p6}, Lcom/alibaba/fastjson2/ab;->c(J)J

    move-result-wide p3

    .line 14
    sget-object p5, Lcom/alibaba/fastjson2/ab$b;->BrowserSecure:Lcom/alibaba/fastjson2/ab$b;

    iget-wide p5, p5, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr p3, p5

    const-wide/16 p5, 0x0

    cmp-long p3, p3, p5

    if-eqz p3, :cond_0

    const-string p3, "/**/"

    .line 16
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/String;)V

    .line 19
    :cond_0
    check-cast p2, Lcom/alibaba/fastjson2/f;

    .line 20
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/f;->getFunction()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/String;)V

    const/16 p3, 0x28

    .line 21
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/ab;->c(C)V

    .line 22
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/f;->getParameters()Ljava/util/List;

    move-result-object p2

    const/4 p3, 0x0

    .line 23
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_2

    if-eqz p3, :cond_1

    const/16 p4, 0x2c

    .line 25
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/ab;->c(C)V

    .line 27
    :cond_1
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/ab;->h(Ljava/lang/Object;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    const/16 p2, 0x29

    .line 29
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->c(C)V

    return-void
.end method

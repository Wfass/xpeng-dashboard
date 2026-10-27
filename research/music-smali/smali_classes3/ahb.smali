.class final Lahb;
.super Lahp;
.source "ObjectWriterImplMapEntry.java"


# static fields
.field static final a:Lahb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lahb;

    invoke-direct {v0}, Lahb;-><init>()V

    sput-object v0, Lahb;->a:Lahb;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lahp;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 14
    check-cast p2, Ljava/util/Map$Entry;

    if-nez p2, :cond_0

    .line 16
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    :cond_0
    const/4 p3, 0x2

    .line 20
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/ab;->c(I)V

    .line 21
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/ab;->h(Ljava/lang/Object;)V

    .line 22
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->h(Ljava/lang/Object;)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 27
    check-cast p2, Ljava/util/Map$Entry;

    if-nez p2, :cond_0

    .line 29
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->k()V

    .line 34
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/ab;->h(Ljava/lang/Object;)V

    .line 35
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->p()V

    .line 36
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->h(Ljava/lang/Object;)V

    .line 37
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->l()V

    return-void
.end method

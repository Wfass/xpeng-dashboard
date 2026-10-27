.class final Lxe;
.super Lzw;
.source "ObjectReaderImplBigDecimal.java"


# static fields
.field static final a:Lxe;


# instance fields
.field final b:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/math/BigDecimal;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/function/Function;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lxe;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lxe;-><init>(Ljava/util/function/Function;)V

    sput-object v0, Lxe;->a:Lxe;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/math/BigDecimal;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 19
    const-class v0, Ljava/math/BigDecimal;

    invoke-direct {p0, v0}, Lzw;-><init>(Ljava/lang/Class;)V

    .line 13
    new-instance v0, Lrj;

    invoke-direct {v0}, Lrj;-><init>()V

    iput-object v0, p0, Lxe;->c:Ljava/util/function/Function;

    .line 20
    iput-object p1, p0, Lxe;->b:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->ai()Ljava/math/BigDecimal;

    move-result-object p1

    .line 26
    iget-object p2, p0, Lxe;->b:Ljava/util/function/Function;

    if-eqz p2, :cond_0

    .line 27
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public a(Ljava/util/Map;J)Ljava/lang/Object;
    .locals 0

    const-string p2, "value"

    .line 43
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "$numberDecimal"

    .line 45
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 48
    :cond_0
    instance-of p1, p2, Ljava/math/BigDecimal;

    if-nez p1, :cond_1

    .line 49
    iget-object p1, p0, Lxe;->c:Ljava/util/function/Function;

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 52
    :cond_1
    check-cast p2, Ljava/math/BigDecimal;

    .line 53
    iget-object p1, p0, Lxe;->b:Ljava/util/function/Function;

    if-eqz p1, :cond_2

    .line 54
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 34
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->ai()Ljava/math/BigDecimal;

    move-result-object p1

    .line 35
    iget-object p2, p0, Lxe;->b:Ljava/util/function/Function;

    if-eqz p2, :cond_0

    .line 36
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

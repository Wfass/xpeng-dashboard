.class final Lvq;
.super Lvv;
.source "FieldReaderLocalDate.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/util/function/BiConsumer;)V
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p13}, Lvv;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/util/function/BiConsumer;)V

    .line 30
    invoke-static {p7, p8}, Lys;->a(Ljava/lang/String;Ljava/util/Locale;)Lys;

    move-result-object p1

    iput-object p1, p0, Lvq;->y:Lwk;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u$c;)Lwk;
    .locals 0

    .line 40
    iget-object p1, p0, Lvq;->y:Lwk;

    return-object p1
.end method

.method public a(Lcom/alibaba/fastjson2/u;)Lwk;
    .locals 0

    .line 35
    iget-object p1, p0, Lvq;->y:Lwk;

    return-object p1
.end method

.method public b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lvq;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lvq;->y:Lwk;

    invoke-interface {v0, p1}, Lwk;->a(Lcom/alibaba/fastjson2/u;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/time/LocalDate;

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->ak()Ljava/time/LocalDate;

    move-result-object p1

    .line 51
    :goto_0
    invoke-virtual {p0, p2, p1}, Lvq;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

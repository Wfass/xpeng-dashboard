.class final Lwb;
.super Lvv;
.source "FieldReaderStringArray.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/util/function/BiConsumer;)V
    .locals 0

    .line 28
    invoke-direct/range {p0 .. p13}, Lvv;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/util/function/BiConsumer;)V

    .line 29
    sget-object p1, Lzn;->a:Lzn;

    iput-object p1, p0, Lwb;->y:Lwk;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u$c;)Lwk;
    .locals 0

    .line 39
    iget-object p1, p0, Lwb;->y:Lwk;

    return-object p1
.end method

.method public a(Lcom/alibaba/fastjson2/u;)Lwk;
    .locals 0

    .line 34
    iget-object p1, p0, Lwb;->y:Lwk;

    return-object p1
.end method

.method public b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aO()[Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-virtual {p0, p2, p1}, Lwb;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

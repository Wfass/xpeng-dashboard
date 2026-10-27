.class Lzk;
.super Lzw;
.source "ObjectReaderImplOptionalLong.java"


# static fields
.field static final a:Lzk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lzk;

    invoke-direct {v0}, Lzk;-><init>()V

    sput-object v0, Lzk;->a:Lzk;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    const-class v0, Ljava/util/OptionalLong;

    invoke-direct {p0, v0}, Lzw;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->ab()Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    .line 20
    invoke-static {}, Ljava/util/OptionalLong;->empty()Ljava/util/OptionalLong;

    move-result-object p1

    return-object p1

    .line 22
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/util/OptionalLong;->of(J)Ljava/util/OptionalLong;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->ab()Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    .line 29
    invoke-static {}, Ljava/util/OptionalLong;->empty()Ljava/util/OptionalLong;

    move-result-object p1

    return-object p1

    .line 31
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/util/OptionalLong;->of(J)Ljava/util/OptionalLong;

    move-result-object p1

    return-object p1
.end method

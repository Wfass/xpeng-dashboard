.class Lyi;
.super Lzw;
.source "ObjectReaderImplInt64.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzw<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lyi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lyi;

    invoke-direct {v0}, Lyi;-><init>()V

    sput-object v0, Lyi;->a:Lyi;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 12
    const-class v0, Ljava/lang/Long;

    invoke-direct {p0, v0}, Lzw;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual/range {p0 .. p5}, Lyi;->d(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Long;
    .locals 0

    .line 17
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->ab()Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public e(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Long;
    .locals 0

    .line 22
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->ab()Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public synthetic readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual/range {p0 .. p5}, Lyi;->e(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

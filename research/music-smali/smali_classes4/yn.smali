.class Lyn;
.super Lzw;
.source "ObjectReaderImplInteger.java"


# static fields
.field static final a:Lyn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lyn;

    invoke-direct {v0}, Lyn;-><init>()V

    sput-object v0, Lyn;->a:Lyn;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lzw;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->V()Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->V()Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

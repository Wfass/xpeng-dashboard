.class Lzo;
.super Lzw;
.source "ObjectReaderImplUUID.java"


# static fields
.field static final a:Lzo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lzo;

    invoke-direct {v0}, Lzo;-><init>()V

    sput-object v0, Lzo;->a:Lzo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    const-class v0, Ljava/util/UUID;

    invoke-direct {p0, v0}, Lzw;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aj()Ljava/util/UUID;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aj()Ljava/util/UUID;

    move-result-object p1

    return-object p1
.end method

.class Lxq;
.super Lzw;
.source "ObjectReaderImplDouble.java"


# static fields
.field static final a:Lxq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lxq;

    invoke-direct {v0}, Lxq;-><init>()V

    sput-object v0, Lxq;->a:Lxq;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 12
    const-class v0, Ljava/lang/Double;

    invoke-direct {p0, v0}, Lzw;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->af()Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->af()Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

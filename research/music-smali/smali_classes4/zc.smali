.class Lzc;
.super Lzw;
.source "ObjectReaderImplNumber.java"


# static fields
.field static final a:Lzc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lzc;

    invoke-direct {v0}, Lzc;-><init>()V

    sput-object v0, Lzc;->a:Lzc;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    const-class v0, Ljava/lang/Number;

    invoke-direct {p0, v0}, Lzw;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->ag()Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->ag()Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

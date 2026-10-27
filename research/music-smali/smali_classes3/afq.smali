.class final Lafq;
.super Lahp;
.source "ObjectWriterImplBitSet.java"


# static fields
.field static final a:Lafq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lafq;

    invoke-direct {v0}, Lafq;-><init>()V

    sput-object v0, Lafq;->a:Lafq;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lahp;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 19
    :cond_0
    check-cast p2, Ljava/util/BitSet;

    .line 21
    invoke-virtual {p2}, Ljava/util/BitSet;->toByteArray()[B

    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a([B)V

    return-void
.end method

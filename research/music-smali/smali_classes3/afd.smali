.class final Lafd;
.super Ljava/lang/Object;
.source "ObjectWriterBigInteger.java"

# interfaces
.implements Laem;


# static fields
.field static final a:Lafd;


# instance fields
.field final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 10
    new-instance v0, Lafd;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lafd;-><init>(J)V

    sput-object v0, Lafd;->a:Lafd;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lafd;->b:J

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 21
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->t()V

    return-void

    .line 24
    :cond_0
    check-cast p2, Ljava/math/BigInteger;

    invoke-virtual {p1, p2, p5, p6}, Lcom/alibaba/fastjson2/ab;->b(Ljava/math/BigInteger;J)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->t()V

    return-void

    .line 33
    :cond_0
    check-cast p2, Ljava/math/BigInteger;

    invoke-virtual {p1, p2, p5, p6}, Lcom/alibaba/fastjson2/ab;->b(Ljava/math/BigInteger;J)V

    return-void
.end method

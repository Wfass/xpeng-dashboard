.class public final Lxg;
.super Lzw;
.source "ObjectReaderImplBitSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzw<",
        "Ljava/util/BitSet;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lxg;

.field public static final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lxg;

    invoke-direct {v0}, Lxg;-><init>()V

    sput-object v0, Lxg;->a:Lxg;

    const-string v0, "BitSet"

    .line 15
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lxg;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    const-class v0, Ljava/util/BitSet;

    invoke-direct {p0, v0}, Lzw;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(J)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-super {p0, p1, p2}, Lzw;->a(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual/range {p0 .. p5}, Lxg;->d(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/util/BitSet;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/util/BitSet;
    .locals 0

    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->g()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/16 p2, -0x6e

    .line 26
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/u;->a(B)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 27
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->G()J

    move-result-wide p2

    .line 28
    sget-wide p4, Lxg;->b:J

    cmp-long p2, p2, p4

    if-nez p2, :cond_1

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aS()Ljava/lang/String;

    move-result-object p2

    .line 30
    new-instance p3, Lcom/alibaba/fastjson2/c;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p3

    .line 34
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->S()[B

    move-result-object p1

    .line 35
    invoke-static {p1}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d_()Ljava/lang/Class;
    .locals 1

    .line 11
    invoke-super {p0}, Lzw;->d_()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/util/BitSet;
    .locals 0

    .line 40
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->g()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->S()[B

    move-result-object p1

    .line 45
    invoke-static {p1}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object p1

    return-object p1
.end method

.method public synthetic readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual/range {p0 .. p5}, Lxg;->e(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/util/BitSet;

    move-result-object p1

    return-object p1
.end method

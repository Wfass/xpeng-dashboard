.class public final Lxj;
.super Lzw;
.source "ObjectReaderImplByte.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lzw<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Lxj;

.field public static final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lxj;

    invoke-direct {v0}, Lxj;-><init>()V

    sput-object v0, Lxj;->a:Lxj;

    const-string v0, "B"

    .line 12
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lxj;->b:J

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 15
    const-class v0, Ljava/lang/Byte;

    invoke-direct {p0, v0}, Lzw;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(J)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-super {p0, p1, p2}, Lzw;->a(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual/range {p0 .. p5}, Lxj;->d(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Byte;
    .locals 0

    .line 20
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->V()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 24
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->byteValue()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d_()Ljava/lang/Class;
    .locals 1

    .line 8
    invoke-super {p0}, Lzw;->d_()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Byte;
    .locals 0

    .line 29
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->V()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 33
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->byteValue()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public synthetic readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-virtual/range {p0 .. p5}, Lxj;->e(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

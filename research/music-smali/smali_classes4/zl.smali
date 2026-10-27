.class public final Lzl;
.super Lzw;
.source "ObjectReaderImplShort.java"


# static fields
.field static final a:Lzl;

.field public static final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lzl;

    invoke-direct {v0}, Lzl;-><init>()V

    sput-object v0, Lzl;->a:Lzl;

    const-string v0, "S"

    .line 12
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lzl;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    const-class v0, Ljava/lang/Short;

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

.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->V()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 24
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->shortValue()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

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

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->V()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 33
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->shortValue()S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1
.end method

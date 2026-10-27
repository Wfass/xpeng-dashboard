.class public Lzu;
.super Ljava/lang/Object;
.source "ObjectReaderMisc.java"

# interfaces
.implements Lwk;


# static fields
.field static final a:J

.field static final b:J


# instance fields
.field private final c:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "address"

    .line 13
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lzu;->a:J

    const-string v0, "port"

    .line 14
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lzu;->b:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lzu;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 2

    .line 24
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->g()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    return-object p3

    .line 28
    :cond_0
    iget-object p2, p0, Lzu;->c:Ljava/lang/Class;

    const-class p4, Ljava/net/InetSocketAddress;

    if-ne p2, p4, :cond_4

    const/4 p2, 0x0

    .line 32
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->m()Z

    .line 33
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->o()Z

    move-result p4

    if-nez p4, :cond_3

    .line 34
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->H()J

    move-result-wide p4

    .line 35
    sget-wide v0, Lzu;->a:J

    cmp-long v0, p4, v0

    if-nez v0, :cond_1

    .line 36
    const-class p3, Ljava/net/InetAddress;

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/net/InetAddress;

    goto :goto_0

    .line 37
    :cond_1
    sget-wide v0, Lzu;->b:J

    cmp-long p4, p4, v0

    if-nez p4, :cond_2

    .line 38
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->V()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->P()V

    goto :goto_0

    .line 43
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->x()Z

    .line 44
    new-instance p1, Ljava/net/InetSocketAddress;

    invoke-direct {p1, p3, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object p1

    .line 47
    :cond_4
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "not support : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lzu;->c:Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2
.end method

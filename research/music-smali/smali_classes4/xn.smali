.class final Lxn;
.super Lzw;
.source "ObjectReaderImplClass.java"


# static fields
.field static final a:Lxn;

.field static final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lxn;

    invoke-direct {v0}, Lxn;-><init>()V

    sput-object v0, Lxn;->a:Lxn;

    const-string v0, "java.lang.Class"

    .line 14
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lxn;->b:J

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 17
    const-class v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lzw;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 4

    const/16 v0, -0x6e

    .line 22
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u;->a(B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->G()J

    move-result-wide v0

    .line 24
    sget-wide v2, Lxn;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "not support autoType : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aS()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2

    .line 28
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p5}, Lxn;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 6

    .line 33
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->F()J

    move-result-wide v1

    .line 35
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object p2

    .line 36
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/u$c;->c()Lcom/alibaba/fastjson2/u$a;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 38
    const-class v3, Ljava/lang/Class;

    move-object v0, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson2/u$a;->apply(JLjava/lang/Class;J)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aS()Ljava/lang/String;

    move-result-object v0

    .line 41
    const-class v1, Ljava/lang/Class;

    invoke-interface {p3, v0, v1, p4, p5}, Lcom/alibaba/fastjson2/u$a;->apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    .line 49
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aS()Ljava/lang/String;

    move-result-object p3

    .line 50
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/u$c;->i()J

    move-result-wide v0

    or-long/2addr p4, v0

    sget-object v0, Lcom/alibaba/fastjson2/u$d;->SupportClassForName:Lcom/alibaba/fastjson2/u$d;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr p4, v0

    const-wide/16 v0, 0x0

    cmp-long p4, p4, v0

    if-eqz p4, :cond_2

    const/4 p4, 0x1

    goto :goto_0

    :cond_2
    const/4 p4, 0x0

    :goto_0
    if-eqz p4, :cond_5

    .line 56
    invoke-static {p3}, Labo;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p4

    if-eqz p4, :cond_3

    return-object p4

    .line 61
    :cond_3
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/u$c;->b()Lzx;

    move-result-object p2

    const/4 p4, 0x0

    .line 62
    sget-object p5, Lcom/alibaba/fastjson2/u$d;->SupportAutoType:Lcom/alibaba/fastjson2/u$d;

    iget-wide v0, p5, Lcom/alibaba/fastjson2/u$d;->mask:J

    invoke-virtual {p2, p3, p4, v0, v1}, Lzx;->b(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_4

    return-object p2

    .line 64
    :cond_4
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "class not found "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2

    .line 52
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "not support ClassForName : "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", you can config \'JSONReader.Feature.SupportClassForName\'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 53
    new-instance p2, Lcom/alibaba/fastjson2/c;

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2
.end method

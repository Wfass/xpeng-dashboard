.class final Laaj;
.super Laai;
.source "Not.java"


# instance fields
.field final a:Laai;

.field final b:[Laai$b;

.field final c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Laai;[Laai$b;Ljava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, v0, v0}, Laai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Laaj;->a:Laai;

    .line 20
    iput-object p2, p0, Laaj;->b:[Laai$b;

    .line 21
    iput-object p3, p0, Laaj;->c:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public a()Laai$b;
    .locals 1

    .line 26
    sget-object v0, Laai$b;->AllOf:Laai$b;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Laaq;
    .locals 5

    .line 31
    iget-object v0, p0, Laaj;->a:Laai;

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0, p1}, Laai;->a(Ljava/lang/Object;)Laaq;

    move-result-object v0

    invoke-virtual {v0}, Laaq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    sget-object p1, Laaj;->y:Laaq;

    return-object p1

    .line 37
    :cond_0
    iget-object v0, p0, Laaj;->b:[Laai$b;

    if-eqz v0, :cond_5

    .line 38
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 39
    sget-object v4, Laaj$1;->a:[I

    invoke-virtual {v3}, Laai$b;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    .line 86
    :pswitch_0
    sget-object p1, Laaj;->y:Laaq;

    return-object p1

    .line 81
    :pswitch_1
    instance-of v3, p1, Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    .line 82
    sget-object p1, Laaj;->y:Laaq;

    return-object p1

    .line 73
    :pswitch_2
    instance-of v3, p1, Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 74
    sget-object p1, Laaj;->y:Laaq;

    return-object p1

    :cond_1
    if-eqz p1, :cond_4

    .line 76
    sget-object v3, Laai;->t:Lcom/alibaba/fastjson2/u$c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v3

    instance-of v3, v3, Lwz;

    if-eqz v3, :cond_4

    .line 77
    sget-object p1, Laaj;->y:Laaq;

    return-object p1

    .line 68
    :pswitch_3
    instance-of v3, p1, [Ljava/lang/Object;

    if-nez v3, :cond_2

    instance-of v3, p1, Ljava/util/Collection;

    if-nez v3, :cond_2

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 69
    :cond_2
    sget-object p1, Laaj;->y:Laaq;

    return-object p1

    :pswitch_4
    if-nez p1, :cond_4

    .line 64
    sget-object p1, Laaj;->y:Laaq;

    return-object p1

    .line 58
    :pswitch_5
    instance-of v3, p1, Ljava/lang/Number;

    if-eqz v3, :cond_4

    .line 59
    sget-object p1, Laaj;->y:Laaq;

    return-object p1

    .line 46
    :pswitch_6
    instance-of v3, p1, Ljava/lang/Byte;

    if-nez v3, :cond_3

    instance-of v3, p1, Ljava/lang/Short;

    if-nez v3, :cond_3

    instance-of v3, p1, Ljava/lang/Integer;

    if-nez v3, :cond_3

    instance-of v3, p1, Ljava/lang/Long;

    if-nez v3, :cond_3

    instance-of v3, p1, Ljava/math/BigInteger;

    if-nez v3, :cond_3

    instance-of v3, p1, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v3, :cond_3

    instance-of v3, p1, Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v3, :cond_4

    .line 54
    :cond_3
    sget-object p1, Laaj;->y:Laaq;

    return-object p1

    .line 41
    :pswitch_7
    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 42
    sget-object p1, Laaj;->y:Laaq;

    return-object p1

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 93
    :cond_5
    iget-object p1, p0, Laaj;->c:Ljava/lang/Boolean;

    if-eqz p1, :cond_7

    .line 94
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Laaj;->y:Laaq;

    goto :goto_2

    :cond_6
    sget-object p1, Laaj;->u:Laaq;

    :goto_2
    return-object p1

    .line 97
    :cond_7
    sget-object p1, Laaj;->u:Laaq;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

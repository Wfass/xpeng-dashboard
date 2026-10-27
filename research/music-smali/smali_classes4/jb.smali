.class public final Ljb;
.super Lcom/O000000o/O000000o/q;
.source "ObjectTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/O000000o/O000000o/q<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/O000000o/O000000o/p;


# instance fields
.field private final b:Lcom/O000000o/O000000o/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljb$1;

    invoke-direct {v0}, Ljb$1;-><init>()V

    sput-object v0, Ljb;->a:Lcom/O000000o/O000000o/p;

    return-void
.end method

.method private constructor <init>(Lcom/O000000o/O000000o/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/O000000o/O000000o/q;-><init>()V

    iput-object p1, p0, Ljb;->b:Lcom/O000000o/O000000o/e;

    return-void
.end method

.method synthetic constructor <init>(Lcom/O000000o/O000000o/e;Ljb$1;)V
    .locals 0

    invoke-direct {p0, p1}, Ljb;-><init>(Lcom/O000000o/O000000o/e;)V

    return-void
.end method


# virtual methods
.method public a(Ljg;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljg;->f()Lji;

    move-result-object v0

    sget-object v1, Ljb$2;->a:[I

    invoke-virtual {v0}, Lji;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_0
    invoke-virtual {p1}, Ljg;->j()V

    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    invoke-virtual {p1}, Ljg;->i()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p1}, Ljg;->k()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p1}, Ljg;->h()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    new-instance v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;

    invoke-direct {v0}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;-><init>()V

    invoke-virtual {p1}, Ljg;->c()V

    :goto_0
    invoke-virtual {p1}, Ljg;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljg;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Ljb;->a(Ljg;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljg;->d()V

    return-object v0

    :pswitch_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljg;->a()V

    :goto_1
    invoke-virtual {p1}, Ljg;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Ljb;->a(Ljg;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljg;->b()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljh;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljh;->f()Ljh;

    return-void

    :cond_0
    iget-object v0, p0, Ljb;->b:Lcom/O000000o/O000000o/e;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/O000000o/O000000o/e;->a(Ljava/lang/Class;)Lcom/O000000o/O000000o/q;

    move-result-object v0

    instance-of v1, v0, Ljb;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljh;->d()Ljh;

    invoke-virtual {p1}, Ljh;->e()Ljh;

    return-void

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/O000000o/O000000o/q;->a(Ljh;Ljava/lang/Object;)V

    return-void
.end method

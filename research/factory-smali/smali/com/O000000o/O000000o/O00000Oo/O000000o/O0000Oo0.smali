.class public final Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo0;
.super Lcom/O000000o/O000000o/O000o000;
.source "ObjectTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/O000000o/O000000o/O000o000<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final O000000o:Lcom/O000000o/O000000o/O000o00;


# instance fields
.field private final O00000Oo:Lcom/O000000o/O000000o/O0000OOo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo0$1;

    invoke-direct {v0}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo0$1;-><init>()V

    sput-object v0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo0;->O000000o:Lcom/O000000o/O000000o/O000o00;

    return-void
.end method

.method private constructor <init>(Lcom/O000000o/O000000o/O0000OOo;)V
    .locals 0

    invoke-direct {p0}, Lcom/O000000o/O000000o/O000o000;-><init>()V

    iput-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo0;->O00000Oo:Lcom/O000000o/O000000o/O0000OOo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/O000000o/O000000o/O0000OOo;Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo0$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo0;-><init>(Lcom/O000000o/O000000o/O0000OOo;)V

    return-void
.end method


# virtual methods
.method public O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo0;->O00000Oo:Lcom/O000000o/O000000o/O0000OOo;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Ljava/lang/Class;)Lcom/O000000o/O000000o/O000o000;

    move-result-object v0

    instance-of v1, v0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo0;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000o()Lcom/O000000o/O000000o/O00000o/O00000o;

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000oO()Lcom/O000000o/O000000o/O00000o/O00000o;

    return-void

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/O000000o/O000000o/O000o000;->O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/lang/Object;)V

    return-void
.end method

.method public O00000Oo(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o0;

    move-result-object v0

    sget-object v1, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo0$2;->O000000o:[I

    invoke-virtual {v0}, Lcom/O000000o/O000000o/O00000o/O00000o0;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :pswitch_0
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000Oo()V

    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000Oo0()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000OoO()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000OOo()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_4
    new-instance v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;

    invoke-direct {v0}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;-><init>()V

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000o0()V

    :goto_0
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oO()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000O0o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo0;->O00000Oo(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000o()V

    return-object v0

    :pswitch_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O000000o()V

    :goto_1
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oO()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo0;->O00000Oo(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000Oo()V

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

.class public final Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$O000000o;
.super Lcom/O000000o/O000000o/O000o000;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "O000000o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/O000000o/O000000o/O000o000<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/O000000o/O000000o/O00000Oo/O0000Oo<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final O00000Oo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$O00000Oo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/O000000o/O000000o/O00000Oo/O0000Oo;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/O00000Oo/O0000Oo<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$O00000Oo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/O000000o/O000000o/O000o000;-><init>()V

    iput-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$O000000o;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo;

    iput-object p2, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$O000000o;->O00000Oo:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/O000000o/O000000o/O00000Oo/O0000Oo;Ljava/util/Map;Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$O000000o;-><init>(Lcom/O000000o/O000000o/O00000Oo/O0000Oo;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/O00000o/O00000o;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000o()Lcom/O000000o/O000000o/O00000o/O00000o;

    :try_start_0
    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$O000000o;->O00000Oo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$O00000Oo;

    iget-boolean v2, v1, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$O00000Oo;->O0000OOo:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$O00000Oo;->O0000O0o:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/O000000o/O000000o/O00000o/O00000o;->O000000o(Ljava/lang/String;)Lcom/O000000o/O000000o/O00000o/O00000o;

    invoke-virtual {v1, p1, p2}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$O00000Oo;->O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000oO()Lcom/O000000o/O000000o/O00000o/O00000o;

    return-void

    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public O00000Oo(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/O00000o/O000000o;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o0;

    move-result-object v0

    sget-object v1, Lcom/O000000o/O000000o/O00000o/O00000o0;->O0000Oo0:Lcom/O000000o/O000000o/O00000o/O00000o0;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000Oo()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$O000000o;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo;

    invoke-interface {v0}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo;->O000000o()Ljava/lang/Object;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000o0()V

    :goto_0
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000oO()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000O0o()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$O000000o;->O00000Oo:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$O00000Oo;

    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$O00000Oo;->O0000Oo0:Z

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p1, v0}, Lcom/O000000o/O000000o/O00000Oo/O000000o/O0000Oo$O00000Oo;->O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O0000o0()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O000000o;->O00000o()V

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :catch_1
    move-exception p1

    new-instance v0, Lcom/O000000o/O000000o/O000OOo;

    invoke-direct {v0, p1}, Lcom/O000000o/O000000o/O000OOo;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

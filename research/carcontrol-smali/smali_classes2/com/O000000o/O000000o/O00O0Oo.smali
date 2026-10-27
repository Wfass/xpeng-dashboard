.class final Lcom/O000000o/O000000o/O00O0Oo;
.super Lcom/O000000o/O000000o/O000o000;
.source "TreeTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/O000000o/O000000o/O00O0Oo$O000000o;
    }
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
.field private final O000000o:Lcom/O000000o/O000000o/O000OOOo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/O000000o/O000000o/O000OOOo<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final O00000Oo:Lcom/O000000o/O000000o/O0000o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/O000000o/O000000o/O0000o<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final O00000o:Lcom/O000000o/O000000o/O00000o0/O000000o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/O000000o/O000000o/O00000o0/O000000o<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final O00000o0:Lcom/O000000o/O000000o/O0000OOo;

.field private final O00000oO:Lcom/O000000o/O000000o/O000o00;

.field private O00000oo:Lcom/O000000o/O000000o/O000o000;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/O000000o/O000000o/O000o000<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/O000000o/O000000o/O000OOOo;Lcom/O000000o/O000000o/O0000o;Lcom/O000000o/O000000o/O0000OOo;Lcom/O000000o/O000000o/O00000o0/O000000o;Lcom/O000000o/O000000o/O000o00;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/O000OOOo<",
            "TT;>;",
            "Lcom/O000000o/O000000o/O0000o<",
            "TT;>;",
            "Lcom/O000000o/O000000o/O0000OOo;",
            "Lcom/O000000o/O000000o/O00000o0/O000000o<",
            "TT;>;",
            "Lcom/O000000o/O000000o/O000o00;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/O000000o/O000000o/O000o000;-><init>()V

    iput-object p1, p0, Lcom/O000000o/O000000o/O00O0Oo;->O000000o:Lcom/O000000o/O000000o/O000OOOo;

    iput-object p2, p0, Lcom/O000000o/O000000o/O00O0Oo;->O00000Oo:Lcom/O000000o/O000000o/O0000o;

    iput-object p3, p0, Lcom/O000000o/O000000o/O00O0Oo;->O00000o0:Lcom/O000000o/O000000o/O0000OOo;

    iput-object p4, p0, Lcom/O000000o/O000000o/O00O0Oo;->O00000o:Lcom/O000000o/O000000o/O00000o0/O000000o;

    iput-object p5, p0, Lcom/O000000o/O000000o/O00O0Oo;->O00000oO:Lcom/O000000o/O000000o/O000o00;

    return-void
.end method

.method synthetic constructor <init>(Lcom/O000000o/O000000o/O000OOOo;Lcom/O000000o/O000000o/O0000o;Lcom/O000000o/O000000o/O0000OOo;Lcom/O000000o/O000000o/O00000o0/O000000o;Lcom/O000000o/O000000o/O000o00;Lcom/O000000o/O000000o/O00O0Oo$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/O000000o/O000000o/O00O0Oo;-><init>(Lcom/O000000o/O000000o/O000OOOo;Lcom/O000000o/O000000o/O0000o;Lcom/O000000o/O000000o/O0000OOo;Lcom/O000000o/O000000o/O00000o0/O000000o;Lcom/O000000o/O000000o/O000o00;)V

    return-void
.end method

.method public static O000000o(Lcom/O000000o/O000000o/O00000o0/O000000o;Ljava/lang/Object;)Lcom/O000000o/O000000o/O000o00;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/O00000o0/O000000o<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/O000000o/O000000o/O000o00;"
        }
    .end annotation

    new-instance v6, Lcom/O000000o/O000000o/O00O0Oo$O000000o;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/O000000o/O000000o/O00O0Oo$O000000o;-><init>(Ljava/lang/Object;Lcom/O000000o/O000000o/O00000o0/O000000o;ZLjava/lang/Class;Lcom/O000000o/O000000o/O00O0Oo$1;)V

    return-object v6
.end method

.method public static O000000o(Ljava/lang/Class;Ljava/lang/Object;)Lcom/O000000o/O000000o/O000o00;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/O000000o/O000000o/O000o00;"
        }
    .end annotation

    new-instance v6, Lcom/O000000o/O000000o/O00O0Oo$O000000o;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/O000000o/O000000o/O00O0Oo$O000000o;-><init>(Ljava/lang/Object;Lcom/O000000o/O000000o/O00000o0/O000000o;ZLjava/lang/Class;Lcom/O000000o/O000000o/O00O0Oo$1;)V

    return-object v6
.end method

.method private O00000Oo()Lcom/O000000o/O000000o/O000o000;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/O000000o/O000000o/O000o000<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O00O0Oo;->O00000oo:Lcom/O000000o/O000000o/O000o000;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/O000000o/O000000o/O00O0Oo;->O00000o0:Lcom/O000000o/O000000o/O0000OOo;

    iget-object v1, p0, Lcom/O000000o/O000000o/O00O0Oo;->O00000oO:Lcom/O000000o/O000000o/O000o00;

    iget-object v2, p0, Lcom/O000000o/O000000o/O00O0Oo;->O00000o:Lcom/O000000o/O000000o/O00000o0/O000000o;

    invoke-virtual {v0, v1, v2}, Lcom/O000000o/O000000o/O0000OOo;->O000000o(Lcom/O000000o/O000000o/O000o00;Lcom/O000000o/O000000o/O00000o0/O000000o;)Lcom/O000000o/O000000o/O000o000;

    move-result-object v0

    iput-object v0, p0, Lcom/O000000o/O000000o/O00O0Oo;->O00000oo:Lcom/O000000o/O000000o/O000o000;

    :goto_0
    return-object v0
.end method

.method public static O00000Oo(Lcom/O000000o/O000000o/O00000o0/O000000o;Ljava/lang/Object;)Lcom/O000000o/O000000o/O000o00;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/O00000o0/O000000o<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/O000000o/O000000o/O000o00;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/O000000o/O000000o/O00000o0/O000000o;->O00000Oo()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/O000000o/O000000o/O00000o0/O000000o;->O000000o()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    new-instance v0, Lcom/O000000o/O000000o/O00O0Oo$O000000o;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/O000000o/O000000o/O00O0Oo$O000000o;-><init>(Ljava/lang/Object;Lcom/O000000o/O000000o/O00000o0/O000000o;ZLjava/lang/Class;Lcom/O000000o/O000000o/O00O0Oo$1;)V

    return-object v0
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

    iget-object v0, p0, Lcom/O000000o/O000000o/O00O0Oo;->O000000o:Lcom/O000000o/O000000o/O000OOOo;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00O0Oo;->O00000Oo()Lcom/O000000o/O000000o/O000o000;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/O000000o/O000000o/O000o000;->O000000o(Lcom/O000000o/O000000o/O00000o/O00000o;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00000o/O00000o;->O00000oo()Lcom/O000000o/O000000o/O00000o/O00000o;

    return-void

    :cond_1
    iget-object v1, p0, Lcom/O000000o/O000000o/O00O0Oo;->O00000o:Lcom/O000000o/O000000o/O00000o0/O000000o;

    invoke-virtual {v1}, Lcom/O000000o/O000000o/O00000o0/O000000o;->O00000Oo()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/O000000o/O000000o/O00O0Oo;->O00000o0:Lcom/O000000o/O000000o/O0000OOo;

    iget-object v2, v2, Lcom/O000000o/O000000o/O0000OOo;->O00000o0:Lcom/O000000o/O000000o/O000OO;

    invoke-interface {v0, p2, v1, v2}, Lcom/O000000o/O000000o/O000OOOo;->O000000o(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/O000000o/O000000o/O000OO;)Lcom/O000000o/O000000o/O00oOooO;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/O000000o/O000000o/O00000Oo/O0000o0;->O000000o(Lcom/O000000o/O000000o/O00oOooO;Lcom/O000000o/O000000o/O00000o/O00000o;)V

    return-void
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

    iget-object v0, p0, Lcom/O000000o/O000000o/O00O0Oo;->O00000Oo:Lcom/O000000o/O000000o/O0000o;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/O000000o/O000000o/O00O0Oo;->O00000Oo()Lcom/O000000o/O000000o/O000o000;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/O000000o/O000000o/O000o000;->O00000Oo(Lcom/O000000o/O000000o/O00000o/O000000o;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/O000000o/O000000o/O00000Oo/O0000o0;->O000000o(Lcom/O000000o/O000000o/O00000o/O000000o;)Lcom/O000000o/O000000o/O00oOooO;

    move-result-object p1

    invoke-virtual {p1}, Lcom/O000000o/O000000o/O00oOooO;->O0000oO()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/O000000o/O000000o/O00O0Oo;->O00000Oo:Lcom/O000000o/O000000o/O0000o;

    iget-object v1, p0, Lcom/O000000o/O000000o/O00O0Oo;->O00000o:Lcom/O000000o/O000000o/O00000o0/O000000o;

    invoke-virtual {v1}, Lcom/O000000o/O000000o/O00000o0/O000000o;->O00000Oo()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/O000000o/O000000o/O00O0Oo;->O00000o0:Lcom/O000000o/O000000o/O0000OOo;

    iget-object v2, v2, Lcom/O000000o/O000000o/O0000OOo;->O00000Oo:Lcom/O000000o/O000000o/O0000o0;

    invoke-interface {v0, p1, v1, v2}, Lcom/O000000o/O000000o/O0000o;->O00000Oo(Lcom/O000000o/O000000o/O00oOooO;Ljava/lang/reflect/Type;Lcom/O000000o/O000000o/O0000o0;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

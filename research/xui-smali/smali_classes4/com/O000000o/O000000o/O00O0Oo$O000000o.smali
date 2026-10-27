.class Lcom/O000000o/O000000o/O00O0Oo$O000000o;
.super Ljava/lang/Object;
.source "TreeTypeAdapter.java"

# interfaces
.implements Lcom/O000000o/O000000o/O000o00;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/O000000o/O000000o/O00O0Oo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "O000000o"
.end annotation


# instance fields
.field private final O000000o:Lcom/O000000o/O000000o/O00000o0/O000000o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/O000000o/O000000o/O00000o0/O000000o<",
            "*>;"
        }
    .end annotation
.end field

.field private final O00000Oo:Z

.field private final O00000o:Lcom/O000000o/O000000o/O000OOOo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/O000000o/O000000o/O000OOOo<",
            "*>;"
        }
    .end annotation
.end field

.field private final O00000o0:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final O00000oO:Lcom/O000000o/O000000o/O0000o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/O000000o/O000000o/O0000o<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lcom/O000000o/O000000o/O00000o0/O000000o;ZLjava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/O000000o/O000000o/O00000o0/O000000o<",
            "*>;Z",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lcom/O000000o/O000000o/O000OOOo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/O000000o/O000000o/O000OOOo;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/O000000o/O000000o/O00O0Oo$O000000o;->O00000o:Lcom/O000000o/O000000o/O000OOOo;

    instance-of v0, p1, Lcom/O000000o/O000000o/O0000o;

    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/O000000o/O000000o/O0000o;

    :cond_1
    iput-object v1, p0, Lcom/O000000o/O000000o/O00O0Oo$O000000o;->O00000oO:Lcom/O000000o/O000000o/O0000o;

    iget-object p1, p0, Lcom/O000000o/O000000o/O00O0Oo$O000000o;->O00000o:Lcom/O000000o/O000000o/O000OOOo;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/O000000o/O000000o/O00O0Oo$O000000o;->O00000oO:Lcom/O000000o/O000000o/O0000o;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    :goto_2
    invoke-static {p1}, Lcom/O000000o/O000000o/O00000Oo/O000000o;->O000000o(Z)V

    iput-object p2, p0, Lcom/O000000o/O000000o/O00O0Oo$O000000o;->O000000o:Lcom/O000000o/O000000o/O00000o0/O000000o;

    iput-boolean p3, p0, Lcom/O000000o/O000000o/O00O0Oo$O000000o;->O00000Oo:Z

    iput-object p4, p0, Lcom/O000000o/O000000o/O00O0Oo$O000000o;->O00000o0:Ljava/lang/Class;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/O000000o/O000000o/O00000o0/O000000o;ZLjava/lang/Class;Lcom/O000000o/O000000o/O00O0Oo$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/O000000o/O000000o/O00O0Oo$O000000o;-><init>(Ljava/lang/Object;Lcom/O000000o/O000000o/O00000o0/O000000o;ZLjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public O000000o(Lcom/O000000o/O000000o/O0000OOo;Lcom/O000000o/O000000o/O00000o0/O000000o;)Lcom/O000000o/O000000o/O000o000;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/O000000o/O000000o/O0000OOo;",
            "Lcom/O000000o/O000000o/O00000o0/O000000o<",
            "TT;>;)",
            "Lcom/O000000o/O000000o/O000o000<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O00O0Oo$O000000o;->O000000o:Lcom/O000000o/O000000o/O00000o0/O000000o;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/O000000o/O000000o/O00O0Oo$O000000o;->O000000o:Lcom/O000000o/O000000o/O00000o0/O000000o;

    invoke-virtual {v0, p2}, Lcom/O000000o/O000000o/O00000o0/O000000o;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/O000000o/O000000o/O00O0Oo$O000000o;->O00000Oo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/O000000o/O000000o/O00O0Oo$O000000o;->O000000o:Lcom/O000000o/O000000o/O00000o0/O000000o;

    invoke-virtual {v0}, Lcom/O000000o/O000000o/O00000o0/O000000o;->O00000Oo()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/O000000o/O000000o/O00000o0/O000000o;->O000000o()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/O000000o/O000000o/O00O0Oo$O000000o;->O00000o0:Ljava/lang/Class;

    invoke-virtual {p2}, Lcom/O000000o/O000000o/O00000o0/O000000o;->O000000o()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_3

    new-instance v0, Lcom/O000000o/O000000o/O00O0Oo;

    iget-object v2, p0, Lcom/O000000o/O000000o/O00O0Oo$O000000o;->O00000o:Lcom/O000000o/O000000o/O000OOOo;

    iget-object v3, p0, Lcom/O000000o/O000000o/O00O0Oo$O000000o;->O00000oO:Lcom/O000000o/O000000o/O0000o;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p0

    invoke-direct/range {v1 .. v7}, Lcom/O000000o/O000000o/O00O0Oo;-><init>(Lcom/O000000o/O000000o/O000OOOo;Lcom/O000000o/O000000o/O0000o;Lcom/O000000o/O000000o/O0000OOo;Lcom/O000000o/O000000o/O00000o0/O000000o;Lcom/O000000o/O000000o/O000o00;Lcom/O000000o/O000000o/O00O0Oo$1;)V

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

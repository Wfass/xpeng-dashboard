.class public final Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;
.super Ljava/util/AbstractMap;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000Oo;,
        Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O000000o;,
        Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o0;,
        Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final synthetic O00000oo:Z = true

.field private static final O0000O0o:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field O000000o:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field O00000o:I

.field O00000o0:I

.field final O00000oO:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private O0000OOo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O000000o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/O000000o/O000000o/O00000Oo/O0000Oo0<",
            "TK;TV;>.O000000o;"
        }
    .end annotation
.end field

.field private O0000Oo0:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000Oo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/O000000o/O000000o/O00000Oo/O0000Oo0<",
            "TK;TV;>.O00000Oo;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$1;

    invoke-direct {v0}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$1;-><init>()V

    sput-object v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O0000O0o:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O0000O0o:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000o0:I

    iput v0, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000o:I

    new-instance v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    invoke-direct {v0}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;-><init>()V

    iput-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000oO:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O0000O0o:Ljava/util/Comparator;

    :goto_0
    iput-object p1, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O000000o:Ljava/util/Comparator;

    return-void
.end method

.method private O000000o()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private O000000o(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iget-object v1, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000o0:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iget-object v2, v1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iget-object v3, v1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000o0:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iput-object v2, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000o0:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    if-eqz v2, :cond_0

    iput-object p1, v2, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O000000o(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;)V

    iput-object p1, v1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iput-object v1, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O0000OOo:I

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    if-eqz v2, :cond_2

    iget v2, v2, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O0000OOo:I

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O0000OOo:I

    iget p1, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O0000OOo:I

    if-eqz v3, :cond_3

    iget v4, v3, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O0000OOo:I

    :cond_3
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O0000OOo:I

    return-void
.end method

.method private O000000o(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o<",
            "TK;TV;>;",
            "Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    if-eqz p2, :cond_0

    iput-object v0, p2, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    :cond_0
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    if-ne v1, p1, :cond_1

    iput-object p2, v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    goto :goto_1

    :cond_1
    sget-boolean v1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000oo:Z

    if-nez v1, :cond_3

    iget-object v1, v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000o0:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    iput-object p2, v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000o0:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    goto :goto_1

    :cond_4
    iput-object p2, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    :goto_1
    return-void
.end method

.method private O000000o(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p1, p2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private O00000Oo(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iget-object v1, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000o0:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iget-object v2, v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iget-object v3, v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000o0:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iput-object v3, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    if-eqz v3, :cond_0

    iput-object p1, v3, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O000000o(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;)V

    iput-object p1, v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000o0:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iput-object v0, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget v1, v1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O0000OOo:I

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    if-eqz v3, :cond_2

    iget v3, v3, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O0000OOo:I

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O0000OOo:I

    iget p1, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O0000OOo:I

    if-eqz v2, :cond_3

    iget v4, v2, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O0000OOo:I

    :cond_3
    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O0000OOo:I

    return-void
.end method

.method private O00000Oo(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_14

    iget-object v0, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iget-object v1, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000o0:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v3, v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O0000OOo:I

    goto :goto_1

    :cond_0
    move v3, v2

    :goto_1
    if-eqz v1, :cond_1

    iget v4, v1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O0000OOo:I

    goto :goto_2

    :cond_1
    move v4, v2

    :goto_2
    sub-int v5, v3, v4

    const/4 v6, -0x2

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-ne v5, v6, :cond_8

    iget-object v0, v1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iget-object v3, v1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000o0:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    if-eqz v3, :cond_2

    iget v3, v3, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O0000OOo:I

    goto :goto_3

    :cond_2
    move v3, v2

    :goto_3
    if-eqz v0, :cond_3

    iget v2, v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O0000OOo:I

    :cond_3
    sub-int/2addr v2, v3

    if-eq v2, v7, :cond_7

    if-nez v2, :cond_4

    if-nez p2, :cond_4

    goto :goto_5

    :cond_4
    sget-boolean v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000oo:Z

    if-nez v0, :cond_6

    if-ne v2, v8, :cond_5

    goto :goto_4

    :cond_5
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_6
    :goto_4
    invoke-direct {p0, v1}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000Oo(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;)V

    :cond_7
    :goto_5
    invoke-direct {p0, p1}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O000000o(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;)V

    if-eqz p2, :cond_13

    goto :goto_a

    :cond_8
    const/4 v1, 0x2

    if-ne v5, v1, :cond_f

    iget-object v1, v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iget-object v3, v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000o0:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    if-eqz v3, :cond_9

    iget v3, v3, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O0000OOo:I

    goto :goto_6

    :cond_9
    move v3, v2

    :goto_6
    if-eqz v1, :cond_a

    iget v2, v1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O0000OOo:I

    :cond_a
    sub-int/2addr v2, v3

    if-eq v2, v8, :cond_e

    if-nez v2, :cond_b

    if-nez p2, :cond_b

    goto :goto_8

    :cond_b
    sget-boolean v1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000oo:Z

    if-nez v1, :cond_d

    if-ne v2, v7, :cond_c

    goto :goto_7

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_d
    :goto_7
    invoke-direct {p0, v0}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O000000o(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;)V

    :cond_e
    :goto_8
    invoke-direct {p0, p1}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000Oo(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;)V

    if-eqz p2, :cond_13

    goto :goto_a

    :cond_f
    if-nez v5, :cond_10

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O0000OOo:I

    if-eqz p2, :cond_13

    goto :goto_a

    :cond_10
    sget-boolean v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000oo:Z

    if-nez v0, :cond_12

    if-eq v5, v7, :cond_12

    if-ne v5, v8, :cond_11

    goto :goto_9

    :cond_11
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_12
    :goto_9
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v8

    iput v0, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O0000OOo:I

    if-nez p2, :cond_13

    goto :goto_a

    :cond_13
    iget-object p1, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    goto/16 :goto_0

    :cond_14
    :goto_a
    return-void
.end method


# virtual methods
.method O000000o(Ljava/lang/Object;)Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O000000o(Ljava/lang/Object;Z)Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_0
    return-object v0
.end method

.method O000000o(Ljava/lang/Object;Z)Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O000000o:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    sget-object v3, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O0000O0o:Ljava/util/Comparator;

    if-ne v0, v3, :cond_0

    move-object v3, p1

    check-cast v3, Ljava/lang/Comparable;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iget-object v4, v1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000oo:Ljava/lang/Object;

    if-eqz v3, :cond_1

    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-interface {v0, p1, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    :goto_1
    if-nez v4, :cond_2

    return-object v1

    :cond_2
    if-gez v4, :cond_3

    iget-object v5, v1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    goto :goto_2

    :cond_3
    iget-object v5, v1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000o0:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    :goto_2
    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, v5

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-nez p2, :cond_6

    return-object v2

    :cond_6
    iget-object p2, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000oO:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    const/4 v2, 0x1

    if-nez v1, :cond_9

    sget-object v3, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O0000O0o:Ljava/util/Comparator;

    if-ne v0, v3, :cond_8

    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    new-instance p2, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is not Comparable"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8
    :goto_4
    new-instance v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iget-object v3, p2, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000oO:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    invoke-direct {v0, v1, p1, p2, v3}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;-><init>(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;Ljava/lang/Object;Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;)V

    iput-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    goto :goto_6

    :cond_9
    new-instance v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iget-object v3, p2, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000oO:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    invoke-direct {v0, v1, p1, p2, v3}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;-><init>(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;Ljava/lang/Object;Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;)V

    if-gez v4, :cond_a

    iput-object v0, v1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    goto :goto_5

    :cond_a
    iput-object v0, v1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000o0:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    :goto_5
    invoke-direct {p0, v1, v2}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000Oo(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;Z)V

    :goto_6
    iget p1, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000o0:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000o0:I

    iget p1, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000o:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000o:I

    return-object v0
.end method

.method O000000o(Ljava/util/Map$Entry;)Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)",
            "Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O000000o(Ljava/lang/Object;)Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O0000O0o:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O000000o(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method O000000o(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000oO:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iget-object v0, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iput-object v0, p2, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iget-object p2, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iget-object v0, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000oO:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iput-object v0, p2, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000oO:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    :cond_0
    iget-object p2, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iget-object v0, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000o0:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iget-object v1, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p2, :cond_4

    if-eqz v0, :cond_4

    iget v1, p2, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O0000OOo:I

    iget v4, v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O0000OOo:I

    if-le v1, v4, :cond_1

    invoke-virtual {p2}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000Oo()Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O000000o()Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p2, v2}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O000000o(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;Z)V

    iget-object v0, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    if-eqz v0, :cond_2

    iget v1, v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O0000OOo:I

    iput-object v0, p2, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iput-object p2, v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iput-object v3, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    iget-object v0, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000o0:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    if-eqz v0, :cond_3

    iget v2, v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O0000OOo:I

    iput-object v0, p2, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000o0:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iput-object p2, v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O000000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iput-object v3, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000o0:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    :cond_3
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O0000OOo:I

    invoke-direct {p0, p1, p2}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O000000o(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;)V

    return-void

    :cond_4
    if-eqz p2, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O000000o(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;)V

    iput-object v3, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    invoke-direct {p0, p1, v0}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O000000o(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;)V

    iput-object v3, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000o0:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    goto :goto_2

    :cond_6
    invoke-direct {p0, p1, v3}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O000000o(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;)V

    :goto_2
    invoke-direct {p0, v1, v2}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000Oo(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;Z)V

    iget p1, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000o0:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000o0:I

    iget p1, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000o:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000o:I

    return-void
.end method

.method O00000Oo(Ljava/lang/Object;)Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O000000o(Ljava/lang/Object;)Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O000000o(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;Z)V

    :cond_0
    return-object p1
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000Oo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    const/4 v0, 0x0

    iput v0, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000o0:I

    iget v0, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000o:I

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000oO:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iput-object v0, v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000oO:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    iput-object v0, v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O00000o:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O000000o(Ljava/lang/Object;)Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O0000OOo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O000000o;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O000000o;

    invoke-direct {v0, p0}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O000000o;-><init>(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;)V

    iput-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O0000OOo:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O000000o;

    :goto_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O000000o(Ljava/lang/Object;)Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O0000O0o:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O0000Oo0:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000Oo;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000Oo;

    invoke-direct {v0, p0}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000Oo;-><init>(Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;)V

    iput-object v0, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O0000Oo0:Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000Oo;

    :goto_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const-string v0, "key == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O000000o(Ljava/lang/Object;Z)Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    move-result-object p1

    iget-object v0, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O0000O0o:Ljava/lang/Object;

    iput-object p2, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O0000O0o:Ljava/lang/Object;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000Oo(Ljava/lang/Object;)Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0$O00000o;->O0000O0o:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/O000000o/O000000o/O00000Oo/O0000Oo0;->O00000o0:I

    return v0
.end method

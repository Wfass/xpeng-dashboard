.class final Lcom/google/common/reflect/c$a;
.super Lcom/google/common/collect/w;
.source "MutableTypeToInstanceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/w<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Lcom/google/common/collect/w;-><init>()V

    .line 157
    invoke-static {p1}, Lcom/google/common/base/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    iput-object p1, p0, Lcom/google/common/reflect/c$a;->a:Ljava/util/Map$Entry;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map$Entry;Lcom/google/common/reflect/c$1;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/google/common/reflect/c$a;-><init>(Ljava/util/Map$Entry;)V

    return-void
.end method

.method static synthetic a(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 0

    .line 117
    invoke-static {p0}, Lcom/google/common/reflect/c$a;->b(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 122
    new-instance v0, Lcom/google/common/reflect/MutableTypeToInstanceMap$UnmodifiableEntry$1;

    invoke-direct {v0, p0}, Lcom/google/common/reflect/MutableTypeToInstanceMap$UnmodifiableEntry$1;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method private static b(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 146
    new-instance v0, Lcom/google/common/reflect/c$a$1;

    invoke-direct {v0}, Lcom/google/common/reflect/c$a$1;-><init>()V

    invoke-static {p0, v0}, Lcom/google/common/collect/ah;->a(Ljava/util/Iterator;Lcom/google/common/base/h;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected a()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/google/common/reflect/c$a;->a:Ljava/util/Map$Entry;

    return-object v0
.end method

.method protected synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/google/common/reflect/c$a;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 167
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

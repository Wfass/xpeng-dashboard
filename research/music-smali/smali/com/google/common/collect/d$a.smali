.class final Lcom/google/common/collect/d$a;
.super Lcom/google/common/collect/Maps$c;
.source "AbstractNavigableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Maps$c<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/d;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/d;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/google/common/collect/d$a;->a:Lcom/google/common/collect/d;

    invoke-direct {p0}, Lcom/google/common/collect/Maps$c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/d;Lcom/google/common/collect/d$1;)V
    .locals 0

    .line 167
    invoke-direct {p0, p1}, Lcom/google/common/collect/d$a;-><init>(Lcom/google/common/collect/d;)V

    return-void
.end method


# virtual methods
.method b()Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/google/common/collect/d$a;->a:Lcom/google/common/collect/d;

    return-object v0
.end method

.method c()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/google/common/collect/d$a;->a:Lcom/google/common/collect/d;

    invoke-virtual {v0}, Lcom/google/common/collect/d;->a()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

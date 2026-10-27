.class final Lcom/google/common/collect/bi$b;
.super Lcom/google/common/collect/c;
.source "TreeRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/bi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/c<",
        "Lcom/google/common/collect/au<",
        "TK;>;TV;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/au;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/au<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/au;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/au<",
            "TK;>;TV;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lcom/google/common/collect/c;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/common/collect/bi$b;->a:Lcom/google/common/collect/au;

    .line 76
    iput-object p2, p0, Lcom/google/common/collect/bi$b;->b:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/google/common/collect/q;Lcom/google/common/collect/q;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/q<",
            "TK;>;",
            "Lcom/google/common/collect/q<",
            "TK;>;TV;)V"
        }
    .end annotation

    .line 71
    invoke-static {p1, p2}, Lcom/google/common/collect/au;->a(Lcom/google/common/collect/q;Lcom/google/common/collect/q;)Lcom/google/common/collect/au;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/google/common/collect/bi$b;-><init>(Lcom/google/common/collect/au;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/au;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/au<",
            "TK;>;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/google/common/collect/bi$b;->a:Lcom/google/common/collect/au;

    return-object v0
.end method

.method b()Lcom/google/common/collect/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/q<",
            "TK;>;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/google/common/collect/bi$b;->a:Lcom/google/common/collect/au;

    iget-object v0, v0, Lcom/google/common/collect/au;->a:Lcom/google/common/collect/q;

    return-object v0
.end method

.method c()Lcom/google/common/collect/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/q<",
            "TK;>;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/google/common/collect/bi$b;->a:Lcom/google/common/collect/au;

    iget-object v0, v0, Lcom/google/common/collect/au;->b:Lcom/google/common/collect/q;

    return-object v0
.end method

.method public synthetic getKey()Ljava/lang/Object;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/google/common/collect/bi$b;->a()Lcom/google/common/collect/au;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/google/common/collect/bi$b;->b:Ljava/lang/Object;

    return-object v0
.end method

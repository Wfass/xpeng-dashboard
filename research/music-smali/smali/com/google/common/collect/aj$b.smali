.class Lcom/google/common/collect/aj$b;
.super Ljava/lang/Object;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lcom/google/common/collect/aj$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/aj$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field b:Lcom/google/common/collect/aj$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/aj$c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field c:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/aj$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/aj$c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/google/common/collect/aj$b;->a:Lcom/google/common/collect/aj$c;

    .line 144
    iput-object p1, p0, Lcom/google/common/collect/aj$b;->b:Lcom/google/common/collect/aj$c;

    const/4 v0, 0x0

    .line 145
    iput-object v0, p1, Lcom/google/common/collect/aj$c;->f:Lcom/google/common/collect/aj$c;

    .line 146
    iput-object v0, p1, Lcom/google/common/collect/aj$c;->e:Lcom/google/common/collect/aj$c;

    const/4 p1, 0x1

    .line 147
    iput p1, p0, Lcom/google/common/collect/aj$b;->c:I

    return-void
.end method

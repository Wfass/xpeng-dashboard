.class Lcom/google/common/cache/LocalCache$m;
.super Lcom/google/common/cache/LocalCache$a;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/cache/LocalCache$a<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final h:I

.field final i:Lcom/google/common/cache/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field volatile j:Lcom/google/common/cache/LocalCache$q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$q<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/google/common/cache/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 939
    invoke-direct {p0}, Lcom/google/common/cache/LocalCache$a;-><init>()V

    .line 954
    invoke-static {}, Lcom/google/common/cache/LocalCache;->i()Lcom/google/common/cache/LocalCache$q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/cache/LocalCache$m;->j:Lcom/google/common/cache/LocalCache$q;

    .line 940
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$m;->g:Ljava/lang/Object;

    .line 941
    iput p2, p0, Lcom/google/common/cache/LocalCache$m;->h:I

    .line 942
    iput-object p3, p0, Lcom/google/common/cache/LocalCache$m;->i:Lcom/google/common/cache/c;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/cache/LocalCache$q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/LocalCache$q<",
            "TK;TV;>;"
        }
    .end annotation

    .line 958
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$m;->j:Lcom/google/common/cache/LocalCache$q;

    return-object v0
.end method

.method public a(Lcom/google/common/cache/LocalCache$q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$q<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 963
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$m;->j:Lcom/google/common/cache/LocalCache$q;

    return-void
.end method

.method public b()Lcom/google/common/cache/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/cache/c<",
            "TK;TV;>;"
        }
    .end annotation

    .line 973
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$m;->i:Lcom/google/common/cache/c;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 968
    iget v0, p0, Lcom/google/common/cache/LocalCache$m;->h:I

    return v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 947
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$m;->g:Ljava/lang/Object;

    return-object v0
.end method

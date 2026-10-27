.class Lcom/google/common/collect/AbstractTable$1;
.super Lcom/google/common/collect/bg;
.source "AbstractTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/AbstractTable;->i()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/bg<",
        "Lcom/google/common/collect/be$a<",
        "TR;TC;TV;>;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/collect/AbstractTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/AbstractTable;Ljava/util/Iterator;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/google/common/collect/AbstractTable$1;->a:Lcom/google/common/collect/AbstractTable;

    invoke-direct {p0, p2}, Lcom/google/common/collect/bg;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method a(Lcom/google/common/collect/be$a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/be$a<",
            "TR;TC;TV;>;)TV;"
        }
    .end annotation

    .line 181
    invoke-interface {p1}, Lcom/google/common/collect/be$a;->c()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 178
    check-cast p1, Lcom/google/common/collect/be$a;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractTable$1;->a(Lcom/google/common/collect/be$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

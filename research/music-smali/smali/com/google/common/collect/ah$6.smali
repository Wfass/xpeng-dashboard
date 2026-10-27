.class final Lcom/google/common/collect/ah$6;
.super Lcom/google/common/collect/bg;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ah;->a(Ljava/util/Iterator;Lcom/google/common/base/h;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/bg<",
        "TF;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/common/base/h;


# direct methods
.method constructor <init>(Ljava/util/Iterator;Lcom/google/common/base/h;)V
    .locals 0

    .line 783
    iput-object p2, p0, Lcom/google/common/collect/ah$6;->a:Lcom/google/common/base/h;

    invoke-direct {p0, p1}, Lcom/google/common/collect/bg;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TT;"
        }
    .end annotation

    .line 786
    iget-object v0, p0, Lcom/google/common/collect/ah$6;->a:Lcom/google/common/base/h;

    invoke-interface {v0, p1}, Lcom/google/common/base/h;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.class public final Lcom/alibaba/fastjson2/function/FieldSupplierFunction;
.super Ljava/lang/Object;
.source "FieldSupplierFunction.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "TT;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final fieldIndex:I

.field public final supplier:Lcom/alibaba/fastjson2/function/FieldSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/FieldSupplier<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson2/function/FieldSupplier;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/function/FieldSupplier<",
            "TT;>;I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/alibaba/fastjson2/function/FieldSupplierFunction;->supplier:Lcom/alibaba/fastjson2/function/FieldSupplier;

    .line 12
    iput p2, p0, Lcom/alibaba/fastjson2/function/FieldSupplierFunction;->fieldIndex:I

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/alibaba/fastjson2/function/FieldSupplierFunction;->supplier:Lcom/alibaba/fastjson2/function/FieldSupplier;

    iget v1, p0, Lcom/alibaba/fastjson2/function/FieldSupplierFunction;->fieldIndex:I

    invoke-interface {v0, p1, v1}, Lcom/alibaba/fastjson2/function/FieldSupplier;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

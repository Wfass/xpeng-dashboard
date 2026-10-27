.class public final Lcom/alibaba/fastjson2/function/FieldBiConsumer;
.super Ljava/lang/Object;
.source "FieldBiConsumer.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/BiConsumer<",
        "TT;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final consumer:Lcom/alibaba/fastjson2/function/FieldConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson2/function/FieldConsumer<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final fieldIndex:I


# direct methods
.method public constructor <init>(ILcom/alibaba/fastjson2/function/FieldConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/alibaba/fastjson2/function/FieldConsumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/alibaba/fastjson2/function/FieldBiConsumer;->fieldIndex:I

    .line 12
    iput-object p2, p0, Lcom/alibaba/fastjson2/function/FieldBiConsumer;->consumer:Lcom/alibaba/fastjson2/function/FieldConsumer;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/alibaba/fastjson2/function/FieldBiConsumer;->consumer:Lcom/alibaba/fastjson2/function/FieldConsumer;

    iget v1, p0, Lcom/alibaba/fastjson2/function/FieldBiConsumer;->fieldIndex:I

    invoke-interface {v0, p1, v1, p2}, Lcom/alibaba/fastjson2/function/FieldConsumer;->accept(Ljava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

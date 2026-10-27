.class final Lcom/alibaba/fastjson2/internal/asm/Edge;
.super Ljava/lang/Object;
.source "Edge.java"


# instance fields
.field final nextEdge:Lcom/alibaba/fastjson2/internal/asm/Edge;

.field final successor:Lcom/alibaba/fastjson2/internal/asm/Label;


# direct methods
.method constructor <init>(Lcom/alibaba/fastjson2/internal/asm/Label;Lcom/alibaba/fastjson2/internal/asm/Edge;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/alibaba/fastjson2/internal/asm/Edge;->successor:Lcom/alibaba/fastjson2/internal/asm/Label;

    .line 59
    iput-object p2, p0, Lcom/alibaba/fastjson2/internal/asm/Edge;->nextEdge:Lcom/alibaba/fastjson2/internal/asm/Edge;

    return-void
.end method

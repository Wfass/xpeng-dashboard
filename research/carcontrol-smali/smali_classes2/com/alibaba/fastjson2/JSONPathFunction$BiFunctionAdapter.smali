.class final Lcom/alibaba/fastjson2/JSONPathFunction$BiFunctionAdapter;
.super Ljava/lang/Object;
.source "JSONPathFunction.java"

# interfaces
.implements Ljava/util/function/BiFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONPathFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BiFunctionAdapter"
.end annotation


# instance fields
.field private final function:Ljava/util/function/Function;


# direct methods
.method constructor <init>(Ljava/util/function/Function;)V
    .locals 0

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPathFunction$BiFunctionAdapter;->function:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 459
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathFunction$BiFunctionAdapter;->function:Ljava/util/function/Function;

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

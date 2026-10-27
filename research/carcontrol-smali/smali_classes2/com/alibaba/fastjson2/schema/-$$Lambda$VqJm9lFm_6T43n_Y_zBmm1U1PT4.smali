.class public final synthetic Lcom/alibaba/fastjson2/schema/-$$Lambda$VqJm9lFm_6T43n_Y_zBmm1U1PT4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Predicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson2/schema/-$$Lambda$VqJm9lFm_6T43n_Y_zBmm1U1PT4;->f$0:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson2/schema/-$$Lambda$VqJm9lFm_6T43n_Y_zBmm1U1PT4;->f$0:Ljava/util/function/Predicate;

    check-cast p1, Lcom/alibaba/fastjson2/schema/JSONSchema;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    return-void
.end method

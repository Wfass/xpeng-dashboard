.class public final synthetic L-$$Lambda$aav$fb9mQ2gFc92Oc4MLxLWw9T6WfzI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L-$$Lambda$aav$fb9mQ2gFc92Oc4MLxLWw9T6WfzI;->f$0:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, L-$$Lambda$aav$fb9mQ2gFc92Oc4MLxLWw9T6WfzI;->f$0:Ljava/util/function/BiFunction;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Laav;->lambda$fb9mQ2gFc92Oc4MLxLWw9T6WfzI(Ljava/util/function/BiFunction;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

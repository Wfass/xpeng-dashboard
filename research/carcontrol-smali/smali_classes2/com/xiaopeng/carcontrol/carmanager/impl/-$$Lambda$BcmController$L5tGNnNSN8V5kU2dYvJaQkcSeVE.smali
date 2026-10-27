.class public final synthetic Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$BcmController$L5tGNnNSN8V5kU2dYvJaQkcSeVE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$BcmController$L5tGNnNSN8V5kU2dYvJaQkcSeVE;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$BcmController$L5tGNnNSN8V5kU2dYvJaQkcSeVE;->f$0:I

    check-cast p1, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController$Callback;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/BcmController;->lambda$handleDrvBeltWarningChanged$13(ILcom/xiaopeng/carcontrol/carmanager/controller/IBcmController$Callback;)V

    return-void
.end method

.class public final synthetic Lcom/xiaopeng/xuimanager/condition/-$$Lambda$ConditionManager$uf_QCHqYNYZPG4CS8XGdwf5C4Lk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaopeng/xuimanager/condition/-$$Lambda$ConditionManager$uf_QCHqYNYZPG4CS8XGdwf5C4Lk;->f$0:I

    iput p2, p0, Lcom/xiaopeng/xuimanager/condition/-$$Lambda$ConditionManager$uf_QCHqYNYZPG4CS8XGdwf5C4Lk;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/xiaopeng/xuimanager/condition/-$$Lambda$ConditionManager$uf_QCHqYNYZPG4CS8XGdwf5C4Lk;->f$0:I

    iget v1, p0, Lcom/xiaopeng/xuimanager/condition/-$$Lambda$ConditionManager$uf_QCHqYNYZPG4CS8XGdwf5C4Lk;->f$1:I

    check-cast p1, Lcom/xiaopeng/xuimanager/condition/ConditionManager$BrightnessLevelListener;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/condition/ConditionManager;->lambda$dispatchBrightnessLevelChangedToClient$2(IILcom/xiaopeng/xuimanager/condition/ConditionManager$BrightnessLevelListener;)V

    return-void
.end method

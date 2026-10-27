.class public final synthetic Lcom/xiaopeng/xuimanager/makeuplight/-$$Lambda$MakeupLightManager$BZIX_hPthtOzRONGE93bGvKnyfk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaopeng/xuimanager/makeuplight/-$$Lambda$MakeupLightManager$BZIX_hPthtOzRONGE93bGvKnyfk;->f$0:I

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/makeuplight/-$$Lambda$MakeupLightManager$BZIX_hPthtOzRONGE93bGvKnyfk;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/-$$Lambda$MakeupLightManager$BZIX_hPthtOzRONGE93bGvKnyfk;->f$0:I

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/makeuplight/-$$Lambda$MakeupLightManager$BZIX_hPthtOzRONGE93bGvKnyfk;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$EventListener;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->lambda$dispatchEffectToClient$3(ILjava/lang/String;Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$EventListener;)V

    return-void
.end method

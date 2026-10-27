.class public final synthetic Lcom/xiaopeng/xuimanager/makeuplight/-$$Lambda$MakeupLightManager$P3e9UhUr_S_g3p9aL0xovdDmRTU;
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

    iput p1, p0, Lcom/xiaopeng/xuimanager/makeuplight/-$$Lambda$MakeupLightManager$P3e9UhUr_S_g3p9aL0xovdDmRTU;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/xiaopeng/xuimanager/makeuplight/-$$Lambda$MakeupLightManager$P3e9UhUr_S_g3p9aL0xovdDmRTU;->f$0:I

    check-cast p1, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$EventListener;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager;->lambda$dispatchLuminanceToClient$2(ILcom/xiaopeng/xuimanager/makeuplight/MakeupLightManager$EventListener;)V

    return-void
.end method

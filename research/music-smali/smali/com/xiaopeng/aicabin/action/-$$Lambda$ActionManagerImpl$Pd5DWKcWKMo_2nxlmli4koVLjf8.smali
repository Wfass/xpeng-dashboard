.class public final synthetic Lcom/xiaopeng/aicabin/action/-$$Lambda$ActionManagerImpl$Pd5DWKcWKMo_2nxlmli4koVLjf8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/aicabin/action/ActionManagerImpl;

.field private final synthetic f$1:Lcom/xiaopeng/aicabin/action/IAction;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/aicabin/action/ActionManagerImpl;Lcom/xiaopeng/aicabin/action/IAction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/aicabin/action/-$$Lambda$ActionManagerImpl$Pd5DWKcWKMo_2nxlmli4koVLjf8;->f$0:Lcom/xiaopeng/aicabin/action/ActionManagerImpl;

    iput-object p2, p0, Lcom/xiaopeng/aicabin/action/-$$Lambda$ActionManagerImpl$Pd5DWKcWKMo_2nxlmli4koVLjf8;->f$1:Lcom/xiaopeng/aicabin/action/IAction;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/aicabin/action/-$$Lambda$ActionManagerImpl$Pd5DWKcWKMo_2nxlmli4koVLjf8;->f$0:Lcom/xiaopeng/aicabin/action/ActionManagerImpl;

    iget-object v1, p0, Lcom/xiaopeng/aicabin/action/-$$Lambda$ActionManagerImpl$Pd5DWKcWKMo_2nxlmli4koVLjf8;->f$1:Lcom/xiaopeng/aicabin/action/IAction;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/aicabin/action/ActionManagerImpl;->lambda$startAction$1$ActionManagerImpl(Lcom/xiaopeng/aicabin/action/IAction;)V

    return-void
.end method

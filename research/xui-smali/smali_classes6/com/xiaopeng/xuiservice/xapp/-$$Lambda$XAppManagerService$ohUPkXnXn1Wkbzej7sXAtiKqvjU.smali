.class public final synthetic Lcom/xiaopeng/xuiservice/xapp/-$$Lambda$XAppManagerService$ohUPkXnXn1Wkbzej7sXAtiKqvjU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/-$$Lambda$XAppManagerService$ohUPkXnXn1Wkbzej7sXAtiKqvjU;->f$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/-$$Lambda$XAppManagerService$ohUPkXnXn1Wkbzej7sXAtiKqvjU;->f$0:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->lambda$loadLocalDataAsync$0(Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;)V

    return-void
.end method

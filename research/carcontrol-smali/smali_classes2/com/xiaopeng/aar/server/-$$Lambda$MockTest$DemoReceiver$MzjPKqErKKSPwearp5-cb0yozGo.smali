.class public final synthetic Lcom/xiaopeng/aar/server/-$$Lambda$MockTest$DemoReceiver$MzjPKqErKKSPwearp5-cb0yozGo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/aar/server/-$$Lambda$MockTest$DemoReceiver$MzjPKqErKKSPwearp5-cb0yozGo;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaopeng/aar/server/-$$Lambda$MockTest$DemoReceiver$MzjPKqErKKSPwearp5-cb0yozGo;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/aar/server/-$$Lambda$MockTest$DemoReceiver$MzjPKqErKKSPwearp5-cb0yozGo;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/aar/server/-$$Lambda$MockTest$DemoReceiver$MzjPKqErKKSPwearp5-cb0yozGo;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaopeng/aar/server/-$$Lambda$MockTest$DemoReceiver$MzjPKqErKKSPwearp5-cb0yozGo;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/aar/server/-$$Lambda$MockTest$DemoReceiver$MzjPKqErKKSPwearp5-cb0yozGo;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/aar/server/-$$Lambda$MockTest$DemoReceiver$MzjPKqErKKSPwearp5-cb0yozGo;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/aar/server/-$$Lambda$MockTest$DemoReceiver$MzjPKqErKKSPwearp5-cb0yozGo;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/aar/server/MockTest$DemoReceiver;->lambda$onReceive$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

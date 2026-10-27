.class public final synthetic Lcom/xiaopeng/aicabin/-$$Lambda$ARemoteManager$FFOiopVM6sNee8zP0_ka22uYn_E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/aicabin/ARemoteManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/aicabin/ARemoteManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/aicabin/-$$Lambda$ARemoteManager$FFOiopVM6sNee8zP0_ka22uYn_E;->f$0:Lcom/xiaopeng/aicabin/ARemoteManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/aicabin/-$$Lambda$ARemoteManager$FFOiopVM6sNee8zP0_ka22uYn_E;->f$0:Lcom/xiaopeng/aicabin/ARemoteManager;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/aicabin/ARemoteManager;->lambda$resumeRemoteService$0$ARemoteManager(Ljava/lang/Integer;)V

    return-void
.end method

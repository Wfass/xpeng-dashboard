.class public Lcom/xiaopeng/aicabin/ARemoteManager$b;
.super Lcom/xiaopeng/aicabin/logic/ILogicListener$Stub;
.source "ARemoteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/aicabin/ARemoteManager;->startRemoteImpl(Ljava/lang/String;Lcom/xiaopeng/aicabin/DataReq;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/xiaopeng/aicabin/logic/ILogicCallback;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/aicabin/ARemoteManager;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/xiaopeng/aicabin/ARemoteManager$b;->a:Lcom/xiaopeng/aicabin/logic/ILogicCallback;

    invoke-direct {p0}, Lcom/xiaopeng/aicabin/logic/ILogicListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/xiaopeng/aicabin/DataResp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaopeng/aicabin/ARemoteManager$b;->a:Lcom/xiaopeng/aicabin/logic/ILogicCallback;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/xiaopeng/aicabin/logic/ILogicCallback;->onResult(Lcom/xiaopeng/aicabin/DataResp;)V

    :cond_0
    return-void
.end method

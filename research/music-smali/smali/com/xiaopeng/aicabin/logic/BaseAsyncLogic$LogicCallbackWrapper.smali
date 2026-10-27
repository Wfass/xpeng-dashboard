.class public Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;
.super Ljava/lang/Object;
.source "BaseAsyncLogic.java"

# interfaces
.implements Lcom/xiaopeng/aicabin/logic/ILogicCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LogicCallbackWrapper"
.end annotation


# instance fields
.field private callCount:I

.field private callback:Lcom/xiaopeng/aicabin/logic/ILogicCallback;

.field public final synthetic this$0:Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;->this$0:Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;->callCount:I

    return-void
.end method


# virtual methods
.method public onResult(Lcom/xiaopeng/aicabin/DataResp;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;->callCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;->callCount:I

    .line 2
    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;->callback:Lcom/xiaopeng/aicabin/logic/ILogicCallback;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 4
    iput-object v2, p0, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;->callback:Lcom/xiaopeng/aicabin/logic/ILogicCallback;

    .line 5
    invoke-interface {v0, p1}, Lcom/xiaopeng/aicabin/logic/ILogicCallback;->onResult(Lcom/xiaopeng/aicabin/DataResp;)V

    .line 7
    :cond_0
    iget p1, p0, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;->callCount:I

    if-le p1, v1, :cond_1

    .line 9
    invoke-static {}, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "crateLogicCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;->this$0:Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic;

    invoke-interface {v1}, Lcom/xiaopeng/aicabin/ICabin;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;->callCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setCallback(Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;->callback:Lcom/xiaopeng/aicabin/logic/ILogicCallback;

    return-void
.end method

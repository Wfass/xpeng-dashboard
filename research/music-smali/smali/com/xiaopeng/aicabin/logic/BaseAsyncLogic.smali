.class public Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic;
.super Lcom/xiaopeng/aicabin/logic/BaseLogic;
.source "BaseAsyncLogic.java"

# interfaces
.implements Lcom/xiaopeng/aicabin/logic/IAsyncLogic;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final mLogicCallback:Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseAsyncLogic"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/aicabin/AConstant;->SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/xiaopeng/aicabin/logic/BaseLogic;-><init>()V

    .line 3
    new-instance v0, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;

    invoke-direct {v0, p0}, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;-><init>(Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic;)V

    iput-object v0, p0, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic;->mLogicCallback:Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public cancelAsync()V
    .locals 0

    return-void
.end method

.method public final exeAsync(Lcom/xiaopeng/aicabin/DataReq;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/xiaopeng/aicabin/logic/BaseLogic;->mParams:Lcom/xiaopeng/aicabin/DataReq;

    .line 2
    iget-object p1, p0, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic;->mLogicCallback:Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;->setCallback(Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V

    .line 3
    invoke-virtual {p0}, Lcom/xiaopeng/aicabin/logic/BaseLogic;->beforeHandle()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/xiaopeng/aicabin/logic/BaseLogic;->handle()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic;->mLogicCallback:Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;

    iget-object p2, p0, Lcom/xiaopeng/aicabin/logic/BaseLogic;->mResult:Lcom/xiaopeng/aicabin/DataResp;

    const-string v0, "beforeHandle error"

    invoke-virtual {p2, v0}, Lcom/xiaopeng/aicabin/DataResp;->setOtherMsg(Ljava/lang/String;)Lcom/xiaopeng/aicabin/DataResp;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/aicabin/logic/BaseAsyncLogic$LogicCallbackWrapper;->onResult(Lcom/xiaopeng/aicabin/DataResp;)V

    :goto_0
    return-void
.end method

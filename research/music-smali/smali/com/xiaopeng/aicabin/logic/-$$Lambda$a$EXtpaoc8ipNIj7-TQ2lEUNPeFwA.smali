.class public final synthetic Lcom/xiaopeng/aicabin/logic/-$$Lambda$a$EXtpaoc8ipNIj7-TQ2lEUNPeFwA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/aicabin/logic/ILogicCallback;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/aicabin/logic/a;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Lcom/xiaopeng/aicabin/logic/ILogicCallback;

.field private final synthetic f$3:Lcom/xiaopeng/aicabin/logic/IAsyncLogic;

.field private final synthetic f$4:Lcom/xiaopeng/aicabin/DataReq;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/aicabin/logic/a;Ljava/lang/String;Lcom/xiaopeng/aicabin/logic/ILogicCallback;Lcom/xiaopeng/aicabin/logic/IAsyncLogic;Lcom/xiaopeng/aicabin/DataReq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/aicabin/logic/-$$Lambda$a$EXtpaoc8ipNIj7-TQ2lEUNPeFwA;->f$0:Lcom/xiaopeng/aicabin/logic/a;

    iput-object p2, p0, Lcom/xiaopeng/aicabin/logic/-$$Lambda$a$EXtpaoc8ipNIj7-TQ2lEUNPeFwA;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/aicabin/logic/-$$Lambda$a$EXtpaoc8ipNIj7-TQ2lEUNPeFwA;->f$2:Lcom/xiaopeng/aicabin/logic/ILogicCallback;

    iput-object p4, p0, Lcom/xiaopeng/aicabin/logic/-$$Lambda$a$EXtpaoc8ipNIj7-TQ2lEUNPeFwA;->f$3:Lcom/xiaopeng/aicabin/logic/IAsyncLogic;

    iput-object p5, p0, Lcom/xiaopeng/aicabin/logic/-$$Lambda$a$EXtpaoc8ipNIj7-TQ2lEUNPeFwA;->f$4:Lcom/xiaopeng/aicabin/DataReq;

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/xiaopeng/aicabin/DataResp;)V
    .locals 6

    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/-$$Lambda$a$EXtpaoc8ipNIj7-TQ2lEUNPeFwA;->f$0:Lcom/xiaopeng/aicabin/logic/a;

    iget-object v1, p0, Lcom/xiaopeng/aicabin/logic/-$$Lambda$a$EXtpaoc8ipNIj7-TQ2lEUNPeFwA;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/aicabin/logic/-$$Lambda$a$EXtpaoc8ipNIj7-TQ2lEUNPeFwA;->f$2:Lcom/xiaopeng/aicabin/logic/ILogicCallback;

    iget-object v3, p0, Lcom/xiaopeng/aicabin/logic/-$$Lambda$a$EXtpaoc8ipNIj7-TQ2lEUNPeFwA;->f$3:Lcom/xiaopeng/aicabin/logic/IAsyncLogic;

    iget-object v4, p0, Lcom/xiaopeng/aicabin/logic/-$$Lambda$a$EXtpaoc8ipNIj7-TQ2lEUNPeFwA;->f$4:Lcom/xiaopeng/aicabin/DataReq;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/aicabin/logic/a;->lambda$EXtpaoc8ipNIj7-TQ2lEUNPeFwA(Lcom/xiaopeng/aicabin/logic/a;Ljava/lang/String;Lcom/xiaopeng/aicabin/logic/ILogicCallback;Lcom/xiaopeng/aicabin/logic/IAsyncLogic;Lcom/xiaopeng/aicabin/DataReq;Lcom/xiaopeng/aicabin/DataResp;)V

    return-void
.end method

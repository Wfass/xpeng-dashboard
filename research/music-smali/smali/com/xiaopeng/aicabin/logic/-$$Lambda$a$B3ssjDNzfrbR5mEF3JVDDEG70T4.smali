.class public final synthetic Lcom/xiaopeng/aicabin/logic/-$$Lambda$a$B3ssjDNzfrbR5mEF3JVDDEG70T4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/aicabin/logic/a;

.field private final synthetic f$1:Lcom/xiaopeng/aicabin/DataReq;

.field private final synthetic f$2:Lcom/xiaopeng/aicabin/logic/IAsyncLogic;

.field private final synthetic f$3:Ljava/lang/String;

.field private final synthetic f$4:Lcom/xiaopeng/aicabin/logic/ILogicCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/aicabin/logic/a;Lcom/xiaopeng/aicabin/DataReq;Lcom/xiaopeng/aicabin/logic/IAsyncLogic;Ljava/lang/String;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/aicabin/logic/-$$Lambda$a$B3ssjDNzfrbR5mEF3JVDDEG70T4;->f$0:Lcom/xiaopeng/aicabin/logic/a;

    iput-object p2, p0, Lcom/xiaopeng/aicabin/logic/-$$Lambda$a$B3ssjDNzfrbR5mEF3JVDDEG70T4;->f$1:Lcom/xiaopeng/aicabin/DataReq;

    iput-object p3, p0, Lcom/xiaopeng/aicabin/logic/-$$Lambda$a$B3ssjDNzfrbR5mEF3JVDDEG70T4;->f$2:Lcom/xiaopeng/aicabin/logic/IAsyncLogic;

    iput-object p4, p0, Lcom/xiaopeng/aicabin/logic/-$$Lambda$a$B3ssjDNzfrbR5mEF3JVDDEG70T4;->f$3:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaopeng/aicabin/logic/-$$Lambda$a$B3ssjDNzfrbR5mEF3JVDDEG70T4;->f$4:Lcom/xiaopeng/aicabin/logic/ILogicCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/xiaopeng/aicabin/logic/-$$Lambda$a$B3ssjDNzfrbR5mEF3JVDDEG70T4;->f$0:Lcom/xiaopeng/aicabin/logic/a;

    iget-object v1, p0, Lcom/xiaopeng/aicabin/logic/-$$Lambda$a$B3ssjDNzfrbR5mEF3JVDDEG70T4;->f$1:Lcom/xiaopeng/aicabin/DataReq;

    iget-object v2, p0, Lcom/xiaopeng/aicabin/logic/-$$Lambda$a$B3ssjDNzfrbR5mEF3JVDDEG70T4;->f$2:Lcom/xiaopeng/aicabin/logic/IAsyncLogic;

    iget-object v3, p0, Lcom/xiaopeng/aicabin/logic/-$$Lambda$a$B3ssjDNzfrbR5mEF3JVDDEG70T4;->f$3:Ljava/lang/String;

    iget-object v4, p0, Lcom/xiaopeng/aicabin/logic/-$$Lambda$a$B3ssjDNzfrbR5mEF3JVDDEG70T4;->f$4:Lcom/xiaopeng/aicabin/logic/ILogicCallback;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/xiaopeng/aicabin/logic/a;->lambda$B3ssjDNzfrbR5mEF3JVDDEG70T4(Lcom/xiaopeng/aicabin/logic/a;Lcom/xiaopeng/aicabin/DataReq;Lcom/xiaopeng/aicabin/logic/IAsyncLogic;Ljava/lang/String;Lcom/xiaopeng/aicabin/logic/ILogicCallback;)V

    return-void
.end method

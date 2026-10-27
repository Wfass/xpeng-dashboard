.class public final synthetic Lcom/xiaopeng/devtools/system/service/-$$Lambda$SecurityCheckService$yBU7oLtHhzWUh8V-R21Zh0S1WqU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Z

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/xiaopeng/devtools/system/service/-$$Lambda$SecurityCheckService$yBU7oLtHhzWUh8V-R21Zh0S1WqU;->f$0:Z

    iput p2, p0, Lcom/xiaopeng/devtools/system/service/-$$Lambda$SecurityCheckService$yBU7oLtHhzWUh8V-R21Zh0S1WqU;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lcom/xiaopeng/devtools/system/service/-$$Lambda$SecurityCheckService$yBU7oLtHhzWUh8V-R21Zh0S1WqU;->f$0:Z

    iget v1, p0, Lcom/xiaopeng/devtools/system/service/-$$Lambda$SecurityCheckService$yBU7oLtHhzWUh8V-R21Zh0S1WqU;->f$1:I

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/system/service/SecurityCheckService;->lambda$yBU7oLtHhzWUh8V-R21Zh0S1WqU(ZI)V

    return-void
.end method

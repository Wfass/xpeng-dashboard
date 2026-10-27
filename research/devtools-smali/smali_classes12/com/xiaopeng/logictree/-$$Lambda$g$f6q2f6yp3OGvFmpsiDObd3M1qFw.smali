.class public final synthetic Lcom/xiaopeng/logictree/-$$Lambda$g$f6q2f6yp3OGvFmpsiDObd3M1qFw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/logictree/g;

.field private final synthetic f$1:Lcom/xiaopeng/logictree/handler/h;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/logictree/g;Lcom/xiaopeng/logictree/handler/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/logictree/-$$Lambda$g$f6q2f6yp3OGvFmpsiDObd3M1qFw;->f$0:Lcom/xiaopeng/logictree/g;

    iput-object p2, p0, Lcom/xiaopeng/logictree/-$$Lambda$g$f6q2f6yp3OGvFmpsiDObd3M1qFw;->f$1:Lcom/xiaopeng/logictree/handler/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/logictree/-$$Lambda$g$f6q2f6yp3OGvFmpsiDObd3M1qFw;->f$0:Lcom/xiaopeng/logictree/g;

    iget-object v1, p0, Lcom/xiaopeng/logictree/-$$Lambda$g$f6q2f6yp3OGvFmpsiDObd3M1qFw;->f$1:Lcom/xiaopeng/logictree/handler/h;

    invoke-static {v0, v1}, Lcom/xiaopeng/logictree/g;->lambda$f6q2f6yp3OGvFmpsiDObd3M1qFw(Lcom/xiaopeng/logictree/g;Lcom/xiaopeng/logictree/handler/h;)V

    return-void
.end method

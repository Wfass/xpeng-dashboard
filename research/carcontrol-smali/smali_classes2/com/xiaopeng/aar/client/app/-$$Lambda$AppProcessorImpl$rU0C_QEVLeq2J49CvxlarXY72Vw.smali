.class public final synthetic Lcom/xiaopeng/aar/client/app/-$$Lambda$AppProcessorImpl$rU0C_QEVLeq2J49CvxlarXY72Vw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/aar/client/ApiListener;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/aar/client/ApiListener;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/aar/client/app/-$$Lambda$AppProcessorImpl$rU0C_QEVLeq2J49CvxlarXY72Vw;->f$0:Lcom/xiaopeng/aar/client/ApiListener;

    iput-object p2, p0, Lcom/xiaopeng/aar/client/app/-$$Lambda$AppProcessorImpl$rU0C_QEVLeq2J49CvxlarXY72Vw;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/xiaopeng/aar/client/app/-$$Lambda$AppProcessorImpl$rU0C_QEVLeq2J49CvxlarXY72Vw;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/aar/client/app/-$$Lambda$AppProcessorImpl$rU0C_QEVLeq2J49CvxlarXY72Vw;->f$0:Lcom/xiaopeng/aar/client/ApiListener;

    iget-object v1, p0, Lcom/xiaopeng/aar/client/app/-$$Lambda$AppProcessorImpl$rU0C_QEVLeq2J49CvxlarXY72Vw;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/aar/client/app/-$$Lambda$AppProcessorImpl$rU0C_QEVLeq2J49CvxlarXY72Vw;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/aar/client/app/AppProcessorImpl;->lambda$onServerStatus$1(Lcom/xiaopeng/aar/client/ApiListener;Ljava/lang/String;I)V

    return-void
.end method

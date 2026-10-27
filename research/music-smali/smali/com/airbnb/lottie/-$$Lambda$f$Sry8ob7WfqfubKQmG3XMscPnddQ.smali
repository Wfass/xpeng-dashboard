.class public final synthetic Lcom/airbnb/lottie/-$$Lambda$f$Sry8ob7WfqfubKQmG3XMscPnddQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/airbnb/lottie/f$a;


# instance fields
.field private final synthetic f$0:Lcom/airbnb/lottie/f;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/f;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/-$$Lambda$f$Sry8ob7WfqfubKQmG3XMscPnddQ;->f$0:Lcom/airbnb/lottie/f;

    iput-object p2, p0, Lcom/airbnb/lottie/-$$Lambda$f$Sry8ob7WfqfubKQmG3XMscPnddQ;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/airbnb/lottie/-$$Lambda$f$Sry8ob7WfqfubKQmG3XMscPnddQ;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/airbnb/lottie/-$$Lambda$f$Sry8ob7WfqfubKQmG3XMscPnddQ;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run(Lcom/airbnb/lottie/d;)V
    .locals 4

    iget-object v0, p0, Lcom/airbnb/lottie/-$$Lambda$f$Sry8ob7WfqfubKQmG3XMscPnddQ;->f$0:Lcom/airbnb/lottie/f;

    iget-object v1, p0, Lcom/airbnb/lottie/-$$Lambda$f$Sry8ob7WfqfubKQmG3XMscPnddQ;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/airbnb/lottie/-$$Lambda$f$Sry8ob7WfqfubKQmG3XMscPnddQ;->f$2:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/airbnb/lottie/-$$Lambda$f$Sry8ob7WfqfubKQmG3XMscPnddQ;->f$3:Z

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/airbnb/lottie/f;->lambda$setMinAndMaxFrame$9$f(Ljava/lang/String;Ljava/lang/String;ZLcom/airbnb/lottie/d;)V

    return-void
.end method

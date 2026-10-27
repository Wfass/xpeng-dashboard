.class public final synthetic Lcom/airbnb/lottie/-$$Lambda$e$kB7E7JzsF7bmktav3X_QrNwHjdo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/airbnb/lottie/h;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/-$$Lambda$e$kB7E7JzsF7bmktav3X_QrNwHjdo;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/airbnb/lottie/-$$Lambda$e$kB7E7JzsF7bmktav3X_QrNwHjdo;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/-$$Lambda$e$kB7E7JzsF7bmktav3X_QrNwHjdo;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/airbnb/lottie/-$$Lambda$e$kB7E7JzsF7bmktav3X_QrNwHjdo;->f$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    check-cast p1, Lcom/airbnb/lottie/d;

    invoke-static {v0, v1, p1}, Lcom/airbnb/lottie/e;->lambda$kB7E7JzsF7bmktav3X_QrNwHjdo(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/airbnb/lottie/d;)V

    return-void
.end method

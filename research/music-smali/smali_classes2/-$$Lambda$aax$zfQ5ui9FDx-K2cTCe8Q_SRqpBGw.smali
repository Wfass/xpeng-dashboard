.class public final synthetic L-$$Lambda$aax$zfQ5ui9FDx-K2cTCe8Q_SRqpBGw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic f$2:Ljava/lang/reflect/Method;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, L-$$Lambda$aax$zfQ5ui9FDx-K2cTCe8Q_SRqpBGw;->f$0:Ljava/lang/String;

    iput-object p2, p0, L-$$Lambda$aax$zfQ5ui9FDx-K2cTCe8Q_SRqpBGw;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, L-$$Lambda$aax$zfQ5ui9FDx-K2cTCe8Q_SRqpBGw;->f$2:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, L-$$Lambda$aax$zfQ5ui9FDx-K2cTCe8Q_SRqpBGw;->f$0:Ljava/lang/String;

    iget-object v1, p0, L-$$Lambda$aax$zfQ5ui9FDx-K2cTCe8Q_SRqpBGw;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, L-$$Lambda$aax$zfQ5ui9FDx-K2cTCe8Q_SRqpBGw;->f$2:Ljava/lang/reflect/Method;

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {v0, v1, v2, p1}, Laax;->lambda$zfQ5ui9FDx-K2cTCe8Q_SRqpBGw(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-void
.end method

.class public final synthetic Lcom/android/car/-$$Lambda$CallbackStatistics$_AfSYyCXJ28jZhxjaC7mRuDCc-A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/car/CallbackStatistics;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:I

.field private final synthetic f$3:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/CallbackStatistics;Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$CallbackStatistics$_AfSYyCXJ28jZhxjaC7mRuDCc-A;->f$0:Lcom/android/car/CallbackStatistics;

    iput-object p2, p0, Lcom/android/car/-$$Lambda$CallbackStatistics$_AfSYyCXJ28jZhxjaC7mRuDCc-A;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/car/-$$Lambda$CallbackStatistics$_AfSYyCXJ28jZhxjaC7mRuDCc-A;->f$2:I

    iput-object p4, p0, Lcom/android/car/-$$Lambda$CallbackStatistics$_AfSYyCXJ28jZhxjaC7mRuDCc-A;->f$3:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/car/-$$Lambda$CallbackStatistics$_AfSYyCXJ28jZhxjaC7mRuDCc-A;->f$0:Lcom/android/car/CallbackStatistics;

    iget-object v1, p0, Lcom/android/car/-$$Lambda$CallbackStatistics$_AfSYyCXJ28jZhxjaC7mRuDCc-A;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/car/-$$Lambda$CallbackStatistics$_AfSYyCXJ28jZhxjaC7mRuDCc-A;->f$2:I

    iget-object v3, p0, Lcom/android/car/-$$Lambda$CallbackStatistics$_AfSYyCXJ28jZhxjaC7mRuDCc-A;->f$3:Landroid/os/IBinder;

    check-cast p1, Landroid/car/hardware/property/CarPropertyEvent;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/car/CallbackStatistics;->lambda$addPropsMethodCallCount$3(Lcom/android/car/CallbackStatistics;Ljava/lang/String;ILandroid/os/IBinder;Landroid/car/hardware/property/CarPropertyEvent;)V

    return-void
.end method

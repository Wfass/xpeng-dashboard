.class public final synthetic Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AtlManager$IA8v4qfRXqrj1gEGgRjuif916bY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/unity/carcontrol/AtlManager;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/AtlManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AtlManager$IA8v4qfRXqrj1gEGgRjuif916bY;->f$0:Lcom/xiaopeng/unity/carcontrol/AtlManager;

    iput-object p2, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AtlManager$IA8v4qfRXqrj1gEGgRjuif916bY;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AtlManager$IA8v4qfRXqrj1gEGgRjuif916bY;->f$0:Lcom/xiaopeng/unity/carcontrol/AtlManager;

    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AtlManager$IA8v4qfRXqrj1gEGgRjuif916bY;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->lambda$onRealCall$0$AtlManager(Ljava/lang/String;)V

    return-void
.end method

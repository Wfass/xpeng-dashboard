.class abstract Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable$SessionRunnable;
.super Ljava/lang/Object;
.source "NoConcurrenceRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "SessionRunnable"
.end annotation


# instance fields
.field mRepeatable:Z

.field mSession:I

.field final synthetic this$0:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable$SessionRunnable;->this$0:Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable$SessionRunnable;->mRepeatable:Z

    return-void
.end method

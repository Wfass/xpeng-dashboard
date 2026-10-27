.class public final Lokhttp3/internal/concurrent/TaskQueue$schedule$2;
.super Lokhttp3/internal/concurrent/Task;
.source "TaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/concurrent/TaskQueue;->schedule(Ljava/lang/String;JLcar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/j;
.end annotation


# instance fields
.field final synthetic $block:Lcar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcar<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcar;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcar<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lokhttp3/internal/concurrent/TaskQueue$schedule$2;->$name:Ljava/lang/String;

    iput-object p2, p0, Lokhttp3/internal/concurrent/TaskQueue$schedule$2;->$block:Lcar;

    const/4 p2, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1, p2, v0, v1}, Lokhttp3/internal/concurrent/Task;-><init>(Ljava/lang/String;ZILccc;)V

    return-void
.end method


# virtual methods
.method public runOnce()J
    .locals 2

    .line 85
    iget-object v0, p0, Lokhttp3/internal/concurrent/TaskQueue$schedule$2;->$block:Lcar;

    invoke-interface {v0}, Lcar;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

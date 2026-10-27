.class public final Lcom/xiaopeng/lib/framework/moduleinterface/syncmodule/SyncRestoreEvent;
.super Ljava/lang/Object;
.source "SyncRestoreEvent.java"


# instance fields
.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/syncmodule/SyncData;",
            ">;"
        }
    .end annotation
.end field

.field public uid:J


# direct methods
.method public constructor <init>(JLjava/util/List;)V
    .locals 0
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/syncmodule/SyncData;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/syncmodule/SyncRestoreEvent;->uid:J

    .line 27
    iput-object p3, p0, Lcom/xiaopeng/lib/framework/moduleinterface/syncmodule/SyncRestoreEvent;->list:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SyncRestoreEvent { uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/syncmodule/SyncRestoreEvent;->uid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "; list size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/syncmodule/SyncRestoreEvent;->list:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/moduleinterface/syncmodule/SyncRestoreEvent;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

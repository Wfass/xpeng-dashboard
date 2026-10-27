.class Lcom/xiaopeng/speech/common/util/AsyncRunner$1;
.super Ljava/lang/Object;
.source "AsyncRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/common/util/AsyncRunner;->fetchAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/common/util/AsyncRunner;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/common/util/AsyncRunner;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/speech/common/util/AsyncRunner$1;->this$0:Lcom/xiaopeng/speech/common/util/AsyncRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/speech/common/util/AsyncRunner$1;->this$0:Lcom/xiaopeng/speech/common/util/AsyncRunner;

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/AsyncRunner;->access$000(Lcom/xiaopeng/speech/common/util/AsyncRunner;)V

    return-void
.end method

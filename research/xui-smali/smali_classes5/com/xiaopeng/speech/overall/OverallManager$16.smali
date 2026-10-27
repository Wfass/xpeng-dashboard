.class Lcom/xiaopeng/speech/overall/OverallManager$16;
.super Ljava/lang/Object;
.source "OverallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/overall/OverallManager;->dispatchOverallEvent(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/overall/OverallManager;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/overall/OverallManager;

    .line 649
    iput-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager$16;->this$0:Lcom/xiaopeng/speech/overall/OverallManager;

    iput-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager$16;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 652
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager$16;->this$0:Lcom/xiaopeng/speech/overall/OverallManager;

    invoke-static {v0}, Lcom/xiaopeng/speech/overall/OverallManager;->access$500(Lcom/xiaopeng/speech/overall/OverallManager;)Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager$16;->val$data:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;->onResult(Ljava/lang/String;)V

    .line 653
    return-void
.end method

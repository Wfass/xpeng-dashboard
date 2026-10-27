.class Lcom/xiaopeng/speech/overall/OverallManager$17;
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

.field final synthetic val$eventStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/overall/OverallManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/overall/OverallManager;

    .line 666
    iput-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager$17;->this$0:Lcom/xiaopeng/speech/overall/OverallManager;

    iput-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager$17;->val$eventStr:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/speech/overall/OverallManager$17;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 669
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager$17;->this$0:Lcom/xiaopeng/speech/overall/OverallManager;

    invoke-static {v0}, Lcom/xiaopeng/speech/overall/OverallManager;->access$600(Lcom/xiaopeng/speech/overall/OverallManager;)Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager$17;->val$eventStr:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager$17;->val$data:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    return-void
.end method

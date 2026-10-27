.class Lcom/xiaopeng/speech/overall/OverallManager$20;
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

.field final synthetic val$event:Ljava/lang/String;

.field final synthetic val$listener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/overall/OverallManager;Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 786
    iput-object p1, p0, Lcom/xiaopeng/speech/overall/OverallManager$20;->this$0:Lcom/xiaopeng/speech/overall/OverallManager;

    iput-object p2, p0, Lcom/xiaopeng/speech/overall/OverallManager$20;->val$listener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    iput-object p3, p0, Lcom/xiaopeng/speech/overall/OverallManager$20;->val$event:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/speech/overall/OverallManager$20;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchOverallEvent listener:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager$20;->val$listener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverallManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    iget-object v0, p0, Lcom/xiaopeng/speech/overall/OverallManager$20;->val$listener:Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;

    iget-object v1, p0, Lcom/xiaopeng/speech/overall/OverallManager$20;->val$event:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/speech/overall/OverallManager$20;->val$data:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/speech/overall/listener/IXpOverallListener;->onEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.class Lcom/xiaopeng/speech/NodeManager$5;
.super Ljava/lang/Object;
.source "NodeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/NodeManager;->register(Lcom/xiaopeng/speech/SpeechNode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/NodeManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/NodeManager;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/xiaopeng/speech/NodeManager$5;->this$0:Lcom/xiaopeng/speech/NodeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/speech/NodeManager$5;->this$0:Lcom/xiaopeng/speech/NodeManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/NodeManager;->access$000(Lcom/xiaopeng/speech/NodeManager;Z)V

    return-void
.end method

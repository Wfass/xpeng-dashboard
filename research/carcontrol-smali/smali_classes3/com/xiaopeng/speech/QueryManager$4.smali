.class Lcom/xiaopeng/speech/QueryManager$4;
.super Ljava/lang/Object;
.source "QueryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/QueryManager;->register(Lcom/xiaopeng/speech/SpeechQuery;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/QueryManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/QueryManager;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/xiaopeng/speech/QueryManager$4;->this$0:Lcom/xiaopeng/speech/QueryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/speech/QueryManager$4;->this$0:Lcom/xiaopeng/speech/QueryManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/QueryManager;->access$000(Lcom/xiaopeng/speech/QueryManager;Z)V

    return-void
.end method

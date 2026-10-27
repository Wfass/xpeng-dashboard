.class Lcom/xiaopeng/speech/ConnectManager$5;
.super Ljava/lang/Object;
.source "ConnectManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/ConnectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/ConnectManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/ConnectManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/ConnectManager;

    .line 191
    iput-object p1, p0, Lcom/xiaopeng/speech/ConnectManager$5;->this$0:Lcom/xiaopeng/speech/ConnectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/speech/ConnectManager$5;->this$0:Lcom/xiaopeng/speech/ConnectManager;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/ConnectManager;->connect()V

    .line 195
    return-void
.end method

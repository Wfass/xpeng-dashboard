.class Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$1;
.super Ljava/lang/Object;
.source "PlayerSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->playState(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

.field final synthetic val$state:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;Ljava/lang/String;I)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$1;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$1;->val$url:Ljava/lang/String;

    iput p3, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$1;->val$state:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerSelector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$1;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->access$000(Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;)Lcom/xiaopeng/musicradio/player/h$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$1;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->access$100(Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$1;->val$url:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$1;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->access$100(Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$1;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    .line 263
    invoke-static {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->access$200(Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$1;->val$state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$1;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->access$000(Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;)Lcom/xiaopeng/musicradio/player/h$a;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$1;->val$state:I

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/player/h$a;->playState(I)V

    :cond_1
    return-void
.end method

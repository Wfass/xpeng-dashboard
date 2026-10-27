.class Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$6;
.super Ljava/lang/Object;
.source "PlayerSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->onDownloaded(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$length:J

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$6;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$6;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$6;->val$key:Ljava/lang/String;

    iput-wide p4, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$6;->val$length:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 323
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$6;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->access$000(Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;)Lcom/xiaopeng/musicradio/player/h$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$6;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->access$100(Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$6;->val$url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$6;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->access$100(Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$6;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->access$000(Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;)Lcom/xiaopeng/musicradio/player/h$a;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$6;->val$key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$6;->val$length:J

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/player/h$a;->onDownloaded(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

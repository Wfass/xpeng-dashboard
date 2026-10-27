.class Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$4;
.super Ljava/lang/Object;
.source "PlayerSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->loadingChange(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

.field final synthetic val$isLoading:Z

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;Ljava/lang/String;Z)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$4;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$4;->val$url:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$4;->val$isLoading:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$4;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->access$000(Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;)Lcom/xiaopeng/musicradio/player/h$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$4;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->access$100(Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$4;->val$url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$4;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->access$100(Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$4;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->access$000(Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;)Lcom/xiaopeng/musicradio/player/h$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$4;->val$isLoading:Z

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/player/h$a;->b(Z)V

    :cond_0
    return-void
.end method

.class Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$3;
.super Ljava/lang/Object;
.source "PlayerSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->onPlayPosition(Ljava/lang/String;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

.field final synthetic val$bufferPosition:I

.field final synthetic val$position:I

.field final synthetic val$seek:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;IIZ)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$3;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    iput p2, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$3;->val$position:I

    iput p3, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$3;->val$bufferPosition:I

    iput-boolean p4, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$3;->val$seek:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$3;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->access$000(Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;)Lcom/xiaopeng/musicradio/player/h$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$3;->this$0:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->access$000(Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;)Lcom/xiaopeng/musicradio/player/h$a;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$3;->val$position:I

    iget v2, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$3;->val$bufferPosition:I

    iget-boolean v3, p0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector$3;->val$seek:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/player/h$a;->onPlayPosition(IIZ)V

    :cond_0
    return-void
.end method

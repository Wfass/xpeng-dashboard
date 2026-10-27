.class Lcom/xiaopeng/speech/vui/EventDispatcher$6;
.super Ljava/lang/Object;
.source "EventDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/EventDispatcher;->dispatch(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/EventDispatcher;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/EventDispatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/EventDispatcher;

    .line 244
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$6;->this$0:Lcom/xiaopeng/speech/vui/EventDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$6;->this$0:Lcom/xiaopeng/speech/vui/EventDispatcher;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/EventDispatcher;->run()V

    .line 248
    return-void
.end method

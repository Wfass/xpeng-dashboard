.class Lcom/xiaopeng/speech/vui/EventDispatcher$1;
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

.field final synthetic val$vuiSceneListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/EventDispatcher;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/EventDispatcher;

    .line 152
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$1;->this$0:Lcom/xiaopeng/speech/vui/EventDispatcher;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$1;->val$vuiSceneListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$1;->val$vuiSceneListener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    check-cast v0, Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$1;->this$0:Lcom/xiaopeng/speech/vui/EventDispatcher;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/EventDispatcher;->access$100(Lcom/xiaopeng/speech/vui/EventDispatcher;)Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$1;->this$0:Lcom/xiaopeng/speech/vui/EventDispatcher;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/EventDispatcher;->access$000(Lcom/xiaopeng/speech/vui/EventDispatcher;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;->onVuiEvent(Ljava/lang/String;)V

    .line 156
    return-void
.end method

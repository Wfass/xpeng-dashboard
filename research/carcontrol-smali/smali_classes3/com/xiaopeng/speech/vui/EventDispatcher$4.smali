.class Lcom/xiaopeng/speech/vui/EventDispatcher$4;
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

.field final synthetic val$listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/EventDispatcher;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$4;->this$0:Lcom/xiaopeng/speech/vui/EventDispatcher;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$4;->val$listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$4;->val$listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    instance-of v1, v0, Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;

    if-eqz v1, :cond_0

    .line 210
    check-cast v0, Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$4;->this$0:Lcom/xiaopeng/speech/vui/EventDispatcher;

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/EventDispatcher;->access$100(Lcom/xiaopeng/speech/vui/EventDispatcher;)Lcom/google/gson/Gson;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$4;->this$0:Lcom/xiaopeng/speech/vui/EventDispatcher;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/EventDispatcher;->access$000(Lcom/xiaopeng/speech/vui/EventDispatcher;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/speech/vui/listener/IUnityVuiSceneListener;->onVuiEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_0
    new-instance v1, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$4;->this$0:Lcom/xiaopeng/speech/vui/EventDispatcher;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/EventDispatcher;->access$000(Lcom/xiaopeng/speech/vui/EventDispatcher;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;-><init>(Lcom/xiaopeng/vui/commons/model/VuiElement;)V

    invoke-interface {v0, v1}, Lcom/xiaopeng/vui/commons/IVuiSceneListener;->onVuiEvent(Lcom/xiaopeng/vui/commons/model/VuiEvent;)V

    :goto_0
    return-void
.end method

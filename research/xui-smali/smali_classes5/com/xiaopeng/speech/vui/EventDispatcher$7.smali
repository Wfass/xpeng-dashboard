.class Lcom/xiaopeng/speech/vui/EventDispatcher$7;
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
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/EventDispatcher;

    .line 265
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$7;->this$0:Lcom/xiaopeng/speech/vui/EventDispatcher;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$7;->val$listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$7;->val$listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    new-instance v1, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$7;->this$0:Lcom/xiaopeng/speech/vui/EventDispatcher;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/EventDispatcher;->access$000(Lcom/xiaopeng/speech/vui/EventDispatcher;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaopeng/speech/vui/model/VuiEventImpl;-><init>(Lcom/xiaopeng/vui/commons/model/VuiElement;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/xiaopeng/vui/commons/IVuiSceneListener;->onVuiEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)V

    .line 269
    return-void
.end method

.class Lcom/xiaopeng/speech/vui/EventDispatcher$9;
.super Ljava/lang/Object;
.source "EventDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/EventDispatcher;->callOnVuiEvent(Lcom/xiaopeng/vui/commons/model/VuiElement;Lcom/xiaopeng/speech/vui/model/VuiEventInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/EventDispatcher;

.field final synthetic val$event:Lcom/xiaopeng/vui/commons/model/VuiEvent;

.field final synthetic val$listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

.field final synthetic val$viewInfo:Lcom/xiaopeng/speech/vui/model/VuiEventInfo;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/EventDispatcher;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/speech/vui/model/VuiEventInfo;Lcom/xiaopeng/vui/commons/model/VuiEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/EventDispatcher;

    .line 460
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$9;->this$0:Lcom/xiaopeng/speech/vui/EventDispatcher;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$9;->val$listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    iput-object p3, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$9;->val$viewInfo:Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    iput-object p4, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$9;->val$event:Lcom/xiaopeng/vui/commons/model/VuiEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 463
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$9;->val$listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$9;->val$viewInfo:Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    iget-object v1, v1, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$9;->val$event:Lcom/xiaopeng/vui/commons/model/VuiEvent;

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/vui/commons/IVuiSceneListener;->onVuiEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)V

    .line 464
    return-void
.end method

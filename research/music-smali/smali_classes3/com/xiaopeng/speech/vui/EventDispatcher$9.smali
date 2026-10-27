.class Lcom/xiaopeng/speech/vui/EventDispatcher$9;
.super Ljava/lang/Object;
.source "EventDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/EventDispatcher;->callOnVuiEvent(Lbye;Lcom/xiaopeng/speech/vui/model/VuiEventInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/EventDispatcher;

.field final synthetic val$event:Lbyf;

.field final synthetic val$listener:Lbxv;

.field final synthetic val$viewInfo:Lcom/xiaopeng/speech/vui/model/VuiEventInfo;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/EventDispatcher;Lbxv;Lcom/xiaopeng/speech/vui/model/VuiEventInfo;Lbyf;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$9;->this$0:Lcom/xiaopeng/speech/vui/EventDispatcher;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$9;->val$listener:Lbxv;

    iput-object p3, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$9;->val$viewInfo:Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    iput-object p4, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$9;->val$event:Lbyf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 463
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$9;->val$listener:Lbxv;

    iget-object v1, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$9;->val$viewInfo:Lcom/xiaopeng/speech/vui/model/VuiEventInfo;

    iget-object v1, v1, Lcom/xiaopeng/speech/vui/model/VuiEventInfo;->hitView:Landroid/view/View;

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/EventDispatcher$9;->val$event:Lbyf;

    invoke-interface {v0, v1, v2}, Lbxv;->onVuiEvent(Landroid/view/View;Lbyf;)V

    return-void
.end method

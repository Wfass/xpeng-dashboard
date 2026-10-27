.class Lcom/xiaopeng/speech/vui/VuiEngineImpl$6;
.super Ljava/lang/Object;
.source "VuiEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiEngineImpl;->handlerEnterScene(Ljava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

.field final synthetic val$listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    .line 675
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$6;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$6;->val$listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 678
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$6;->val$listener:Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    invoke-interface {v0}, Lcom/xiaopeng/vui/commons/IVuiSceneListener;->onVuiStateChanged()V

    .line 679
    return-void
.end method

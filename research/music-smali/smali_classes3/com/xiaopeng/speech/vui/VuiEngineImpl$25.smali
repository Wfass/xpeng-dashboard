.class Lcom/xiaopeng/speech/vui/VuiEngineImpl$25;
.super Ljava/lang/Object;
.source "VuiEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/vui/VuiEngineImpl;->onVuiStateChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

.field final synthetic val$listener:Lbxv;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/vui/VuiEngineImpl;Lbxv;)V
    .locals 0

    .line 1974
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$25;->this$0:Lcom/xiaopeng/speech/vui/VuiEngineImpl;

    iput-object p2, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$25;->val$listener:Lbxv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1977
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/VuiEngineImpl$25;->val$listener:Lbxv;

    invoke-interface {v0}, Lbxv;->onVuiStateChanged()V

    return-void
.end method

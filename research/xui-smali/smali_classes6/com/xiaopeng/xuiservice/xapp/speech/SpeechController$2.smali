.class Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController$2;
.super Ljava/lang/Object;
.source "SpeechController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->stopApplicationForResult(Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;

    .line 504
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;->access$000(Lcom/xiaopeng/xuiservice/xapp/speech/SpeechController;)V

    .line 508
    return-void
.end method

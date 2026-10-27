.class Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTimeOut;
.super Ljava/lang/Object;
.source "VuiFloatingLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunnableTimeOut"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;

.field private type:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;I)V
    .locals 0
    .param p2, "type"    # I

    .line 158
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTimeOut;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput p2, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTimeOut;->type:I

    .line 160
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTimeOut;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RunnableTimeOut type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTimeOut;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->access$000(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTimeOut;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;

    iget v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTimeOut;->type:I

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->access$200(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;I)Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingView;->requestNeedReLoadDrawable()V

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTimeOut;->this$0:Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;

    iget v1, p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer$RunnableTimeOut;->type:I

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;->access$100(Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;I)V

    .line 167
    return-void
.end method

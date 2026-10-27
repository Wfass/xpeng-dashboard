.class Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment$2;
.super Landroid/os/CountDownTimer;
.source "LluDanceMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->startTimeLeftCountDown(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "x0",
            "x1"
        }
    .end annotation

    .line 329
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment$2;->this$0:Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 6

    .line 339
    invoke-static {}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "count down just for update ui. finish to to nothing"

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment$2;->this$0:Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;

    invoke-static {v0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->access$400(Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;)Lcom/xiaopeng/xui/widget/XRelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVisibility(I)V

    .line 341
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment$2;->this$0:Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;

    invoke-virtual {v1}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->vuiSceneId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment$2;->this$0:Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;

    invoke-virtual {v2}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment$2;->this$0:Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;

    invoke-static {v4}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->access$400(Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;)Lcom/xiaopeng/xui/widget/XRelativeLayout;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->updateVuiScene(Ljava/lang/String;Landroid/content/Context;[Landroid/view/View;)V

    return-void
.end method

.method public onTick(J)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisUntilFinished"
        }
    .end annotation

    .line 332
    invoke-static {p1, p2}, Lcom/xiaopeng/lludancemanager/LluDanceOrderTimeHelper;->getTimeLeftFormat(J)Ljava/lang/String;

    move-result-object p1

    .line 333
    invoke-static {}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->access$100()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "time left onTick : format time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object p2, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment$2;->this$0:Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;

    invoke-static {p2}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->access$300(Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment$2;->this$0:Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;

    sget v1, Lcom/xiaopeng/lludancemanager/R$string;->llu_dance_fragment_order_info_time_left:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

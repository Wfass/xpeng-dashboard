.class Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "OneClickDiagnosisActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Eo:Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity$1;->Eo:Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 66
    const-string v0, "OneClickDiagnosisActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive action-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x6342a1e0

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const v1, -0x5a4113c8

    if-eq v0, v1, :cond_2

    const v1, -0x39738481

    if-eq v0, v1, :cond_1

    const v1, -0x254e496f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x2

    goto :goto_1

    :cond_2
    const-string v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x3

    goto :goto_1

    :cond_3
    const-string v0, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    move p2, v2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p2, -0x1

    :goto_1
    packed-switch p2, :pswitch_data_0

    goto :goto_2

    .line 75
    :pswitch_0
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity$1;->Eo:Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/g;->V(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->a(Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity$1;->Eo:Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->b(Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;)Lcom/xiaopeng/xui/widget/XButton;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity$1;->Eo:Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;

    invoke-static {p2}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->a(Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    goto :goto_2

    .line 71
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity$1;->Eo:Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->a(Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity$1;->Eo:Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;

    invoke-static {p1}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->b(Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;)Lcom/xiaopeng/xui/widget/XButton;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity$1;->Eo:Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;

    invoke-static {p2}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->a(Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 73
    nop

    .line 79
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$2;
.super Landroid/os/Handler;
.source "RadioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Lq:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$2;->Lq:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 199
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 220
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$2;->Lq:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->e(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$2;->Lq:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->e(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$2;->Lq:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;

    const v4, 0x7f100270

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    aput-object p1, v2, v1

    invoke-virtual {v3, v4, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 213
    :pswitch_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$2;->Lq:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->d(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$2;->Lq:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->d(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$2;->Lq:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->di(I)V

    goto :goto_0

    .line 207
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$2;->Lq:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$2;->Lq:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double v3, p1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v3, v5

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$2;->Lq:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->di(I)V

    goto :goto_0

    .line 201
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$2;->Lq:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity$2;->Lq:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/radio/RadioActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

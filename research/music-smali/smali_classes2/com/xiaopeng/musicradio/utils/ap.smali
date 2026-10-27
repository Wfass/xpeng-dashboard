.class public Lcom/xiaopeng/musicradio/utils/ap;
.super Ljava/lang/Object;
.source "MusicDialogUtil.java"


# direct methods
.method public static a()V
    .locals 6

    .line 26
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/a;->a()Lcom/xiaopeng/musicradio/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/a;->c()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 27
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/a;->a()Lcom/xiaopeng/musicradio/utils/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/utils/a;->f()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, v0, Lcom/xiaopeng/musicradio/commonui/base/BaseActivity;

    if-nez v3, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    new-instance v3, Lcom/xiaopeng/musicradio/widget/f;

    invoke-direct {v3, v0}, Lcom/xiaopeng/musicradio/widget/f;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/widget/f;->setScreenId(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 37
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v4

    invoke-virtual {v4}, Lbdt;->m()I

    move-result v4

    const-string v5, "SELECT_MENU_SCENE"

    invoke-static {v5, v4}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/xiaopeng/musicradio/vui/c;->N(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/widget/f;->setVuiSceneId(Ljava/lang/String;)V

    .line 38
    sget-object v4, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v4}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/widget/f;->setVuiEngine(Lbxu;)V

    .line 39
    sget v4, Lbub$a;->music_collect_count_max_title_template:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lbaf;->a()Lbaf;

    move-result-object v5

    invoke-virtual {v5}, Lbaf;->b()Lbae;

    move-result-object v5

    invoke-virtual {v5}, Lbae;->i()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/xiaopeng/musicradio/widget/f;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    sget v2, Lbub$a;->music_collect_count_max_content:I

    .line 40
    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    sget v2, Lbub$a;->confirm:I

    .line 41
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/xiaopeng/musicradio/utils/ap$2;

    invoke-direct {v4}, Lcom/xiaopeng/musicradio/utils/ap$2;-><init>()V

    invoke-virtual {v1, v2, v4}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v1

    sget v2, Lbub$a;->cancel:I

    .line 50
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/musicradio/utils/ap$1;

    invoke-direct {v2, v3}, Lcom/xiaopeng/musicradio/utils/ap$1;-><init>(Lcom/xiaopeng/musicradio/widget/f;)V

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 56
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/widget/f;->show()V

    return-void

    :cond_1
    :goto_0
    const-string v0, "MusicDialogUtil"

    const-string v3, "Activity in background"

    .line 28
    invoke-static {v0, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    sget v3, Lbub$a;->music_collect_count_max_title_template:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lbaf;->a()Lbaf;

    move-result-object v4

    invoke-virtual {v4}, Lbaf;->b()Lbae;

    move-result-object v4

    invoke-virtual {v4}, Lbae;->i()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v0, v3, v2}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 30
    new-instance v1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ToastEvent;

    invoke-direct {v1, v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ToastEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    .line 31
    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

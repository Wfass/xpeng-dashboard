.class public Lcom/xiaopeng/musicradio/utils/v;
.super Ljava/lang/Object;
.source "DialogUtil.java"


# static fields
.field private static a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xui/app/XDialog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static a()V
    .locals 1

    .line 37
    sget-object v0, Lcom/xiaopeng/musicradio/utils/v;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaopeng/musicradio/utils/v;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/xiaopeng/musicradio/utils/v;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/app/XDialog;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 40
    sput-object v0, Lcom/xiaopeng/musicradio/utils/v;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lbdo;)V
    .locals 1

    .line 44
    invoke-static {}, Lbdx;->a()Lbdx;

    move-result-object v0

    invoke-virtual {v0}, Lbdx;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    .line 46
    invoke-interface {p2, p0}, Lbdo;->a(Z)V

    :cond_0
    return-void

    .line 50
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/musicradio/utils/v;->b(Ljava/lang/String;Ljava/lang/String;Lbdo;)V

    return-void
.end method

.method public static b()V
    .locals 1

    .line 93
    new-instance v0, Lcom/xiaopeng/musicradio/utils/v$3;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/utils/v$3;-><init>()V

    invoke-static {v0}, Lbql;->j(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Lbdo;)V
    .locals 4

    .line 54
    invoke-static {}, Lbni;->b()V

    .line 56
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/a;->a()Lcom/xiaopeng/musicradio/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/a;->c()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    .line 59
    :goto_0
    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "abc=="

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v2, "DialogUtil"

    const-string v3, "showXPLoginDialog: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/v;->a()V

    .line 62
    new-instance v1, Lcom/xiaopeng/musicradio/widget/f;

    invoke-direct {v1, v0}, Lcom/xiaopeng/musicradio/widget/f;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/f;->setScreenId(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 64
    sget-object v2, Lcom/xiaopeng/musicradio/vui/c;->bm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/f;->setVuiSceneId(Ljava/lang/String;)V

    .line 65
    sget-object v2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/f;->setVuiEngine(Lbxu;)V

    .line 66
    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/widget/f;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p0

    .line 67
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p0

    .line 68
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/app/XDialog;->setScreenId(I)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p0

    sget p1, Lcom/xiaopeng/musicradio/common/k$g;->program_login_ok:I

    .line 69
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/xiaopeng/musicradio/utils/v$2;

    invoke-direct {v2, v1, p2}, Lcom/xiaopeng/musicradio/utils/v$2;-><init>(Lcom/xiaopeng/musicradio/widget/f;Lbdo;)V

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p0

    sget p1, Lcom/xiaopeng/musicradio/common/k$g;->program_login_cancle:I

    .line 76
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/musicradio/utils/v$1;

    invoke-direct {p2}, Lcom/xiaopeng/musicradio/utils/v$1;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 82
    sget-object p0, Lcom/xiaopeng/musicradio/vui/c;->bm:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lcom/xiaopeng/musicradio/widget/f;->initVuiScene(Ljava/lang/String;Lbxu;)V

    .line 83
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/f;->show()V

    .line 85
    new-instance p0, Ljava/lang/ref/WeakReference;

    invoke-direct {p0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object p0, Lcom/xiaopeng/musicradio/utils/v;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

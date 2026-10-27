.class public Layv;
.super Ljava/lang/Object;
.source "NetRadioCollectManagerProxy.java"

# interfaces
.implements Lbds;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Layv$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lbee;->a()Lbee;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbee;->a(Lbds;)V

    return-void
.end method

.method public static a()Layv;
    .locals 1

    .line 43
    sget-object v0, Layv$a;->a:Layv;

    return-object v0
.end method

.method public static a(Lbdo;)V
    .locals 5

    .line 134
    invoke-static {}, Lbdx;->a()Lbdx;

    move-result-object v0

    invoke-virtual {v0}, Lbdx;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 136
    invoke-interface {p0, v0}, Lbdo;->a(Z)V

    :cond_0
    return-void

    .line 141
    :cond_1
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/a;->a()Lcom/xiaopeng/musicradio/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/a;->c()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 142
    :cond_2
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    .line 144
    :goto_0
    invoke-static {}, Lbni;->b()V

    .line 146
    new-instance v1, Lcom/xiaopeng/musicradio/widget/f;

    invoke-direct {v1, v0}, Lcom/xiaopeng/musicradio/widget/f;-><init>(Landroid/content/Context;)V

    .line 147
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/f;->setScreenId(I)Lcom/xiaopeng/xui/app/XDialog;

    .line 148
    sget-object v2, Lcom/xiaopeng/musicradio/vui/c;->bn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/f;->setVuiSceneId(Ljava/lang/String;)V

    .line 149
    sget v2, Lbuc$g;->program_xmly_login_txt:I

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/f;->setTitle(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v2

    sget v3, Lbuc$g;->netradio_login_tip_title:I

    .line 150
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/app/XDialog;->setMessage(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object v2

    sget v3, Lbuc$g;->netradio_login_ok:I

    .line 151
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Layv$4;

    invoke-direct {v4, v1, p0}, Layv$4;-><init>(Lcom/xiaopeng/musicradio/widget/f;Lbdo;)V

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/xui/app/XDialog;->setPositiveButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    move-result-object p0

    sget v2, Lbuc$g;->netradio_login_cancle:I

    .line 158
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Layv$3;

    invoke-direct {v3}, Layv$3;-><init>()V

    invoke-virtual {p0, v2, v3}, Lcom/xiaopeng/xui/app/XDialog;->setNegativeButton(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/XDialogInterface$OnClickListener;)Lcom/xiaopeng/xui/app/XDialog;

    .line 164
    sget-object p0, Lcom/xiaopeng/musicradio/vui/c;->bn:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Lcom/xiaopeng/musicradio/widget/f;->initVuiScene(Ljava/lang/String;Lbxu;)V

    .line 165
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/f;->show()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 1

    .line 77
    invoke-static {}, Lbda;->a()Lbda;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbda;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0, p1}, Layv;->b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {p0, p1}, Layv;->c(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p0, p1}, Layv;->b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0, p1}, Layv;->c(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 52
    invoke-static {}, Layu;->a()Layu;

    move-result-object v0

    invoke-virtual {v0}, Layu;->b()V

    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 2

    const-string v0, "NetRadioCollectManagerProxy"

    const-string v1, "netRadioLove: "

    .line 89
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    new-instance v0, Layv$1;

    invoke-direct {v0, p0, p1}, Layv$1;-><init>(Layv;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    invoke-static {v0}, Layv;->a(Lbdo;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 57
    invoke-static {}, Layu;->a()Layu;

    move-result-object v0

    invoke-virtual {v0}, Layu;->c()V

    return-void
.end method

.method public c(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 2

    const-string v0, "NetRadioCollectManagerProxy"

    const-string v1, "netRadioCancelLove: "

    .line 109
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lbdx;->a()Lbdx;

    move-result-object v0

    new-instance v1, Layv$2;

    invoke-direct {v1, p0, p1}, Layv$2;-><init>(Layv;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    invoke-virtual {v0, v1}, Lbdx;->a(Lbdo;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 130
    invoke-static {}, Layu;->a()Layu;

    move-result-object v0

    invoke-virtual {v0}, Layu;->f()V

    return-void
.end method

.method public e()V
    .locals 1

    .line 126
    invoke-static {}, Layu;->a()Layu;

    move-result-object v0

    invoke-virtual {v0}, Layu;->e()V

    return-void
.end method

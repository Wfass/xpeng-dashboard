.class public Laqm;
.super Landroid/widget/LinearLayout;
.source "XmlyLoginFlowLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected a:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/xiaopeng/xui/widget/XLoading;

.field private h:Landroid/widget/ImageView;

.field private i:Laqk;

.field private j:Laql;

.field private k:Lcom/xiaopeng/xui/widget/XTextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field private p:Lcom/xiaopeng/xui/widget/XButton;

.field private q:Lcom/xiaopeng/musicradio/widget/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XDialogPure;)V
    .locals 3

    .line 59
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v0, p0, Laqm;->q:Lcom/xiaopeng/musicradio/widget/k;

    .line 60
    iput-object p1, p0, Laqm;->b:Landroid/content/Context;

    .line 61
    iget-object p1, p0, Laqm;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/xiaopeng/musicradio/common/k$f;->dialog_xmly_qr_login:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 64
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->configuration_changed_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    iput-object v0, p0, Laqm;->a:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    .line 66
    iget-object v0, p0, Laqm;->a:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->a()V

    .line 67
    iget-object v0, p0, Laqm;->a:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    new-instance v1, Laqm$1;

    invoke-direct {v1, p0}, Laqm$1;-><init>(Laqm;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->setOnLayoutChangedListener(Lcom/xiaopeng/musicradio/widget/LayoutChangedView$a;)V

    .line 82
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->tv_qr_code_tips:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laqm;->n:Landroid/widget/TextView;

    .line 83
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->tv_qr_account_tips:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laqm;->o:Landroid/widget/TextView;

    .line 84
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->tv_privacy:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laqm;->l:Landroid/widget/TextView;

    .line 85
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->tv_service:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laqm;->m:Landroid/widget/TextView;

    .line 86
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Laqm;->k:Lcom/xiaopeng/xui/widget/XTextView;

    .line 89
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->iv_qr_code_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Laqm;->c:Landroid/widget/ImageView;

    .line 90
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->iv_qr_code_overlay:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Laqm;->d:Landroid/widget/ImageView;

    .line 91
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->iv_qr_code:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Laqm;->e:Landroid/widget/ImageView;

    .line 92
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->iv_qr_retry:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Laqm;->f:Landroid/widget/ImageView;

    .line 93
    iget-object v0, p0, Laqm;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->v_loading:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLoading;

    iput-object v0, p0, Laqm;->g:Lcom/xiaopeng/xui/widget/XLoading;

    .line 95
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->iv_qr_code_fail:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Laqm;->h:Landroid/widget/ImageView;

    .line 96
    iget-object v0, p0, Laqm;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Laqm;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->cancle_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p0, Laqm;->p:Lcom/xiaopeng/xui/widget/XButton;

    .line 99
    sget-object v0, Lcom/xiaopeng/musicradio/vui/c;->bF:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/app/XDialogPure;->setVuiSceneId(Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/app/XDialogPure;->setVuiEngine(Lbxu;)V

    .line 101
    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/app/XDialogPure;->setContentView(Landroid/view/View;)V

    .line 102
    iget-object p1, p0, Laqm;->q:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 103
    invoke-virtual {p0}, Laqm;->a()V

    return-void
.end method

.method static synthetic a(Laqm;)Lcom/xiaopeng/musicradio/widget/k;
    .locals 0

    .line 27
    iget-object p0, p0, Laqm;->q:Lcom/xiaopeng/musicradio/widget/k;

    return-object p0
.end method

.method private e()V
    .locals 2

    .line 117
    iget-object v0, p0, Laqm;->n:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Laqm;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Laqm;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Laqm;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Laqm;->k:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 107
    invoke-direct {p0}, Laqm;->e()V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "LoginFlowFragment"

    const-string v1, "showQrLoginDialog"

    .line 168
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Laqm;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Laqm;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Laqm;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 172
    iget-object p1, p0, Laqm;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    iget-object p1, p0, Laqm;->f:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    iget-object p1, p0, Laqm;->g:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 175
    iget-object p1, p0, Laqm;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public b()V
    .locals 3

    const-string v0, "LoginFlowFragment"

    const-string v1, "showRequestQrDialog"

    .line 156
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Laqm;->i:Laqk;

    invoke-virtual {v0}, Laqk;->b()V

    .line 158
    iget-object v0, p0, Laqm;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Laqm;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Laqm;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Laqm;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Laqm;->g:Lcom/xiaopeng/xui/widget/XLoading;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Laqm;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public c()V
    .locals 3

    const-string v0, "LoginFlowFragment"

    const-string v1, "showQrLoginFailDialog"

    .line 180
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Laqm;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Laqm;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Laqm;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Laqm;->f:Landroid/widget/ImageView;

    sget v2, Lcom/xiaopeng/musicradio/common/k$d;->ic_qr_login_refresh:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    iget-object v0, p0, Laqm;->f:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Laqm;->g:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Laqm;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public d()V
    .locals 3

    const-string v0, "LoginFlowFragment"

    const-string v1, "showQrLoginOvertimeDialog"

    .line 192
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Laqm;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Laqm;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Laqm;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Laqm;->f:Landroid/widget/ImageView;

    sget v2, Lcom/xiaopeng/musicradio/common/k$d;->ic_qr_login_refresh_for_overtime:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    iget-object v0, p0, Laqm;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Laqm;->g:Lcom/xiaopeng/xui/widget/XLoading;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Laqm;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Laqm;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginFlowFragment"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/xiaopeng/musicradio/common/k$e;->iv_qr_retry:I

    if-ne v0, v2, :cond_0

    .line 137
    invoke-virtual {p0}, Laqm;->b()V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/xiaopeng/musicradio/common/k$e;->tv_privacy:I

    const/16 v3, 0x5dc

    if-ne v0, v2, :cond_1

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1, v3}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecuteLong(II)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "onClick: tv_privacy"

    .line 140
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance p1, Lcom/xiaopeng/musicradio/web/b;

    iget-object v3, p0, Laqm;->b:Landroid/content/Context;

    const/4 v6, -0x1

    const/16 v7, 0xa0

    const-string v4, "file:////android_asset/xmly/xmly_privacy.html"

    const-string v5, "file:////android_asset/xmly/xmly_privacy_night.html"

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/musicradio/web/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 142
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/web/b;->d()V

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/xiaopeng/musicradio/common/k$e;->tv_service:I

    if-ne v0, v2, :cond_2

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1, v3}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecuteLong(II)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "onClick: tv_service"

    .line 146
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance p1, Lcom/xiaopeng/musicradio/web/b;

    iget-object v3, p0, Laqm;->b:Landroid/content/Context;

    const/4 v6, -0x1

    const/16 v7, 0xa0

    const-string v4, "file:////android_asset/xmly/xmly_service.html"

    const-string v5, "file:////android_asset/xmly/xmly_service_night.html"

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/musicradio/web/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 148
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/web/b;->d()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 112
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 113
    invoke-direct {p0}, Laqm;->e()V

    return-void
.end method

.method public setCancleListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 204
    iget-object v0, p0, Laqm;->p:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setQLoginFlowDialog(Laql;)V
    .locals 0

    .line 125
    iput-object p1, p0, Laqm;->j:Laql;

    return-void
.end method

.method public setQrCodePresenter(Laqk;)V
    .locals 0

    .line 129
    iput-object p1, p0, Laqm;->i:Laqk;

    return-void
.end method

.method public setTitleRes(I)V
    .locals 1

    .line 208
    iget-object v0, p0, Laqm;->k:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    return-void
.end method

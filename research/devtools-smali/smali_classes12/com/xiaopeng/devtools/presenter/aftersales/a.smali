.class public Lcom/xiaopeng/devtools/presenter/aftersales/a;
.super Ljava/lang/Object;
.source "AuthModePresenter.java"


# static fields
.field private static final vi:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private pd:Lcom/xiaopeng/xui/app/e;

.field private vj:Lcom/xiaopeng/xui/app/c;

.field private vk:Lcom/xiaopeng/xui/widget/XCompoundButton;

.field private vl:Lcom/xiaopeng/aftersales/AfterSalesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/a/a;->WZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "REQUEST_TO_ENTER_AUTH_MODE"

    .line 41
    invoke-static {v1}, Lcom/xiaopeng/a/a$f;->ef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->vi:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->mContext:Landroid/content/Context;

    .line 51
    const-string v0, "xiaopeng_aftersales"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/aftersales/AfterSalesManager;

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/presenter/aftersales/a;)Lcom/xiaopeng/aftersales/AfterSalesManager;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->vl:Lcom/xiaopeng/aftersales/AfterSalesManager;

    return-object p0
.end method

.method private synthetic a(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 73
    if-eqz p2, :cond_0

    .line 74
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->vj:Lcom/xiaopeng/xui/app/c;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/c;->aX(Z)Lcom/xiaopeng/xui/app/c;

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->vj:Lcom/xiaopeng/xui/app/c;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/c;->aX(Z)Lcom/xiaopeng/xui/app/c;

    .line 78
    :goto_0
    return-void
.end method

.method private synthetic a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    .line 67
    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 68
    const p1, 0x7f100034

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 69
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->vj:Lcom/xiaopeng/xui/app/c;

    const p2, 0x7f100035

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/c;->dV(I)Lcom/xiaopeng/xui/app/c;

    .line 70
    return-void
.end method

.method private synthetic a(Lcom/xiaopeng/xui/app/c;I)V
    .locals 1

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->vk:Lcom/xiaopeng/xui/widget/XCompoundButton;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XCompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->pd:Lcom/xiaopeng/xui/app/e;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/e;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7ff

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 84
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->pd:Lcom/xiaopeng/xui/app/e;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/e;->create()V

    .line 85
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->pd:Lcom/xiaopeng/xui/app/e;

    iget-object p2, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->mContext:Landroid/content/Context;

    const v0, 0x7f1002ee

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/e;->setMessage(Ljava/lang/CharSequence;)V

    .line 86
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->pd:Lcom/xiaopeng/xui/app/e;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/e;->show()V

    .line 87
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/aftersales/a;->hT()V

    .line 89
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/presenter/aftersales/a;)Lcom/xiaopeng/xui/app/e;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->pd:Lcom/xiaopeng/xui/app/e;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/presenter/aftersales/a;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/aftersales/a;->hU()V

    return-void
.end method

.method private hT()V
    .locals 1

    .line 99
    new-instance v0, Lcom/xiaopeng/devtools/presenter/aftersales/-$$Lambda$a$M9cpuquXuPKpnLWQwSYkdMTE9mM;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/-$$Lambda$a$M9cpuquXuPKpnLWQwSYkdMTE9mM;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/a;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 149
    return-void
.end method

.method private hU()V
    .locals 1

    .line 152
    new-instance v0, Lcom/xiaopeng/devtools/presenter/aftersales/-$$Lambda$a$N0SNpcYveKaxb-2EyoaJBQ3OM0M;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/-$$Lambda$a$N0SNpcYveKaxb-2EyoaJBQ3OM0M;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/a;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method

.method private synthetic hV()V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->pd:Lcom/xiaopeng/xui/app/e;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->pd:Lcom/xiaopeng/xui/app/e;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/e;->dismiss()V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->mContext:Landroid/content/Context;

    const v1, 0x7f10014c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/app/g;->k(Ljava/lang/CharSequence;)V

    .line 157
    return-void
.end method

.method private synthetic hW()V
    .locals 8

    .line 100
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->eG()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->getHardwareId()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->getIccid()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 104
    const/16 v3, 0x10

    invoke-static {v3}, Lcom/xiaopeng/devtools/utils/d;->bI(I)Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 106
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 107
    const-string v7, "vin"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v0, "cduId"

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v0, "iccid"

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "password"

    invoke-interface {v6, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v0, "timestamp"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 113
    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/a;->vi:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->cancelTag(Ljava/lang/Object;)V

    .line 114
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/a;->vi:Ljava/lang/String;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 115
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->needAuthorizationInfo()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->enableSecurityEncoding()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 117
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/devtools/presenter/aftersales/a;->vi:Ljava/lang/String;

    .line 118
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->tag(Ljava/lang/Object;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/presenter/aftersales/a$1;

    invoke-direct {v1, p0, v3}, Lcom/xiaopeng/devtools/presenter/aftersales/a$1;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/a;Ljava/lang/String;)V

    .line 119
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 144
    goto :goto_0

    .line 145
    :cond_0
    const-string v3, "AuthModePresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to request auth mode VIN = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cduid = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", iccid = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/aftersales/a;->hU()V

    .line 148
    :goto_0
    return-void
.end method

.method private synthetic hX()V
    .locals 7

    .line 56
    new-instance v0, Lcom/xiaopeng/xui/app/c;

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->mContext:Landroid/content/Context;

    const v2, 0x7f110232

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xui/app/c;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->vj:Lcom/xiaopeng/xui/app/c;

    .line 57
    new-instance v0, Lcom/xiaopeng/xui/app/e;

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->mContext:Landroid/content/Context;

    const v2, 0x7f1101f3

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xui/app/e;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->pd:Lcom/xiaopeng/xui/app/e;

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->vj:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/app/c;->qs()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0c007d

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 59
    const v1, 0x7f0902c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 60
    const v3, 0x7f100030

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 61
    const v3, 0x7f090168

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/xui/widget/XCompoundButton;

    iput-object v3, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->vk:Lcom/xiaopeng/xui/widget/XCompoundButton;

    .line 63
    const v3, 0x7f090054

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 64
    iget-object v4, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f06001e

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 65
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 66
    new-instance v4, Lcom/xiaopeng/devtools/presenter/aftersales/-$$Lambda$a$2a37I8Ana55PrteU7uak-6VBqGM;

    invoke-direct {v4, p0, v3, v1}, Lcom/xiaopeng/devtools/presenter/aftersales/-$$Lambda$a$2a37I8Ana55PrteU7uak-6VBqGM;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/a;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->vk:Lcom/xiaopeng/xui/widget/XCompoundButton;

    new-instance v3, Lcom/xiaopeng/devtools/presenter/aftersales/-$$Lambda$a$7OOI8ghjFgQtClyY_3XwLuNLjXc;

    invoke-direct {v3, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/-$$Lambda$a$7OOI8ghjFgQtClyY_3XwLuNLjXc;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/a;)V

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XCompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 79
    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->vj:Lcom/xiaopeng/xui/app/c;

    const v3, 0x7f100032

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/app/c;->dV(I)Lcom/xiaopeng/xui/app/c;

    move-result-object v1

    .line 80
    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/xui/app/c;->d(Landroid/view/View;Z)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->mContext:Landroid/content/Context;

    .line 81
    const v3, 0x7f10002e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/xiaopeng/devtools/presenter/aftersales/-$$Lambda$a$iESobsKfLRDpUafypdb27ZA1cl8;

    invoke-direct {v3, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/-$$Lambda$a$iESobsKfLRDpUafypdb27ZA1cl8;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/a;)V

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/xui/app/c;->a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->mContext:Landroid/content/Context;

    .line 90
    const v3, 0x7f10022e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Lcom/xiaopeng/xui/app/c;->b(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->vj:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/app/c;->aX(Z)Lcom/xiaopeng/xui/app/c;

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->vk:Lcom/xiaopeng/xui/widget/XCompoundButton;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XCompoundButton;->setChecked(Z)V

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->vj:Lcom/xiaopeng/xui/app/c;

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/c;->dX(I)Lcom/xiaopeng/xui/app/c;

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/aftersales/a;->vj:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/c;->show()V

    .line 95
    return-void
.end method

.method public static synthetic lambda$2a37I8Ana55PrteU7uak-6VBqGM(Lcom/xiaopeng/devtools/presenter/aftersales/a;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/devtools/presenter/aftersales/a;->a(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$7OOI8ghjFgQtClyY_3XwLuNLjXc(Lcom/xiaopeng/devtools/presenter/aftersales/a;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/presenter/aftersales/a;->a(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic lambda$CeYT8gK6XfIg1zORaCz_7Epvpl4(Lcom/xiaopeng/devtools/presenter/aftersales/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/aftersales/a;->hX()V

    return-void
.end method

.method public static synthetic lambda$M9cpuquXuPKpnLWQwSYkdMTE9mM(Lcom/xiaopeng/devtools/presenter/aftersales/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/aftersales/a;->hW()V

    return-void
.end method

.method public static synthetic lambda$N0SNpcYveKaxb-2EyoaJBQ3OM0M(Lcom/xiaopeng/devtools/presenter/aftersales/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/aftersales/a;->hV()V

    return-void
.end method

.method public static synthetic lambda$iESobsKfLRDpUafypdb27ZA1cl8(Lcom/xiaopeng/devtools/presenter/aftersales/a;Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/presenter/aftersales/a;->a(Lcom/xiaopeng/xui/app/c;I)V

    return-void
.end method


# virtual methods
.method public showDialog()V
    .locals 1

    .line 55
    new-instance v0, Lcom/xiaopeng/devtools/presenter/aftersales/-$$Lambda$a$CeYT8gK6XfIg1zORaCz_7Epvpl4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/-$$Lambda$a$CeYT8gK6XfIg1zORaCz_7Epvpl4;-><init>(Lcom/xiaopeng/devtools/presenter/aftersales/a;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

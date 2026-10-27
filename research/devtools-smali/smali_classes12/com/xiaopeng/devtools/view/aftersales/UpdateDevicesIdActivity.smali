.class public Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;
.super Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;
.source "UpdateDevicesIdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaopeng/devtools/view/aftersales/e;


# instance fields
.field private DT:Lcom/xiaopeng/xui/app/c;

.field private EA:Landroid/widget/TextView;

.field private EB:Landroid/widget/TextView;

.field private EC:Landroid/widget/TextView;

.field private ED:Landroid/widget/TextView;

.field private EE:Landroid/widget/TextView;

.field private EF:Landroid/widget/Button;

.field private EG:Landroid/widget/Button;

.field private EH:Landroid/widget/Button;

.field private EI:Landroid/widget/Button;

.field private EJ:Landroid/widget/Button;

.field private EK:Landroid/widget/LinearLayout;

.field private EL:Landroid/widget/LinearLayout;

.field private EM:Landroid/widget/LinearLayout;

.field private EN:Landroid/widget/LinearLayout;

.field private EO:Landroid/widget/LinearLayout;

.field private EP:Lcom/xiaopeng/devtools/presenter/aftersales/g;

.field private Ev:Landroid/widget/TextView;

.field private Ew:Landroid/widget/TextView;

.field private Ex:Landroid/widget/TextView;

.field private Ey:Landroid/widget/TextView;

.field private Ez:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;-><init>()V

    return-void
.end method

.method private synthetic T(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 278
    if-eqz p1, :cond_0

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->ED:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EE:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    return-void
.end method

.method private synthetic a(ILcom/xiaopeng/xui/app/c;I)V
    .locals 1

    .line 106
    const p2, 0x1060019

    const p3, 0x7f10034d

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 132
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EJ:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 133
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EE:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 134
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EP:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->iC()V

    goto :goto_0

    .line 120
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EH:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 121
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EA:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 122
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EA:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EP:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->iB()V

    .line 124
    goto :goto_0

    .line 126
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EI:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 127
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EC:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 128
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EC:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EP:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->iA()V

    .line 130
    goto :goto_0

    .line 108
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EF:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 109
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->Ew:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 110
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->Ew:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EP:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->iz()V

    .line 112
    goto :goto_0

    .line 114
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EG:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 115
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->Ey:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 116
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->Ey:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EP:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->iy()V

    .line 118
    nop

    .line 137
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->dismiss()V

    .line 138
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0900bc
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private synthetic ai(Z)V
    .locals 2

    .line 259
    if-eqz p1, :cond_0

    .line 260
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EC:Landroid/widget/TextView;

    const v0, 0x7f100349

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 261
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EC:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 262
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    const v0, 0x7f10022f

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/c;->dV(I)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    const v0, 0x7f1003e9

    .line 263
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/c;->f(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    const v0, 0x7f10011d

    .line 264
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$UpdateDevicesIdActivity$neSiWxfOfNHAZa-3O-w7McAXHgo;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$UpdateDevicesIdActivity$neSiWxfOfNHAZa-3O-w7McAXHgo;-><init>(Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xui/app/c;->a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    const-string v0, ""

    .line 265
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/c;->h(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    .line 266
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->show()V

    goto :goto_0

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EC:Landroid/widget/TextView;

    const v0, 0x7f100333

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 269
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EC:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 271
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EI:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 272
    return-void
.end method

.method private synthetic aj(Z)V
    .locals 2

    .line 240
    if-eqz p1, :cond_0

    .line 241
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EA:Landroid/widget/TextView;

    const v0, 0x7f100349

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 242
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EA:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    const v0, 0x7f10022f

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/c;->dV(I)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    const v0, 0x7f1003f7

    .line 244
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/c;->f(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    const v0, 0x7f10011d

    .line 245
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$UpdateDevicesIdActivity$oXNixMyNu71JUAlih0pb886HLAs;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$UpdateDevicesIdActivity$oXNixMyNu71JUAlih0pb886HLAs;-><init>(Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xui/app/c;->a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    const-string v0, ""

    .line 246
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/c;->h(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    .line 247
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->show()V

    goto :goto_0

    .line 249
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EA:Landroid/widget/TextView;

    const v0, 0x7f100333

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 250
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EA:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 252
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EH:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 253
    return-void
.end method

.method private synthetic ak(Z)V
    .locals 2

    .line 226
    if-eqz p1, :cond_0

    .line 227
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->Ew:Landroid/widget/TextView;

    const v0, 0x7f100349

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 228
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->Ew:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 230
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->Ew:Landroid/widget/TextView;

    const v0, 0x7f100333

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 231
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->Ew:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 233
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EF:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 234
    return-void
.end method

.method private synthetic al(Z)V
    .locals 2

    .line 212
    if-eqz p1, :cond_0

    .line 213
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->Ey:Landroid/widget/TextView;

    const v0, 0x7f100349

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 214
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->Ey:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 216
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->Ey:Landroid/widget/TextView;

    const v0, 0x7f100333

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 217
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->Ey:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EG:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 220
    return-void
.end method

.method private cN(I)V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    const v1, 0x7f100412

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/c;->dV(I)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 104
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->cO(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/c;->f(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object v0

    .line 105
    const v1, 0x7f10011d

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$UpdateDevicesIdActivity$OSqNBjGPMJ0lUI5MnUHX3QSLqCE;

    invoke-direct {v2, p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$UpdateDevicesIdActivity$OSqNBjGPMJ0lUI5MnUHX3QSLqCE;-><init>(Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;I)V

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/app/c;->a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    .line 139
    const v0, 0x7f10009c

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$UpdateDevicesIdActivity$Z7L6k-7lNle_DDRdss37hquvgc0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$UpdateDevicesIdActivity$Z7L6k-7lNle_DDRdss37hquvgc0;-><init>(Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/xui/app/c;->b(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->show()V

    .line 141
    return-void
.end method

.method private cO(I)Ljava/lang/String;
    .locals 5

    .line 144
    const-string v0, ""

    .line 145
    const v1, 0x7f1000d4

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 163
    :pswitch_1
    const p1, 0x7f1000d0

    new-array v0, v4, [Ljava/lang/Object;

    const v1, 0x7f1004d8

    .line 164
    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EP:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->getXpuSn()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 163
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 155
    :pswitch_2
    new-array p1, v4, [Ljava/lang/Object;

    const v0, 0x7f1002ae

    .line 156
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EP:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->iw()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    .line 155
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 157
    goto :goto_0

    .line 159
    :pswitch_3
    new-array p1, v4, [Ljava/lang/Object;

    const v0, 0x7f1001ca

    .line 160
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EP:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->ix()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    .line 159
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 161
    goto :goto_0

    .line 147
    :pswitch_4
    new-array p1, v4, [Ljava/lang/Object;

    const v0, 0x7f1001a5

    .line 148
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EP:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->getIccid()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    .line 147
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 149
    goto :goto_0

    .line 151
    :pswitch_5
    new-array p1, v4, [Ljava/lang/Object;

    const v0, 0x7f1000ac

    .line 152
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EP:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->getCduId()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v2

    .line 151
    invoke-virtual {p0, v1, p1}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 153
    nop

    .line 167
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0900bc
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private synthetic db(Ljava/lang/String;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EB:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EI:Landroid/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EP:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->getVin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 206
    return-void
.end method

.method private synthetic dc(Ljava/lang/String;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->Ez:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EH:Landroid/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EP:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->getVin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 198
    return-void
.end method

.method private synthetic dd(Ljava/lang/String;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->Ev:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EF:Landroid/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EP:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->getVin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 189
    return-void
.end method

.method private synthetic de(Ljava/lang/String;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->Ex:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EG:Landroid/widget/Button;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EP:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->getVin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 181
    return-void
.end method

.method public static synthetic lambda$4LeeKqsvTysRTV8J-oK76z1Sbpo(Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->db(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$7Rr_j36mcXTDua0KhHIkCMH9WSM(Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->aj(Z)V

    return-void
.end method

.method public static synthetic lambda$Br6bSdgM-CH8kEQimyGg3JMmFxo(Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->T(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$K2UizKxlgd64Vn5nUCy8Ai5vdwY(Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->al(Z)V

    return-void
.end method

.method public static synthetic lambda$LGraWV1xlOWzCBoehMxAWA4EL4s(Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->ai(Z)V

    return-void
.end method

.method public static synthetic lambda$OSqNBjGPMJ0lUI5MnUHX3QSLqCE(Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;ILcom/xiaopeng/xui/app/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->a(ILcom/xiaopeng/xui/app/c;I)V

    return-void
.end method

.method public static synthetic lambda$X8n2YRRbVnQCDDmCqgECp9Xojw4(Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->dd(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$Z7L6k-7lNle_DDRdss37hquvgc0(Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->o(Lcom/xiaopeng/xui/app/c;I)V

    return-void
.end method

.method public static synthetic lambda$iUatw364FklTeQAv1gz_nSFvzgo(Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->ak(Z)V

    return-void
.end method

.method public static synthetic lambda$neSiWxfOfNHAZa-3O-w7McAXHgo(Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->m(Lcom/xiaopeng/xui/app/c;I)V

    return-void
.end method

.method public static synthetic lambda$nj8aB780MKUU5468v0Mgm-BJttY(Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->de(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$oXNixMyNu71JUAlih0pb886HLAs(Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->n(Lcom/xiaopeng/xui/app/c;I)V

    return-void
.end method

.method public static synthetic lambda$ozb7a0XwSA5XfQzefzg7iOqNFGo(Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->dc(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic m(Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    .line 264
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->dismiss()V

    return-void
.end method

.method private synthetic n(Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    .line 245
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->dismiss()V

    return-void
.end method

.method private synthetic o(Lcom/xiaopeng/xui/app/c;I)V
    .locals 0

    .line 139
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->dismiss()V

    return-void
.end method


# virtual methods
.method public S(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 277
    new-instance v0, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$UpdateDevicesIdActivity$Br6bSdgM-CH8kEQimyGg3JMmFxo;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$UpdateDevicesIdActivity$Br6bSdgM-CH8kEQimyGg3JMmFxo;-><init>(Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 283
    return-void
.end method

.method public ad(Z)V
    .locals 1

    .line 211
    new-instance v0, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$UpdateDevicesIdActivity$K2UizKxlgd64Vn5nUCy8Ai5vdwY;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$UpdateDevicesIdActivity$K2UizKxlgd64Vn5nUCy8Ai5vdwY;-><init>(Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 221
    return-void
.end method

.method public ae(Z)V
    .locals 1

    .line 225
    new-instance v0, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$UpdateDevicesIdActivity$iUatw364FklTeQAv1gz_nSFvzgo;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$UpdateDevicesIdActivity$iUatw364FklTeQAv1gz_nSFvzgo;-><init>(Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 235
    return-void
.end method

.method public af(Z)V
    .locals 1

    .line 239
    new-instance v0, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$UpdateDevicesIdActivity$7Rr_j36mcXTDua0KhHIkCMH9WSM;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$UpdateDevicesIdActivity$7Rr_j36mcXTDua0KhHIkCMH9WSM;-><init>(Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 254
    return-void
.end method

.method public ag(Z)V
    .locals 1

    .line 258
    new-instance v0, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$UpdateDevicesIdActivity$LGraWV1xlOWzCBoehMxAWA4EL4s;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$UpdateDevicesIdActivity$LGraWV1xlOWzCBoehMxAWA4EL4s;-><init>(Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 273
    return-void
.end method

.method public ah(Z)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EJ:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 288
    return-void
.end method

.method public cX(Ljava/lang/String;)V
    .locals 1

    .line 186
    new-instance v0, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$UpdateDevicesIdActivity$X8n2YRRbVnQCDDmCqgECp9Xojw4;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$UpdateDevicesIdActivity$X8n2YRRbVnQCDDmCqgECp9Xojw4;-><init>(Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 190
    return-void
.end method

.method public cY(Ljava/lang/String;)V
    .locals 1

    .line 194
    new-instance v0, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$UpdateDevicesIdActivity$ozb7a0XwSA5XfQzefzg7iOqNFGo;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$UpdateDevicesIdActivity$ozb7a0XwSA5XfQzefzg7iOqNFGo;-><init>(Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 199
    return-void
.end method

.method public cZ(Ljava/lang/String;)V
    .locals 1

    .line 203
    new-instance v0, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$UpdateDevicesIdActivity$4LeeKqsvTysRTV8J-oK76z1Sbpo;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$UpdateDevicesIdActivity$4LeeKqsvTysRTV8J-oK76z1Sbpo;-><init>(Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 207
    return-void
.end method

.method public da(Ljava/lang/String;)V
    .locals 1

    .line 178
    new-instance v0, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$UpdateDevicesIdActivity$nj8aB780MKUU5468v0Mgm-BJttY;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$UpdateDevicesIdActivity$nj8aB780MKUU5468v0Mgm-BJttY;-><init>(Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 182
    return-void
.end method

.method public fd()V
    .locals 1

    .line 30
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->fd()V

    .line 31
    const v0, 0x7f0c0030

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->setContentView(I)V

    .line 32
    new-instance v0, Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;-><init>(Lcom/xiaopeng/devtools/view/aftersales/e;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EP:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    .line 33
    return-void
.end method

.method public fe()V
    .locals 1

    .line 37
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->fe()V

    .line 38
    new-instance v0, Lcom/xiaopeng/xui/app/c;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->DT:Lcom/xiaopeng/xui/app/c;

    .line 39
    const v0, 0x7f0901fa

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->Ev:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f090448

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->Ew:Landroid/widget/TextView;

    .line 41
    const v0, 0x7f0900bd

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EF:Landroid/widget/Button;

    .line 42
    const v0, 0x7f090158

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->Ex:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f090447

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->Ey:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0900bc

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EG:Landroid/widget/Button;

    .line 45
    const v0, 0x7f090330

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->Ez:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f09044a

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EA:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0900c0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EH:Landroid/widget/Button;

    .line 48
    const v0, 0x7f09026f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EB:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f090449

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EC:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0900be

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EI:Landroid/widget/Button;

    .line 51
    const v0, 0x7f0904b5

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->ED:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f09044d

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EE:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0900c1

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EJ:Landroid/widget/Button;

    .line 55
    const v0, 0x7f09023f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EK:Landroid/widget/LinearLayout;

    .line 56
    const v0, 0x7f090239

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EL:Landroid/widget/LinearLayout;

    .line 57
    const v0, 0x7f090245

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EM:Landroid/widget/LinearLayout;

    .line 58
    const v0, 0x7f090241

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EN:Landroid/widget/LinearLayout;

    .line 59
    const v0, 0x7f09024a

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EO:Landroid/widget/LinearLayout;

    .line 60
    return-void
.end method

.method public ff()V
    .locals 1

    .line 79
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->ff()V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EG:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EF:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EI:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EH:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EJ:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EP:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->it()V

    .line 86
    return-void
.end method

.method public lJ()V
    .locals 2

    .line 64
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->lJ()V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EP:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->getCduId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->da(Ljava/lang/String;)V

    .line 66
    const-string v0, "SUPPORT_XPU"

    invoke-static {v0}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EO:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 69
    :cond_0
    const-string v0, "SUPPORT_NFC_KEY"

    invoke-static {v0}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EM:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 72
    :cond_1
    const-string v0, "SUPPORT_BLE_KEY"

    invoke-static {v0}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EN:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 75
    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->cN(I)V

    .line 100
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 172
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->onDestroy()V

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EP:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->onDestroy()V

    .line 174
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 90
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->onResume()V

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EP:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->iv()V

    .line 92
    const-string v0, "SUPPORT_XPU"

    invoke-static {v0}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/UpdateDevicesIdActivity;->EP:Lcom/xiaopeng/devtools/presenter/aftersales/g;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/aftersales/g;->iD()V

    .line 95
    :cond_0
    return-void
.end method

.class public Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "CsDebugToolActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private AH:Ljava/lang/String;

.field private CM:Lcom/xiaopeng/devtools/system/a/b;

.field private FA:Ljava/lang/Thread;

.field private FD:Landroid/widget/Button;

.field private FE:Landroid/widget/Button;

.field private FF:Landroid/widget/Button;

.field Fw:Ljava/lang/Double;

.field private Fy:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private st:Lcom/xiaopeng/devtools/model/e/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 38
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    .line 40
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->Fw:Ljava/lang/Double;

    .line 51
    new-instance v0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity$1;-><init>(Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->mHandler:Landroid/os/Handler;

    .line 222
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity$2;-><init>(Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->FA:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->Fy:Landroid/widget/TextView;

    return-object p0
.end method

.method private a(Landroid/os/Bundle;I)V
    .locals 2

    .line 267
    const/16 v0, 0x516

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    if-nez p1, :cond_1

    .line 270
    return-void

    .line 272
    :cond_1
    const-string p2, "string_msg"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 273
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity$3;-><init>(Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;)V

    .line 274
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 273
    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/bean/event/BoardCastEvent;

    .line 275
    if-nez p1, :cond_2

    .line 276
    return-void

    .line 278
    :cond_2
    const-string p2, "CsDebugToolActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOTAIpcMsg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/event/BoardCastEvent;->getType()I

    move-result p2

    .line 281
    if-eqz p2, :cond_3

    .line 286
    goto :goto_0

    .line 283
    :cond_3
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/event/BoardCastEvent;->getData()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->FD:Landroid/widget/Button;

    const v0, 0x7f1002e4

    const v1, 0x7f10014d

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->a(Ljava/lang/String;Landroid/widget/Button;II)V

    .line 284
    nop

    .line 293
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->ap(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/widget/Button;II)V
    .locals 1

    .line 296
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 298
    :cond_0
    const-string p3, "1"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 299
    invoke-virtual {p2, p4}, Landroid/widget/Button;->setText(I)V

    .line 301
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic a(ZLcom/xiaopeng/devtools/view/a;)V
    .locals 0

    .line 171
    invoke-virtual {p2}, Lcom/xiaopeng/devtools/view/a;->dismiss()V

    .line 172
    if-eqz p1, :cond_0

    .line 173
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->st:Lcom/xiaopeng/devtools/model/e/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/model/e/a;->updateCduFromUsb()V

    .line 175
    :cond_0
    return-void
.end method

.method private ap(Z)V
    .locals 3

    .line 137
    if-eqz p1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->FD:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 139
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->FD:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 140
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->FF:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 141
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->FF:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->FD:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 144
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->FD:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 145
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->FD:Landroid/widget/Button;

    const v2, 0x7f1002ac

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    .line 146
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->FF:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 147
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->FF:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 148
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->Fy:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :goto_0
    return-void
.end method

.method private aq(Z)V
    .locals 2

    .line 162
    new-instance v0, Lcom/xiaopeng/devtools/view/a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/a;-><init>(Landroid/app/Activity;)V

    .line 163
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/a;->show()V

    .line 164
    const/16 v1, 0x22e

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/a;->cH(I)V

    .line 165
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/a;->setCanceledOnTouchOutside(Z)V

    .line 166
    const v1, 0x7f10011f

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/a;->cS(Ljava/lang/String;)V

    .line 167
    const v1, 0x7f100432

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/a;->cT(Ljava/lang/String;)V

    .line 168
    const v1, 0x7f1000bd

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/a;->cQ(Ljava/lang/String;)V

    .line 169
    const v1, 0x7f1000bf

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/a;->cR(Ljava/lang/String;)V

    .line 170
    new-instance v1, Lcom/xiaopeng/devtools/view/customerservice/-$$Lambda$CsDebugToolActivity$EMpS7WIIyu4zT2u8qJlpUwl8AkE;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/devtools/view/customerservice/-$$Lambda$CsDebugToolActivity$EMpS7WIIyu4zT2u8qJlpUwl8AkE;-><init>(Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/a;->b(Lcom/xiaopeng/devtools/view/a$a;)V

    .line 176
    return-void
.end method

.method public static synthetic lambda$EMpS7WIIyu4zT2u8qJlpUwl8AkE(Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;ZLcom/xiaopeng/devtools/view/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->a(ZLcom/xiaopeng/devtools/view/a;)V

    return-void
.end method


# virtual methods
.method public fd()V
    .locals 2

    .line 94
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 95
    const-string v0, "CsDebugToolActivity"

    const-string v1, "initBeforeView"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    const v0, 0x7f0c0034

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->setContentView(I)V

    .line 98
    new-instance v0, Lcom/xiaopeng/devtools/model/e/a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/model/e/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->st:Lcom/xiaopeng/devtools/model/e/a;

    .line 100
    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/g;->V(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->AH:Ljava/lang/String;

    .line 101
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 102
    return-void
.end method

.method public fe()V
    .locals 1

    .line 106
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 107
    const v0, 0x7f0900fe

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->FD:Landroid/widget/Button;

    .line 108
    const v0, 0x7f0900f2

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->FE:Landroid/widget/Button;

    .line 109
    const v0, 0x7f0900df

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->FF:Landroid/widget/Button;

    .line 110
    const v0, 0x7f0903ec

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->Fy:Landroid/widget/TextView;

    .line 111
    return-void
.end method

.method public ff()V
    .locals 2

    .line 125
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 127
    new-instance v0, Lcom/xiaopeng/devtools/system/a/b;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/xiaopeng/devtools/system/a/b;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->FE:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->FD:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->FF:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method public lJ()V
    .locals 1

    .line 115
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->AH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->ap(Z)V

    goto :goto_0

    .line 119
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->ap(Z)V

    .line 121
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900df

    if-eq p1, v0, :cond_4

    const v0, 0x7f0900f2

    if-eq p1, v0, :cond_3

    const v0, 0x7f0900fe

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 182
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->st:Lcom/xiaopeng/devtools/model/e/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/model/e/a;->he()Z

    move-result p1

    if-nez p1, :cond_1

    .line 183
    const-string p1, "CsDebugToolActivity"

    const-string v0, "btn_state_usb service not ready."

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    return-void

    .line 187
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->st:Lcom/xiaopeng/devtools/model/e/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/model/e/a;->hasCduFileFromUsb()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 188
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->FD:Landroid/widget/Button;

    const v0, 0x7f1002ac

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 189
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->aq(Z)V

    goto/16 :goto_0

    .line 191
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->FD:Landroid/widget/Button;

    const v0, 0x7f10018f

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 193
    goto/16 :goto_0

    .line 196
    :cond_3
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/xiaopeng/devtools/view/clean/ClearDataActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    const/high16 v0, 0x14000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->startActivity(Landroid/content/Intent;)V

    .line 199
    goto :goto_0

    .line 201
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->Fy:Landroid/widget/TextView;

    const v0, 0x7f10018c

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 202
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->FA:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-nez p1, :cond_5

    .line 203
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->FA:Ljava/lang/Thread;

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 205
    :cond_5
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/xiaopeng/devtools/system/service/CopyFileService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->AH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/system/a/b;->kG()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->AH:Ljava/lang/String;

    .line 209
    :cond_6
    const-string v0, "CsDebugToolActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStoragePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->AH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    const-string v0, "storagePath"

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->AH:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string v0, "sourcePath"

    sget-object v1, Lcom/xiaopeng/devtools/a;->nw:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 213
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->ap(Z)V

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->FE:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->FE:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 216
    nop

    .line 220
    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 241
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->st:Lcom/xiaopeng/devtools/model/e/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/e/a;->onDestroy()V

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->CM:Lcom/xiaopeng/devtools/system/a/b;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 248
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 249
    return-void
.end method

.method public onEvent(Ljava/lang/Integer;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 72
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x106000b

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 81
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->ap(Z)V

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->FE:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 83
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->FE:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 84
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->Fy:Landroid/widget/TextView;

    const v0, 0x7f10014b

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 85
    goto :goto_0

    .line 74
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->ap(Z)V

    .line 75
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->FE:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 76
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->FE:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 77
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->Fy:Landroid/widget/TextView;

    const v0, 0x7f100153

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 78
    nop

    .line 90
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onReceiveData(Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 253
    const-string v0, "CsDebugToolActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveData event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    if-nez p1, :cond_0

    .line 255
    return-void

    .line 257
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;->getSenderPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x2e172538

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "com.xiaopeng.ota"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    goto :goto_1

    .line 259
    :cond_3
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;->getPayloadData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;->getMsgID()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/devtools/view/customerservice/CsDebugToolActivity;->a(Landroid/os/Bundle;I)V

    .line 260
    nop

    .line 264
    :goto_1
    return-void
.end method

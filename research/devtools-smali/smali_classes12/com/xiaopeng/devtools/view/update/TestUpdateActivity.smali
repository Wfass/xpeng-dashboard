.class public Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;
.super Lcom/xiaopeng/devtools/view/ActionBarActivity;
.source "TestUpdateActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/xiaopeng/devtools/view/update/a;
.implements Lcom/xiaopeng/devtools/view/update/b;
.implements Lcom/xiaopeng/devtools/view/update/c;
.implements Lcom/xiaopeng/devtools/view/update/d;
.implements Lcom/xiaopeng/devtools/view/update/e;


# instance fields
.field private AS:Landroid/content/BroadcastReceiver;

.field private FD:Landroid/widget/Button;

.field private FE:Landroid/widget/Button;

.field private TW:Landroid/widget/Button;

.field private TX:Landroid/widget/Button;

.field private TY:Landroid/widget/Button;

.field private TZ:Landroid/widget/Button;

.field private Ua:Landroid/widget/Button;

.field private Ub:Landroid/widget/Button;

.field private Uc:Landroid/widget/Button;

.field private Ud:Landroid/widget/Button;

.field private Ue:Lcom/xiaopeng/devtools/presenter/h/c;

.field private Uf:Lcom/xiaopeng/devtools/presenter/h/e;

.field private Ug:Z

.field private Uh:Lcom/xiaopeng/devtools/presenter/h/a;

.field private Ui:Lcom/xiaopeng/devtools/presenter/h/d;

.field private Uj:Lcom/xiaopeng/devtools/presenter/h/f;

.field private Uk:Lcom/xiaopeng/devtools/presenter/h/b;

.field private Ul:Z

.field private ri:Lcom/xiaopeng/devtools/devdebug/hwcheck/b;

.field private st:Lcom/xiaopeng/devtools/model/e/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;-><init>()V

    .line 52
    new-instance v0, Lcom/xiaopeng/devtools/devdebug/hwcheck/b;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/devdebug/hwcheck/b;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->ri:Lcom/xiaopeng/devtools/devdebug/hwcheck/b;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ug:Z

    .line 61
    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ul:Z

    .line 97
    new-instance v0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity$1;-><init>(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->AS:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;)Lcom/xiaopeng/devtools/presenter/h/c;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ue:Lcom/xiaopeng/devtools/presenter/h/c;

    return-object p0
.end method

.method private a(Landroid/os/Bundle;I)V
    .locals 2

    .line 488
    const/16 v0, 0x516

    if-eq p2, v0, :cond_0

    goto/16 :goto_0

    .line 490
    :cond_0
    if-nez p1, :cond_1

    .line 491
    return-void

    .line 493
    :cond_1
    const-string p2, "string_msg"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 494
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity$2;-><init>(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;)V

    .line 495
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 494
    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/bean/event/BoardCastEvent;

    .line 496
    if-nez p1, :cond_2

    .line 497
    return-void

    .line 499
    :cond_2
    const-string p2, "TestUpdateActivity"

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

    .line 501
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/event/BoardCastEvent;->getType()I

    move-result p2

    .line 502
    if-eqz p2, :cond_3

    packed-switch p2, :pswitch_data_0

    .line 513
    goto :goto_0

    .line 510
    :pswitch_0
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/event/BoardCastEvent;->getData()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ud:Landroid/widget/Button;

    const v0, 0x7f10040f

    const v1, 0x7f10040e

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Ljava/lang/String;Landroid/widget/Button;II)V

    .line 511
    goto :goto_0

    .line 507
    :pswitch_1
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/event/BoardCastEvent;->getData()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TY:Landroid/widget/Button;

    const v0, 0x7f1002e6

    const v1, 0x7f10014f

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Ljava/lang/String;Landroid/widget/Button;II)V

    .line 508
    goto :goto_0

    .line 504
    :cond_3
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/event/BoardCastEvent;->getData()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->FD:Landroid/widget/Button;

    const v0, 0x7f1002e4

    const v1, 0x7f10014d

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Ljava/lang/String;Landroid/widget/Button;II)V

    .line 505
    nop

    .line 520
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/widget/Button;Z)V
    .locals 1

    .line 461
    if-eqz p2, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x106000b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    .line 463
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 465
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06004a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setTextColor(I)V

    .line 466
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 468
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;ZZ)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(ZZ)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/widget/Button;II)V
    .locals 1

    .line 523
    new-instance v0, Lcom/xiaopeng/devtools/view/update/-$$Lambda$TestUpdateActivity$Fizlq2ad5mTOEZgVYlpXsELMSCI;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/xiaopeng/devtools/view/update/-$$Lambda$TestUpdateActivity$Fizlq2ad5mTOEZgVYlpXsELMSCI;-><init>(Ljava/lang/String;Landroid/widget/Button;II)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 530
    return-void
.end method

.method private synthetic a(ZLcom/xiaopeng/devtools/view/a;)V
    .locals 0

    .line 480
    invoke-virtual {p2}, Lcom/xiaopeng/devtools/view/a;->dismiss()V

    .line 481
    if-eqz p1, :cond_0

    .line 482
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->st:Lcom/xiaopeng/devtools/model/e/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/model/e/a;->updateCduFromUsb()V

    .line 484
    :cond_0
    return-void
.end method

.method private a(ZZ)V
    .locals 2

    .line 399
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 400
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/devtools/utils/g;->V(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 401
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->FD:Landroid/widget/Button;

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 402
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TW:Landroid/widget/Button;

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 403
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ua:Landroid/widget/Button;

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 404
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TX:Landroid/widget/Button;

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 405
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TY:Landroid/widget/Button;

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 406
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TZ:Landroid/widget/Button;

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 407
    iget-boolean p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ul:Z

    if-eqz p1, :cond_0

    .line 408
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ub:Landroid/widget/Button;

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 410
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uc:Landroid/widget/Button;

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 411
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ud:Landroid/widget/Button;

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    goto/16 :goto_0

    .line 413
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->FD:Landroid/widget/Button;

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 414
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TW:Landroid/widget/Button;

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 415
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ua:Landroid/widget/Button;

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 416
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TX:Landroid/widget/Button;

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 417
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TY:Landroid/widget/Button;

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 418
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TZ:Landroid/widget/Button;

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 419
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ub:Landroid/widget/Button;

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 420
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uc:Landroid/widget/Button;

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 421
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ud:Landroid/widget/Button;

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    goto/16 :goto_0

    .line 424
    :cond_2
    if-eqz p2, :cond_5

    .line 425
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->FD:Landroid/widget/Button;

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 426
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TW:Landroid/widget/Button;

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 427
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ua:Landroid/widget/Button;

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 428
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TX:Landroid/widget/Button;

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 429
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TY:Landroid/widget/Button;

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 430
    iget-boolean p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ul:Z

    if-eqz p1, :cond_3

    .line 431
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ub:Landroid/widget/Button;

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 432
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TZ:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f100381

    invoke-virtual {p0, p2}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 433
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TZ:Landroid/widget/Button;

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 435
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uc:Landroid/widget/Button;

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 436
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ud:Landroid/widget/Button;

    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    goto :goto_0

    .line 438
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->FD:Landroid/widget/Button;

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 439
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->FD:Landroid/widget/Button;

    const p2, 0x7f1002ac

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 440
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TW:Landroid/widget/Button;

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 441
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TW:Landroid/widget/Button;

    const p2, 0x7f100410

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 442
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ua:Landroid/widget/Button;

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 443
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ua:Landroid/widget/Button;

    const p2, 0x7f100419

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 444
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TX:Landroid/widget/Button;

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 445
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TX:Landroid/widget/Button;

    const p2, 0x7f100411

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 446
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TY:Landroid/widget/Button;

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 447
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TY:Landroid/widget/Button;

    const p2, 0x7f100414

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 448
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TZ:Landroid/widget/Button;

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 449
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ub:Landroid/widget/Button;

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 450
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ub:Landroid/widget/Button;

    const p2, 0x7f100415

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 451
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uc:Landroid/widget/Button;

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 452
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uc:Landroid/widget/Button;

    const p2, 0x7f10041c

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 453
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ud:Landroid/widget/Button;

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 454
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ud:Landroid/widget/Button;

    const p2, 0x7f10040d

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    .line 458
    :goto_0
    return-void
.end method

.method private aq(Z)V
    .locals 2

    .line 471
    new-instance v0, Lcom/xiaopeng/devtools/view/a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/a;-><init>(Landroid/app/Activity;)V

    .line 472
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/a;->show()V

    .line 473
    const/16 v1, 0x22e

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/a;->cH(I)V

    .line 474
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/a;->setCanceledOnTouchOutside(Z)V

    .line 475
    const v1, 0x7f10011f

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/a;->cS(Ljava/lang/String;)V

    .line 476
    const v1, 0x7f100432

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/a;->cT(Ljava/lang/String;)V

    .line 477
    const v1, 0x7f1000bd

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/a;->cQ(Ljava/lang/String;)V

    .line 478
    const v1, 0x7f1000bf

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/a;->cR(Ljava/lang/String;)V

    .line 479
    new-instance v1, Lcom/xiaopeng/devtools/view/update/-$$Lambda$TestUpdateActivity$yydTpOB5JtW6f8gJ90dZgafoDuM;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/devtools/view/update/-$$Lambda$TestUpdateActivity$yydTpOB5JtW6f8gJ90dZgafoDuM;-><init>(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/a;->b(Lcom/xiaopeng/devtools/view/a$a;)V

    .line 485
    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;)Lcom/xiaopeng/devtools/presenter/h/e;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uf:Lcom/xiaopeng/devtools/presenter/h/e;

    return-object p0
.end method

.method private static synthetic b(Ljava/lang/String;Landroid/widget/Button;II)V
    .locals 1

    .line 524
    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 526
    :cond_0
    const-string p2, "1"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 527
    invoke-virtual {p1, p3}, Landroid/widget/Button;->setText(I)V

    .line 529
    :cond_1
    :goto_0
    return-void
.end method

.method private bm(Ljava/lang/String;)V
    .locals 1

    .line 394
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 396
    return-void
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;)Lcom/xiaopeng/devtools/presenter/h/a;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uh:Lcom/xiaopeng/devtools/presenter/h/a;

    return-object p0
.end method

.method private synthetic dF(I)V
    .locals 3

    .line 670
    const-string v0, "TestUpdateActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIcmUpdateProcess :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ud:Landroid/widget/Button;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f10041f

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 672
    return-void
.end method

.method private synthetic dG(I)V
    .locals 4

    .line 650
    const-string v0, "TestUpdateActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIcmUpdateStatus :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 651
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 659
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ud:Landroid/widget/Button;

    const v0, 0x7f10041f

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 660
    goto :goto_0

    .line 656
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ud:Landroid/widget/Button;

    const v0, 0x7f10040e

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 657
    goto :goto_0

    .line 653
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ud:Landroid/widget/Button;

    const v0, 0x7f10040f

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 654
    nop

    .line 664
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic dH(I)V
    .locals 3

    .line 642
    const-string v0, "TestUpdateActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXpuFirUpdateProcess :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uc:Landroid/widget/Button;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f10042b

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 644
    return-void
.end method

.method private synthetic dI(I)V
    .locals 4

    .line 622
    const-string v0, "TestUpdateActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXpuFirUpdateStatus :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 631
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uc:Landroid/widget/Button;

    const v0, 0x7f10042b

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 632
    goto :goto_0

    .line 628
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uc:Landroid/widget/Button;

    const v0, 0x7f10041a

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 629
    goto :goto_0

    .line 625
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uc:Landroid/widget/Button;

    const v0, 0x7f10041b

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 626
    nop

    .line 636
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic dJ(I)V
    .locals 3

    .line 601
    const-string v0, "TestUpdateActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenFirUpdateStatus :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 610
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ub:Landroid/widget/Button;

    const v0, 0x7f10041d

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 611
    goto :goto_0

    .line 604
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ub:Landroid/widget/Button;

    const v0, 0x7f100417

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 605
    goto :goto_0

    .line 607
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ub:Landroid/widget/Button;

    const v0, 0x7f100416

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 608
    nop

    .line 616
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic dK(I)V
    .locals 5

    .line 562
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ug:Z

    const v1, 0x7f1002fe

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 563
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uf:Lcom/xiaopeng/devtools/presenter/h/e;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/h/e;->kx()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 564
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ua:Landroid/widget/Button;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->V(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 565
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ua:Landroid/widget/Button;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uf:Lcom/xiaopeng/devtools/presenter/h/e;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/h/e;->ky()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 566
    :cond_0
    const v0, 0x7f1002fc

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uf:Lcom/xiaopeng/devtools/presenter/h/e;

    invoke-virtual {v3}, Lcom/xiaopeng/devtools/presenter/h/e;->getUpdateResult()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 565
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 568
    :cond_1
    const-string p1, "SUPPORT_TMCU"

    invoke-static {p1}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 569
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ua:Landroid/widget/Button;

    const v0, 0x7f100428

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uf:Lcom/xiaopeng/devtools/presenter/h/e;

    .line 570
    invoke-virtual {v4}, Lcom/xiaopeng/devtools/presenter/h/e;->kv()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uf:Lcom/xiaopeng/devtools/presenter/h/e;

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/presenter/h/e;->kw()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 569
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 572
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ua:Landroid/widget/Button;

    const v0, 0x7f100429

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uf:Lcom/xiaopeng/devtools/presenter/h/e;

    .line 573
    invoke-virtual {v3}, Lcom/xiaopeng/devtools/presenter/h/e;->kv()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 572
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 577
    :cond_3
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 587
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ua:Landroid/widget/Button;

    invoke-direct {p0, p1, v3}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 588
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ua:Landroid/widget/Button;

    const v0, 0x7f1002fd

    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uh:Lcom/xiaopeng/devtools/presenter/h/a;

    .line 589
    invoke-virtual {v3}, Lcom/xiaopeng/devtools/presenter/h/a;->kg()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 588
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 590
    goto :goto_1

    .line 583
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ua:Landroid/widget/Button;

    invoke-direct {p0, p1, v3}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 584
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ua:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 585
    goto :goto_1

    .line 579
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ua:Landroid/widget/Button;

    invoke-direct {p0, p1, v2}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 580
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ua:Landroid/widget/Button;

    const v0, 0x7f100427

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 581
    nop

    .line 595
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic dL(I)V
    .locals 3

    .line 556
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TW:Landroid/widget/Button;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const p1, 0x7f100421

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic dM(I)V
    .locals 3

    .line 535
    if-eqz p1, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 546
    const-string v0, "TestUpdateActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOTAMcuStatus status :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TW:Landroid/widget/Button;

    const v0, 0x7f1001cf

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 548
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TW:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    goto :goto_0

    .line 541
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TW:Landroid/widget/Button;

    const v0, 0x7f1001d0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 542
    const/4 p1, 0x0

    new-instance v0, Lcom/xiaopeng/devtools/view/update/-$$Lambda$TestUpdateActivity$bBLeZ5SrRmxLuqz9nLTbkJLZwus;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/update/-$$Lambda$TestUpdateActivity$bBLeZ5SrRmxLuqz9nLTbkJLZwus;-><init>(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;)V

    const-wide/16 v1, 0x3e8

    invoke-static {p1, v0, v1, v2}, Lcom/xiaopeng/lib/utils/j;->b(ILjava/lang/Runnable;J)V

    .line 544
    goto :goto_0

    .line 539
    :cond_1
    :pswitch_0
    nop

    .line 551
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$2paz9q16cobGGZnB-B_ULdah0dQ(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->dJ(I)V

    return-void
.end method

.method public static synthetic lambda$Dbf0S7MrJjlD8vd64UatT4--f10(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->dH(I)V

    return-void
.end method

.method public static synthetic lambda$FC_PFCtzSFBrylUPoqQ0pgectCE(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->dF(I)V

    return-void
.end method

.method public static synthetic lambda$Fizlq2ad5mTOEZgVYlpXsELMSCI(Ljava/lang/String;Landroid/widget/Button;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->b(Ljava/lang/String;Landroid/widget/Button;II)V

    return-void
.end method

.method public static synthetic lambda$LyOkbxpK29h_YTJrKoSdM9Y0o-4(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->dG(I)V

    return-void
.end method

.method public static synthetic lambda$bBLeZ5SrRmxLuqz9nLTbkJLZwus(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->nW()V

    return-void
.end method

.method public static synthetic lambda$s5PEYhAE0_eNYdD4Y7gxd3gS_0k(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->dL(I)V

    return-void
.end method

.method public static synthetic lambda$uBJeaW-cciGW-Z3JwW1Db9Zs-Z4(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->dI(I)V

    return-void
.end method

.method public static synthetic lambda$x39LfG2qqihTgPIPrK-s2brak0Q(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->dM(I)V

    return-void
.end method

.method public static synthetic lambda$yydTpOB5JtW6f8gJ90dZgafoDuM(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;ZLcom/xiaopeng/devtools/view/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(ZLcom/xiaopeng/devtools/view/a;)V

    return-void
.end method

.method public static synthetic lambda$zNrSnD_LF5vNKNohM89E_j4Fj-w(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->dK(I)V

    return-void
.end method

.method private nV()Z
    .locals 1

    .line 387
    const-string v0, "/system/bin/fastboot_tbox"

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/g;->aY(Ljava/lang/String;)Z

    move-result v0

    .line 388
    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ug:Z

    .line 390
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ug:Z

    return v0
.end method

.method private synthetic nW()V
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ue:Lcom/xiaopeng/devtools/presenter/h/c;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/presenter/h/c;->setOtaMcuReqStatus(I)V

    return-void
.end method


# virtual methods
.method public dA(I)V
    .locals 1

    .line 556
    new-instance v0, Lcom/xiaopeng/devtools/view/update/-$$Lambda$TestUpdateActivity$s5PEYhAE0_eNYdD4Y7gxd3gS_0k;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/update/-$$Lambda$TestUpdateActivity$s5PEYhAE0_eNYdD4Y7gxd3gS_0k;-><init>(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;I)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 557
    return-void
.end method

.method public dB(I)V
    .locals 1

    .line 600
    new-instance v0, Lcom/xiaopeng/devtools/view/update/-$$Lambda$TestUpdateActivity$2paz9q16cobGGZnB-B_ULdah0dQ;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/update/-$$Lambda$TestUpdateActivity$2paz9q16cobGGZnB-B_ULdah0dQ;-><init>(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;I)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 617
    return-void
.end method

.method public dC(I)V
    .locals 1

    .line 561
    new-instance v0, Lcom/xiaopeng/devtools/view/update/-$$Lambda$TestUpdateActivity$zNrSnD_LF5vNKNohM89E_j4Fj-w;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/update/-$$Lambda$TestUpdateActivity$zNrSnD_LF5vNKNohM89E_j4Fj-w;-><init>(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;I)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 596
    return-void
.end method

.method public dD(I)V
    .locals 1

    .line 621
    new-instance v0, Lcom/xiaopeng/devtools/view/update/-$$Lambda$TestUpdateActivity$uBJeaW-cciGW-Z3JwW1Db9Zs-Z4;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/update/-$$Lambda$TestUpdateActivity$uBJeaW-cciGW-Z3JwW1Db9Zs-Z4;-><init>(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;I)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 637
    return-void
.end method

.method public dE(I)V
    .locals 1

    .line 641
    new-instance v0, Lcom/xiaopeng/devtools/view/update/-$$Lambda$TestUpdateActivity$Dbf0S7MrJjlD8vd64UatT4--f10;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/update/-$$Lambda$TestUpdateActivity$Dbf0S7MrJjlD8vd64UatT4--f10;-><init>(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;I)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 645
    return-void
.end method

.method public dx(I)V
    .locals 1

    .line 649
    new-instance v0, Lcom/xiaopeng/devtools/view/update/-$$Lambda$TestUpdateActivity$LyOkbxpK29h_YTJrKoSdM9Y0o-4;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/update/-$$Lambda$TestUpdateActivity$LyOkbxpK29h_YTJrKoSdM9Y0o-4;-><init>(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;I)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 665
    return-void
.end method

.method public dy(I)V
    .locals 1

    .line 669
    new-instance v0, Lcom/xiaopeng/devtools/view/update/-$$Lambda$TestUpdateActivity$FC_PFCtzSFBrylUPoqQ0pgectCE;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/update/-$$Lambda$TestUpdateActivity$FC_PFCtzSFBrylUPoqQ0pgectCE;-><init>(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;I)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 673
    return-void
.end method

.method public dz(I)V
    .locals 1

    .line 534
    new-instance v0, Lcom/xiaopeng/devtools/view/update/-$$Lambda$TestUpdateActivity$x39LfG2qqihTgPIPrK-s2brak0Q;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/update/-$$Lambda$TestUpdateActivity$x39LfG2qqihTgPIPrK-s2brak0Q;-><init>(Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;I)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 552
    return-void
.end method

.method public fd()V
    .locals 3

    .line 268
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fd()V

    .line 269
    const-string v0, "TestUpdateActivity"

    const-string v1, "initBeforeView"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    const v0, 0x7f0c0074

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->setContentView(I)V

    .line 272
    new-instance v0, Lcom/xiaopeng/devtools/model/e/a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/model/e/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->st:Lcom/xiaopeng/devtools/model/e/a;

    .line 273
    new-instance v0, Lcom/xiaopeng/devtools/presenter/h/c;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/h/c;-><init>(Lcom/xiaopeng/devtools/view/update/b;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ue:Lcom/xiaopeng/devtools/presenter/h/c;

    .line 274
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->nV()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Lcom/xiaopeng/devtools/presenter/h/e;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/h/e;-><init>(Lcom/xiaopeng/devtools/view/update/d;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uf:Lcom/xiaopeng/devtools/presenter/h/e;

    goto :goto_0

    .line 277
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FastbootUpdater"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 279
    new-instance v1, Lcom/xiaopeng/devtools/presenter/h/a;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 280
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v2, v0, p0}, Lcom/xiaopeng/devtools/presenter/h/a;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/xiaopeng/devtools/view/update/d;)V

    iput-object v1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uh:Lcom/xiaopeng/devtools/presenter/h/a;

    .line 282
    :goto_0
    new-instance v0, Lcom/xiaopeng/devtools/presenter/h/d;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/h/d;-><init>(Lcom/xiaopeng/devtools/view/update/c;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ui:Lcom/xiaopeng/devtools/presenter/h/d;

    .line 283
    new-instance v0, Lcom/xiaopeng/devtools/presenter/h/f;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/h/f;-><init>(Lcom/xiaopeng/devtools/view/update/e;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uj:Lcom/xiaopeng/devtools/presenter/h/f;

    .line 284
    new-instance v0, Lcom/xiaopeng/devtools/presenter/h/b;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/h/b;-><init>(Lcom/xiaopeng/devtools/view/update/a;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uk:Lcom/xiaopeng/devtools/presenter/h/b;

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ui:Lcom/xiaopeng/devtools/presenter/h/d;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/h/d;->kt()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ul:Z

    .line 286
    return-void
.end method

.method public fe()V
    .locals 1

    .line 290
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->fe()V

    .line 291
    const v0, 0x7f0900fe

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->FD:Landroid/widget/Button;

    .line 292
    const v0, 0x7f09013d

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TW:Landroid/widget/Button;

    .line 293
    const v0, 0x7f090140

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ua:Landroid/widget/Button;

    .line 294
    const v0, 0x7f09013e

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TX:Landroid/widget/Button;

    .line 295
    const v0, 0x7f09013f

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TY:Landroid/widget/Button;

    .line 296
    const v0, 0x7f090142

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TZ:Landroid/widget/Button;

    .line 297
    const v0, 0x7f0900f2

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->FE:Landroid/widget/Button;

    .line 298
    const v0, 0x7f090143

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ub:Landroid/widget/Button;

    .line 299
    const v0, 0x7f090144

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uc:Landroid/widget/Button;

    .line 300
    const v0, 0x7f090141

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ud:Landroid/widget/Button;

    .line 301
    return-void
.end method

.method public ff()V
    .locals 2

    .line 320
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->ff()V

    .line 321
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 322
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 325
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->AS:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 329
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->FE:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->FD:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TW:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ua:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TX:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TY:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TZ:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ub:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uc:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ud:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 343
    :cond_0
    return-void
.end method

.method public lJ()V
    .locals 2

    .line 305
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->lJ()V

    .line 306
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(ZZ)V

    .line 307
    const-string v0, "UPDATE_ANDROID_SOC"

    invoke-static {v0}, Lcom/xiaopeng/a/a$a;->dZ(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->FD:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 310
    :cond_0
    const-string v0, "UPDATE_IVI_SCREEN"

    invoke-static {v0}, Lcom/xiaopeng/a/a$a;->dZ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ub:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TY:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TZ:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uc:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 316
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900f2

    if-eq p1, v0, :cond_12

    const v0, 0x7f0900fe

    const/4 v1, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 220
    :pswitch_0
    const-string p1, "TestUpdateActivity"

    const-string v0, "start to update xpu"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uj:Lcom/xiaopeng/devtools/presenter/h/f;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/h/f;->kC()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 222
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uj:Lcom/xiaopeng/devtools/presenter/h/f;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/h/f;->it()V

    .line 223
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uj:Lcom/xiaopeng/devtools/presenter/h/f;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/h/f;->kD()V

    .line 224
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uc:Landroid/widget/Button;

    const v0, 0x7f10042a

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    .line 226
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uc:Landroid/widget/Button;

    const v0, 0x7f10022b

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 228
    goto/16 :goto_0

    .line 209
    :pswitch_1
    iget-boolean p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ul:Z

    if-eqz p1, :cond_13

    .line 210
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ui:Lcom/xiaopeng/devtools/presenter/h/d;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/h/d;->kq()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 211
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ui:Lcom/xiaopeng/devtools/presenter/h/d;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/h/d;->it()V

    .line 212
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ui:Lcom/xiaopeng/devtools/presenter/h/d;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/h/d;->kr()V

    goto/16 :goto_0

    .line 214
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ub:Landroid/widget/Button;

    const v0, 0x7f10022a

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    .line 198
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TZ:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 199
    const v1, 0x7f100383

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 200
    const p1, 0x7f100384

    invoke-static {p1}, Lcom/xiaopeng/xui/app/g;->show(I)V

    .line 202
    :cond_2
    const-string p1, "com.xiaopeng.broadcast.START_UPGRADE_MODEM"

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->bm(Ljava/lang/String;)V

    .line 203
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->ri:Lcom/xiaopeng/devtools/devdebug/hwcheck/b;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/devdebug/hwcheck/b;->fi()V

    .line 204
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TZ:Landroid/widget/Button;

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 205
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TZ:Landroid/widget/Button;

    const v0, 0x7f100381

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 206
    goto/16 :goto_0

    .line 231
    :pswitch_3
    const-string p1, "TestUpdateActivity"

    const-string v0, "start to update ICM"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    const-string p1, "UPDATE_ICM_BY_OTA"

    invoke-static {p1}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const v0, 0x7f100229

    const v1, 0x7f10041e

    if-eqz p1, :cond_5

    .line 233
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->st:Lcom/xiaopeng/devtools/model/e/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/model/e/a;->he()Z

    move-result p1

    if-nez p1, :cond_3

    .line 234
    const-string p1, "TestUpdateActivity"

    const-string v0, "btn_update_meter service not ready."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-void

    .line 237
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->st:Lcom/xiaopeng/devtools/model/e/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/model/e/a;->hasMeterFileFromUsb()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 238
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->st:Lcom/xiaopeng/devtools/model/e/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/model/e/a;->updateMeterFromUsb()V

    .line 239
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ud:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    .line 241
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ud:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    .line 244
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uk:Lcom/xiaopeng/devtools/presenter/h/b;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/h/b;->ko()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 245
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uk:Lcom/xiaopeng/devtools/presenter/h/b;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/h/b;->it()V

    .line 246
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uk:Lcom/xiaopeng/devtools/presenter/h/b;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/h/b;->kn()V

    .line 247
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uk:Lcom/xiaopeng/devtools/presenter/h/b;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/h/b;->kp()V

    .line 248
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ud:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    .line 250
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ud:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 253
    goto/16 :goto_0

    .line 148
    :pswitch_4
    iget-boolean p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ug:Z

    const v1, 0x7f100228

    if-nez p1, :cond_8

    .line 149
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uf:Lcom/xiaopeng/devtools/presenter/h/e;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/h/e;->kz()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 150
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ua:Landroid/widget/Button;

    const v1, 0x7f100426

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 151
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ua:Landroid/widget/Button;

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 152
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uf:Lcom/xiaopeng/devtools/presenter/h/e;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/h/e;->it()V

    .line 153
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uf:Lcom/xiaopeng/devtools/presenter/h/e;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/h/e;->kA()V

    goto/16 :goto_0

    .line 155
    :cond_7
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ua:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    .line 158
    :cond_8
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uh:Lcom/xiaopeng/devtools/presenter/h/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/h/a;->ke()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 159
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uh:Lcom/xiaopeng/devtools/presenter/h/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/h/a;->kf()V

    goto/16 :goto_0

    .line 161
    :cond_9
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ua:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 165
    goto/16 :goto_0

    .line 184
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->st:Lcom/xiaopeng/devtools/model/e/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/model/e/a;->he()Z

    move-result p1

    if-nez p1, :cond_a

    .line 185
    const-string p1, "TestUpdateActivity"

    const-string v0, "btn_update_scu service not ready."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void

    .line 189
    :cond_a
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->st:Lcom/xiaopeng/devtools/model/e/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/model/e/a;->hasPsuFileFromUsb()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 190
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->st:Lcom/xiaopeng/devtools/model/e/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/model/e/a;->updatePsuFromUsb()V

    .line 191
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TY:Landroid/widget/Button;

    const v0, 0x7f100424

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    .line 193
    :cond_b
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TY:Landroid/widget/Button;

    const v0, 0x7f100224

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 195
    goto/16 :goto_0

    .line 168
    :pswitch_6
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->st:Lcom/xiaopeng/devtools/model/e/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/model/e/a;->he()Z

    move-result p1

    if-nez p1, :cond_c

    .line 169
    const-string p1, "TestUpdateActivity"

    const-string v0, "btn_update_meter service not ready."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void

    .line 172
    :cond_c
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->st:Lcom/xiaopeng/devtools/model/e/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/model/e/a;->hasMeterFileFromUsb()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 173
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->st:Lcom/xiaopeng/devtools/model/e/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/model/e/a;->updateMeterFromUsb()V

    .line 175
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TX:Landroid/widget/Button;

    const v1, 0x7f100422

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 176
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TX:Landroid/widget/Button;

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    goto :goto_0

    .line 179
    :cond_d
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TX:Landroid/widget/Button;

    const v0, 0x7f100223

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 181
    goto :goto_0

    .line 137
    :pswitch_7
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ue:Lcom/xiaopeng/devtools/presenter/h/c;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/h/c;->hasMcuFileFromUsb()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 138
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TW:Landroid/widget/Button;

    const v2, 0x7f100420

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setText(I)V

    .line 139
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TW:Landroid/widget/Button;

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 140
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ue:Lcom/xiaopeng/devtools/presenter/h/c;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/presenter/h/c;->it()V

    .line 141
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ue:Lcom/xiaopeng/devtools/presenter/h/c;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/devtools/presenter/h/c;->setOtaMcuReqStatus(I)V

    goto :goto_0

    .line 143
    :cond_e
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TW:Landroid/widget/Button;

    const v0, 0x7f100222

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 145
    goto :goto_0

    .line 123
    :cond_f
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->st:Lcom/xiaopeng/devtools/model/e/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/model/e/a;->he()Z

    move-result p1

    if-nez p1, :cond_10

    .line 124
    const-string p1, "TestUpdateActivity"

    const-string v0, "btn_state_usb service not ready."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void

    .line 128
    :cond_10
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->st:Lcom/xiaopeng/devtools/model/e/a;

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/model/e/a;->hasCduFileFromUsb()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 129
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->FD:Landroid/widget/Button;

    const v0, 0x7f1002ac

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 130
    invoke-direct {p0, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->aq(Z)V

    goto :goto_0

    .line 132
    :cond_11
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->FD:Landroid/widget/Button;

    const v0, 0x7f10018f

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 134
    goto :goto_0

    .line 256
    :cond_12
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/xiaopeng/devtools/view/clean/ClearDataActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    const/high16 v0, 0x14000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 258
    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->startActivity(Landroid/content/Intent;)V

    .line 259
    nop

    .line 264
    :cond_13
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f09013d
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .line 365
    const-string v0, "TestUpdateActivity"

    const-string v1, "MainActivity onDestroy"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->st:Lcom/xiaopeng/devtools/model/e/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/e/a;->onDestroy()V

    .line 367
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onDestroy()V

    .line 369
    const-string v0, "com.xiaopeng.broadcast.STOP_UPGRADE_MODEM"

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->bm(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->AS:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 372
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ue:Lcom/xiaopeng/devtools/presenter/h/c;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/h/c;->onDestroy()V

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uf:Lcom/xiaopeng/devtools/presenter/h/e;

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uf:Lcom/xiaopeng/devtools/presenter/h/e;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/h/e;->onDestroy()V

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uh:Lcom/xiaopeng/devtools/presenter/h/a;

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uh:Lcom/xiaopeng/devtools/presenter/h/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/h/a;->onDestroy()V

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Ui:Lcom/xiaopeng/devtools/presenter/h/d;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/h/d;->onDestroy()V

    .line 383
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->Uk:Lcom/xiaopeng/devtools/presenter/h/b;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/h/b;->onDestroy()V

    .line 384
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/devtools/bean/event/ModemUpgradeEvent;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TZ:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TZ:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/widget/Button;Z)V

    .line 70
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TZ:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 71
    const-string v0, "com.xiaopeng.broadcast.STOP_UPGRADE_MODEM"

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->bm(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->st:Lcom/xiaopeng/devtools/model/e/a;

    const-string v1, "CDU4G"

    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/event/ModemUpgradeEvent;->isSuccess()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/devtools/model/e/a;->updateEcuComplete(Ljava/lang/String;Z)V

    .line 73
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/event/ModemUpgradeEvent;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 74
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TZ:Landroid/widget/Button;

    const v0, 0x7f100385

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 75
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "TestUpdateActivity"

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/utils/m;->f(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->TZ:Landroid/widget/Button;

    const v0, 0x7f100383

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 80
    :cond_2
    :goto_0
    return-void
.end method

.method public onReceiveData(Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 84
    const-string v0, "TestUpdateActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveData event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    if-nez p1, :cond_0

    .line 86
    return-void

    .line 88
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

    .line 90
    :cond_3
    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;->getPayloadData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/ipcmodule/IIpcService$IpcMessageEvent;->getMsgID()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/devtools/view/update/TestUpdateActivity;->a(Landroid/os/Bundle;I)V

    .line 91
    nop

    .line 95
    :goto_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 353
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onResume()V

    .line 354
    const-string v0, "TestUpdateActivity"

    const-string v1, "MainActivity onResume"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 347
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onStart()V

    .line 348
    const-string v0, "TestUpdateActivity"

    const-string v1, "MainActivity onStart"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 359
    const-string v0, "TestUpdateActivity"

    const-string v1, "MainActivity onStop"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/ActionBarActivity;->onStop()V

    .line 361
    return-void
.end method

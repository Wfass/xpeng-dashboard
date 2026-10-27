.class public Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;
.super Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;
.source "OneClickDiagnosisActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private Ec:Lcom/xiaopeng/xui/app/c;

.field private Ed:Landroid/widget/Button;

.field private Ee:Landroid/widget/Button;

.field private Ef:Landroid/widget/Button;

.field private Eg:Lcom/xiaopeng/xui/widget/XButton;

.field private Eh:Lcom/xiaopeng/xui/widget/XButton;

.field private Ei:Lcom/xiaopeng/xui/widget/XTextView;

.field private Ej:J

.field private Ek:Ljava/lang/StringBuffer;

.field private El:Lcom/xiaopeng/logictree/f;

.field private Em:Lcom/xiaopeng/logictree/g;

.field private En:Ljava/lang/String;

.field private mContainer:Landroid/view/ViewGroup;

.field private mEndTimeStamp:J

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private pd:Lcom/xiaopeng/xui/app/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->El:Lcom/xiaopeng/logictree/f;

    .line 62
    new-instance v0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity$1;-><init>(Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->En:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->En:Ljava/lang/String;

    return-object p1
.end method

.method private synthetic a(IJLcom/xiaopeng/xui/widget/datepicker/XDatePicker;III)V
    .locals 1

    .line 315
    iget-object p4, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ek:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 316
    iget-object p4, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ek:Ljava/lang/StringBuffer;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 317
    iget-object p4, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ek:Ljava/lang/StringBuffer;

    const-string p5, "-"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    add-int/lit8 p6, p6, 0x1

    const/16 p4, 0xa

    if-ge p6, p4, :cond_0

    .line 319
    iget-object p5, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ek:Ljava/lang/StringBuffer;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 321
    :cond_0
    iget-object p5, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ek:Ljava/lang/StringBuffer;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 322
    iget-object p5, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ek:Ljava/lang/StringBuffer;

    const-string p6, "-"

    invoke-virtual {p5, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    if-ge p7, p4, :cond_1

    .line 324
    iget-object p4, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ek:Ljava/lang/StringBuffer;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 326
    :cond_1
    iget-object p4, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ek:Ljava/lang/StringBuffer;

    invoke-virtual {p4, p7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 327
    iget-object p4, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ek:Ljava/lang/StringBuffer;

    const-string p5, " "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    new-instance p4, Lcom/xiaopeng/xui/app/f;

    new-instance p5, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$OneClickDiagnosisActivity$MrOxwumu49d22zPibLTSc_L2KII;

    invoke-direct {p5, p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$OneClickDiagnosisActivity$MrOxwumu49d22zPibLTSc_L2KII;-><init>(Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;I)V

    const-wide/16 p6, 0x3e8

    div-long/2addr p2, p6

    const-string p1, "HH"

    .line 351
    invoke-static {p2, p3, p1}, Lcom/xiaopeng/commonfunc/utils/q;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string p6, "mm"

    .line 352
    invoke-static {p2, p3, p6}, Lcom/xiaopeng/commonfunc/utils/q;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p4, p0, p5, p1, p2}, Lcom/xiaopeng/xui/app/f;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/f$a;II)V

    const p1, 0x7f1002b0

    .line 353
    invoke-virtual {p4, p1}, Lcom/xiaopeng/xui/app/f;->dV(I)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    const p2, 0x7f10011d

    .line 354
    invoke-virtual {p0, p2}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/c;->g(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    const p2, 0x7f1000bd

    .line 355
    invoke-virtual {p0, p2}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/c;->h(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    .line 356
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->show()V

    .line 357
    return-void
.end method

.method private synthetic a(ILcom/xiaopeng/xui/widget/timepicker/XTimePicker;II)V
    .locals 2

    .line 329
    const/4 p2, 0x0

    const/16 v0, 0xa

    if-ge p3, v0, :cond_0

    .line 330
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ek:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ek:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 333
    iget-object p3, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ek:Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    if-ge p4, v0, :cond_1

    .line 335
    iget-object p3, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ek:Ljava/lang/StringBuffer;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 337
    :cond_1
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ek:Ljava/lang/StringBuffer;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 338
    iget-object p2, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ek:Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 339
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 346
    :pswitch_0
    const-string p1, "yyyy-MM-dd HH:mm"

    invoke-static {p2, p1}, Lcom/xiaopeng/commonfunc/utils/q;->z(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->mEndTimeStamp:J

    .line 348
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ee:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 341
    :pswitch_1
    const-string p1, "yyyy-MM-dd HH:mm"

    invoke-static {p2, p1}, Lcom/xiaopeng/commonfunc/utils/q;->z(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ej:J

    .line 343
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ed:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 344
    nop

    .line 351
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a([Lcom/xiaopeng/logictree/e;)V
    .locals 18

    move-object/from16 v0, p0

    .line 384
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 386
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 387
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v3, v5, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 389
    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 390
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 392
    const/high16 v7, 0x40400000    # 3.0f

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 394
    nop

    .line 395
    array-length v8, v1

    move-object v10, v2

    move v2, v6

    move v9, v2

    :goto_0
    const/4 v11, 0x3

    if-ge v2, v8, :cond_1

    aget-object v12, v1, v2

    .line 396
    add-int/lit8 v9, v9, 0x1

    .line 397
    new-instance v13, Landroid/widget/Button;

    invoke-direct {v13, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 399
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v15, 0x64

    invoke-direct {v14, v6, v15, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 400
    invoke-virtual {v14, v5, v5, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 401
    invoke-virtual {v13, v14}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    const/high16 v14, -0x1000000

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setTextColor(I)V

    .line 403
    const/high16 v14, 0x41f00000    # 30.0f

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setTextSize(F)V

    .line 404
    invoke-virtual {v12}, Lcom/xiaopeng/logictree/e;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 405
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 406
    const v14, 0x7f080076

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 407
    invoke-virtual {v13, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    const-string v14, "OneClickDiagnosisActivity"

    const-string v15, "createUI"

    new-array v11, v11, [Ljava/lang/Object;

    const-string v16, "Create Button. name[%s] tag[%s]"

    aput-object v16, v11, v6

    .line 409
    invoke-virtual {v12}, Lcom/xiaopeng/logictree/e;->getName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v11, v17

    const/16 v16, 0x2

    invoke-virtual {v12}, Lcom/xiaopeng/logictree/e;->pP()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v16

    .line 408
    invoke-static {v14, v15, v11}, Lcom/xiaopeng/lib/utils/c;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 412
    rem-int/lit8 v11, v9, 0x3

    if-nez v11, :cond_0

    .line 413
    iget-object v11, v0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 415
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 416
    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    invoke-virtual {v10, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 418
    invoke-virtual {v10, v7}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 395
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 422
    :cond_1
    rem-int/2addr v9, v11

    if-eqz v9, :cond_2

    .line 423
    iget-object v0, v0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 425
    :cond_2
    return-void
.end method

.method private synthetic a(Lcom/xiaopeng/xui/app/c;)Z
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->ma()V

    .line 201
    const/4 p1, 0x0

    return p1
.end method

.method private ai(Landroid/content/Context;)V
    .locals 2

    .line 228
    new-instance v0, Lcom/xiaopeng/xui/app/e;

    const v1, 0x7f1101f3

    invoke-direct {v0, p1, v1}, Lcom/xiaopeng/xui/app/e;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->pd:Lcom/xiaopeng/xui/app/e;

    .line 229
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->pd:Lcom/xiaopeng/xui/app/e;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/e;->create()V

    .line 230
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->pd:Lcom/xiaopeng/xui/app/e;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/e;->setCancelable(Z)V

    .line 231
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->pd:Lcom/xiaopeng/xui/app/e;

    sget-object v0, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$OneClickDiagnosisActivity$9Nk5FKMDyy5goCZao-ml_iyLuCg;->INSTANCE:Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$OneClickDiagnosisActivity$9Nk5FKMDyy5goCZao-ml_iyLuCg;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/e;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 233
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->pd:Lcom/xiaopeng/xui/app/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/e;->a(Lcom/xiaopeng/xui/app/e$a;)V

    .line 234
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->pd:Lcom/xiaopeng/xui/app/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/e;->aZ(Z)V

    .line 235
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->pd:Lcom/xiaopeng/xui/app/e;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/e;->dY(I)V

    .line 236
    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;)Lcom/xiaopeng/xui/widget/XButton;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Eg:Lcom/xiaopeng/xui/widget/XButton;

    return-object p0
.end method

.method private static synthetic b(Landroid/content/DialogInterface;)V
    .locals 3

    .line 232
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;

    const/16 v1, 0x2712

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private cJ(I)V
    .locals 1

    .line 255
    new-instance v0, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$OneClickDiagnosisActivity$nNB5Gh6hRwcX-A_OAKKj_oyqsdU;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$OneClickDiagnosisActivity$nNB5Gh6hRwcX-A_OAKKj_oyqsdU;-><init>(Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;I)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 264
    return-void
.end method

.method private cK(I)V
    .locals 9

    .line 309
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 310
    iget-wide v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->mEndTimeStamp:J

    goto :goto_0

    .line 312
    :cond_0
    iget-wide v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ej:J

    .line 314
    :goto_0
    new-instance v8, Lcom/xiaopeng/xui/app/b;

    new-instance v4, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$OneClickDiagnosisActivity$H9Mz5apIZJkofgNAe_IHqLQhEX4;

    invoke-direct {v4, p0, p1, v0, v1}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$OneClickDiagnosisActivity$H9Mz5apIZJkofgNAe_IHqLQhEX4;-><init>(Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;IJ)V

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-string p1, "yyyy"

    .line 357
    invoke-static {v0, v1, p1}, Lcom/xiaopeng/commonfunc/utils/q;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string p1, "MM"

    .line 358
    invoke-static {v0, v1, p1}, Lcom/xiaopeng/commonfunc/utils/q;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 v6, p1, -0x1

    const-string p1, "dd"

    .line 359
    invoke-static {v0, v1, p1}, Lcom/xiaopeng/commonfunc/utils/q;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/xiaopeng/xui/app/b;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/b$a;III)V

    const p1, 0x7f1002af

    .line 360
    invoke-virtual {v8, p1}, Lcom/xiaopeng/xui/app/b;->dV(I)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    const v0, 0x7f10011d

    .line 361
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/c;->g(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    const v0, 0x7f1000bd

    .line 362
    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/c;->h(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    .line 363
    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->show()V

    .line 364
    return-void
.end method

.method private synthetic cL(I)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ec:Lcom/xiaopeng/xui/app/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ec:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/c;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ec:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/c;->dismiss()V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->pd:Lcom/xiaopeng/xui/app/e;

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->pd:Lcom/xiaopeng/xui/app/e;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/app/e;->setMessage(Ljava/lang/CharSequence;)V

    .line 261
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->pd:Lcom/xiaopeng/xui/app/e;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/e;->show()V

    .line 263
    :cond_1
    return-void
.end method

.method private synthetic g(Landroid/view/View;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->lX()V

    return-void
.end method

.method private synthetic h(Landroid/view/View;)V
    .locals 1

    .line 193
    const-string p1, "OneClickDiagnosisActivity"

    const-string v0, "Update logic tree Via Cloud"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Em:Lcom/xiaopeng/logictree/g;

    sget-object v0, Lcom/xiaopeng/devtools/MyApplication;->qx:Lcom/xiaopeng/devtools/MyApplication;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/logictree/g;->d(Landroid/app/Application;)V

    .line 195
    const p1, 0x7f100433

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->cJ(I)V

    .line 196
    return-void
.end method

.method private synthetic i(Landroid/view/View;)V
    .locals 2

    .line 188
    const-string p1, "OneClickDiagnosisActivity"

    const-string v0, "Update logic tree Via UDisk"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Em:Lcom/xiaopeng/logictree/g;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->En:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "logictree"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/logictree/g;->h(Ljava/lang/String;Z)V

    .line 190
    const p1, 0x7f100434

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->cJ(I)V

    .line 191
    return-void
.end method

.method private lV()V
    .locals 1

    .line 174
    new-instance v0, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$OneClickDiagnosisActivity$1gA9jpNLhIAFa4MSQR6VL4wET50;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$OneClickDiagnosisActivity$1gA9jpNLhIAFa4MSQR6VL4wET50;-><init>(Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 178
    return-void
.end method

.method private lW()V
    .locals 4

    .line 181
    new-instance v0, Lcom/xiaopeng/xui/app/c;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ec:Lcom/xiaopeng/xui/app/c;

    .line 182
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ec:Lcom/xiaopeng/xui/app/c;

    .line 183
    invoke-virtual {v1}, Lcom/xiaopeng/xui/app/c;->qs()Landroid/view/ViewGroup;

    move-result-object v1

    .line 182
    const/4 v2, 0x0

    const v3, 0x7f0c0091

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 184
    const v1, 0x7f0903c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ei:Lcom/xiaopeng/xui/widget/XTextView;

    .line 185
    const v1, 0x7f09044c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Eg:Lcom/xiaopeng/xui/widget/XButton;

    .line 186
    const v1, 0x7f09044b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Eh:Lcom/xiaopeng/xui/widget/XButton;

    .line 187
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Eg:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v3, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$OneClickDiagnosisActivity$r6wY2P16crWWPDIOyGSL58liUcg;

    invoke-direct {v3, p0}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$OneClickDiagnosisActivity$r6wY2P16crWWPDIOyGSL58liUcg;-><init>(Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;)V

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Eh:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v3, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$OneClickDiagnosisActivity$af1cRhXrGMSlW3EzEdV2OppfN_w;

    invoke-direct {v3, p0}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$OneClickDiagnosisActivity$af1cRhXrGMSlW3EzEdV2OppfN_w;-><init>(Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;)V

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ec:Lcom/xiaopeng/xui/app/c;

    const v3, 0x7f1003fa

    invoke-virtual {v1, v3}, Lcom/xiaopeng/xui/app/c;->dV(I)Lcom/xiaopeng/xui/app/c;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/xui/app/c;->d(Landroid/view/View;Z)Lcom/xiaopeng/xui/app/c;

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ec:Lcom/xiaopeng/xui/app/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/c;->aW(Z)Lcom/xiaopeng/xui/app/c;

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ec:Lcom/xiaopeng/xui/app/c;

    new-instance v1, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$OneClickDiagnosisActivity$8xPJQWrpWq89iVnIBWlOanDJ4VI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$OneClickDiagnosisActivity$8xPJQWrpWq89iVnIBWlOanDJ4VI;-><init>(Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/c;->a(Lcom/xiaopeng/xui/app/d$b;)Lcom/xiaopeng/xui/app/c;

    .line 203
    return-void
.end method

.method private lX()V
    .locals 6

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Eg:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->En:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Eh:Lcom/xiaopeng/xui/widget/XButton;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Em:Lcom/xiaopeng/logictree/g;

    invoke-virtual {v1}, Lcom/xiaopeng/logictree/g;->pY()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setEnabled(Z)V

    .line 208
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 209
    const v1, 0x7f1000f7

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Em:Lcom/xiaopeng/logictree/g;

    .line 210
    invoke-virtual {v4}, Lcom/xiaopeng/logictree/g;->pW()Lcom/xiaopeng/logictree/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/f;->getVersion()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 209
    invoke-virtual {p0, v1, v3}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    const v1, 0x7f1001b5

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Em:Lcom/xiaopeng/logictree/g;

    invoke-virtual {v3}, Lcom/xiaopeng/logictree/g;->pV()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 212
    const-string v3, "UNKNOWN"

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Em:Lcom/xiaopeng/logictree/g;

    invoke-virtual {v3}, Lcom/xiaopeng/logictree/g;->pV()Ljava/lang/String;

    move-result-object v3

    :goto_0
    aput-object v3, v2, v5

    .line 211
    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Em:Lcom/xiaopeng/logictree/g;

    invoke-virtual {v1}, Lcom/xiaopeng/logictree/g;->pV()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 214
    const v1, 0x7f1003ed

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Em:Lcom/xiaopeng/logictree/g;

    invoke-virtual {v1}, Lcom/xiaopeng/logictree/g;->pY()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 216
    const v1, 0x7f1003fb

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 218
    :cond_2
    const v1, 0x7f1003ee

    invoke-virtual {p0, v1}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ei:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ec:Lcom/xiaopeng/xui/app/c;

    if-eqz v0, :cond_3

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ec:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/c;->show()V

    .line 223
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->ma()V

    .line 225
    :cond_3
    return-void
.end method

.method private lY()V
    .locals 5

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Em:Lcom/xiaopeng/logictree/g;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/g;->pW()Lcom/xiaopeng/logictree/f;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->El:Lcom/xiaopeng/logictree/f;

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->El:Lcom/xiaopeng/logictree/f;

    if-nez v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->finish()V

    .line 242
    const v0, 0x7f10003b

    invoke-static {p0, v0}, Lcom/xiaopeng/commonfunc/utils/r;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Em:Lcom/xiaopeng/logictree/g;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/g;->pY()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    const v0, 0x7f1001c2

    invoke-static {p0, v0}, Lcom/xiaopeng/commonfunc/utils/r;->b(Landroid/content/Context;I)V

    .line 245
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->lX()V

    goto :goto_0

    .line 247
    :cond_1
    const v0, 0x7f1001c1

    invoke-static {p0, v0}, Lcom/xiaopeng/commonfunc/utils/r;->b(Landroid/content/Context;I)V

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Cr:Lcom/xiaopeng/devtools/view/ActionBar;

    const v1, 0x7f100236

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->El:Lcom/xiaopeng/logictree/f;

    invoke-virtual {v4}, Lcom/xiaopeng/logictree/f;->getVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/ActionBar;->setCenterText(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->El:Lcom/xiaopeng/logictree/f;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/f;->pR()[Lcom/xiaopeng/logictree/e;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->a([Lcom/xiaopeng/logictree/e;)V

    .line 250
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->ma()V

    .line 252
    :goto_0
    return-void
.end method

.method private lZ()V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Em:Lcom/xiaopeng/logictree/g;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/g;->pX()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ef:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 270
    :cond_0
    return-void
.end method

.method public static synthetic lambda$1gA9jpNLhIAFa4MSQR6VL4wET50(Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->mc()V

    return-void
.end method

.method public static synthetic lambda$8xPJQWrpWq89iVnIBWlOanDJ4VI(Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;Lcom/xiaopeng/xui/app/c;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->a(Lcom/xiaopeng/xui/app/c;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$9Nk5FKMDyy5goCZao-ml_iyLuCg(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->b(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic lambda$H9Mz5apIZJkofgNAe_IHqLQhEX4(Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;IJLcom/xiaopeng/xui/widget/datepicker/XDatePicker;III)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->a(IJLcom/xiaopeng/xui/widget/datepicker/XDatePicker;III)V

    return-void
.end method

.method public static synthetic lambda$MrOxwumu49d22zPibLTSc_L2KII(Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;ILcom/xiaopeng/xui/widget/timepicker/XTimePicker;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->a(ILcom/xiaopeng/xui/widget/timepicker/XTimePicker;II)V

    return-void
.end method

.method public static synthetic lambda$SMm1ut8LtAuvDbo9PYH-c67uEOk(Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->g(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$UPaIrWRqgsTHxrk4yBUIpAG0hfM(Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->mb()V

    return-void
.end method

.method public static synthetic lambda$af1cRhXrGMSlW3EzEdV2OppfN_w(Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->h(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$nNB5Gh6hRwcX-A_OAKKj_oyqsdU(Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->cL(I)V

    return-void
.end method

.method public static synthetic lambda$r6wY2P16crWWPDIOyGSL58liUcg(Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->i(Landroid/view/View;)V

    return-void
.end method

.method private ma()V
    .locals 1

    .line 273
    new-instance v0, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$OneClickDiagnosisActivity$UPaIrWRqgsTHxrk4yBUIpAG0hfM;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$OneClickDiagnosisActivity$UPaIrWRqgsTHxrk4yBUIpAG0hfM;-><init>(Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 278
    return-void
.end method

.method private synthetic mb()V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->pd:Lcom/xiaopeng/xui/app/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->pd:Lcom/xiaopeng/xui/app/e;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/e;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->pd:Lcom/xiaopeng/xui/app/e;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/e;->dismiss()V

    .line 277
    :cond_0
    return-void
.end method

.method private synthetic mc()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Em:Lcom/xiaopeng/logictree/g;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/g;->pS()Z

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Em:Lcom/xiaopeng/logictree/g;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/g;->pT()V

    .line 177
    return-void
.end method


# virtual methods
.method public fd()V
    .locals 2

    .line 118
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->fd()V

    .line 119
    const v0, 0x7f0c005a

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->setContentView(I)V

    .line 120
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ek:Ljava/lang/StringBuffer;

    .line 121
    new-instance v0, Lcom/xiaopeng/logictree/g;

    invoke-direct {v0}, Lcom/xiaopeng/logictree/g;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Em:Lcom/xiaopeng/logictree/g;

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Em:Lcom/xiaopeng/logictree/g;

    sget-object v1, Lcom/xiaopeng/devtools/MyApplication;->qx:Lcom/xiaopeng/devtools/MyApplication;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/logictree/g;->e(Landroid/app/Application;)V

    .line 123
    return-void
.end method

.method public fe()V
    .locals 1

    .line 127
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->fe()V

    .line 128
    const v0, 0x7f090181

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->mContainer:Landroid/view/ViewGroup;

    .line 129
    const v0, 0x7f090365

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ed:Landroid/widget/Button;

    .line 130
    const v0, 0x7f0901b6

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ee:Landroid/widget/Button;

    .line 131
    const v0, 0x7f090186

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ef:Landroid/widget/Button;

    .line 132
    invoke-direct {p0, p0}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->ai(Landroid/content/Context;)V

    .line 133
    return-void
.end method

.method public ff()V
    .locals 2

    .line 149
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->ff()V

    .line 150
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->lW()V

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ed:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ee:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ef:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-static {p0}, Lcom/xiaopeng/commonfunc/utils/f;->k(Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Cr:Lcom/xiaopeng/devtools/view/ActionBar;

    new-instance v1, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$OneClickDiagnosisActivity$SMm1ut8LtAuvDbo9PYH-c67uEOk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/aftersales/-$$Lambda$OneClickDiagnosisActivity$SMm1ut8LtAuvDbo9PYH-c67uEOk;-><init>(Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/view/ActionBar;->setOnCenterClickListener(Lcom/xiaopeng/devtools/view/ActionBar$b;)V

    .line 156
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 157
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    return-void
.end method

.method public lJ()V
    .locals 6

    .line 137
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->lJ()V

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->mEndTimeStamp:J

    .line 139
    iget-wide v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->mEndTimeStamp:J

    const-wide/32 v2, 0x927c0

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ej:J

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ed:Landroid/widget/Button;

    iget-wide v1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ej:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-string v5, "yyyy-MM-dd HH:mm"

    invoke-static {v1, v2, v5}, Lcom/xiaopeng/commonfunc/utils/q;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ee:Landroid/widget/Button;

    iget-wide v1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->mEndTimeStamp:J

    div-long/2addr v1, v3

    const-string v3, "yyyy-MM-dd HH:mm"

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/commonfunc/utils/q;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->lZ()V

    .line 145
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 282
    invoke-super {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->onClick(Landroid/view/View;)V

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f090186

    if-eq v0, v1, :cond_3

    const v1, 0x7f0901b6

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    const v1, 0x7f090365

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    .line 295
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 297
    if-lez p1, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->El:Lcom/xiaopeng/logictree/f;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/f;->pR()[Lcom/xiaopeng/logictree/e;

    move-result-object v0

    array-length v0, v0

    if-gt p1, v0, :cond_4

    .line 298
    iget-object v4, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Em:Lcom/xiaopeng/logictree/g;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->El:Lcom/xiaopeng/logictree/f;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/f;->pR()[Lcom/xiaopeng/logictree/e;

    move-result-object v0

    sub-int/2addr p1, v3

    aget-object v5, v0, p1

    iget-wide v6, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ej:J

    iget-wide v8, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->mEndTimeStamp:J

    .line 299
    iget p1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->theme:I

    if-ne p1, v3, :cond_0

    .line 300
    nop

    .line 298
    :goto_0
    move v10, v2

    goto :goto_1

    .line 300
    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    .line 298
    :goto_1
    invoke-virtual/range {v4 .. v10}, Lcom/xiaopeng/logictree/g;->a(Lcom/xiaopeng/logictree/e;JJI)Z

    goto :goto_2

    .line 285
    :cond_1
    invoke-direct {p0, v3}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->cK(I)V

    .line 286
    goto :goto_2

    .line 288
    :cond_2
    invoke-direct {p0, v2}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->cK(I)V

    .line 289
    goto :goto_2

    .line 291
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ef:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 292
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Em:Lcom/xiaopeng/logictree/g;

    invoke-virtual {p1}, Lcom/xiaopeng/logictree/g;->pZ()Z

    .line 293
    nop

    .line 305
    :cond_4
    :goto_2
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 368
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->onDestroy()V

    .line 369
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 370
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Em:Lcom/xiaopeng/logictree/g;

    invoke-virtual {v0}, Lcom/xiaopeng/logictree/g;->pU()V

    .line 371
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->pd:Lcom/xiaopeng/xui/app/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->pd:Lcom/xiaopeng/xui/app/e;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/e;->dismiss()V

    .line 373
    iput-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->pd:Lcom/xiaopeng/xui/app/e;

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ec:Lcom/xiaopeng/xui/app/c;

    if-eqz v0, :cond_1

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ec:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/c;->dismiss()V

    .line 377
    iput-object v1, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->Ec:Lcom/xiaopeng/xui/app/c;

    .line 379
    :cond_1
    invoke-static {p0}, Lcom/xiaopeng/commonfunc/utils/f;->l(Ljava/lang/Object;)V

    .line 380
    return-void
.end method

.method public onEvent(Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;)V
    .locals 1
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x18
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 85
    invoke-virtual {p1}, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 105
    :pswitch_0
    const-string p1, "OneClickDiagnosisActivity"

    const-string v0, "receive UPGRADE_LOGICTREE_SUCCESS"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->lV()V

    .line 107
    goto :goto_0

    .line 109
    :pswitch_1
    const-string p1, "OneClickDiagnosisActivity"

    const-string v0, "receive UPGRADE_LOGICTREE_FAIL"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->lV()V

    .line 111
    const p1, 0x7f10042c

    invoke-static {p0, p1}, Lcom/xiaopeng/commonfunc/utils/r;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 102
    :pswitch_2
    invoke-virtual {p1}, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;->getMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/commonfunc/utils/r;->bd(Ljava/lang/String;)V

    .line 103
    goto :goto_0

    .line 99
    :pswitch_3
    const p1, 0x7f1002a4

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->cJ(I)V

    .line 100
    goto :goto_0

    .line 91
    :pswitch_4
    const-string p1, "OneClickDiagnosisActivity"

    const-string v0, "receive DIAGNOSIS_LOGIC_TREE_INIT_FINISH"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->lY()V

    .line 93
    goto :goto_0

    .line 95
    :pswitch_5
    const-string p1, "OneClickDiagnosisActivity"

    const-string v0, "receive DIAGNOSIS_DISMISS_LOADING_DIALOG"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->ma()V

    .line 97
    goto :goto_0

    .line 87
    :pswitch_6
    const-string p1, "OneClickDiagnosisActivity"

    const-string v0, "receive DIAGNOSIS_ACTION_PAUSE"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->lZ()V

    .line 89
    nop

    .line 114
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .line 167
    invoke-super {p0}, Lcom/xiaopeng/devtools/view/aftersales/AfterSalesBaseActivity;->onResume()V

    .line 168
    invoke-static {p0}, Lcom/xiaopeng/devtools/utils/g;->V(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->En:Ljava/lang/String;

    .line 169
    const v0, 0x7f1001b9

    invoke-direct {p0, v0}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->cJ(I)V

    .line 170
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/aftersales/OneClickDiagnosisActivity;->lV()V

    .line 171
    return-void
.end method

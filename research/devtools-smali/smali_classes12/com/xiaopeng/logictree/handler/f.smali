.class public Lcom/xiaopeng/logictree/handler/f;
.super Lcom/xiaopeng/logictree/handler/h;
.source "InterActive.java"


# instance fields
.field private Yj:Lcom/xiaopeng/commonfunc/utils/h;

.field private Yu:Lcom/xiaopeng/xui/app/c;

.field protected Yv:Lcom/xiaopeng/logictree/handler/g;

.field private pe:Lcom/xiaopeng/commonfunc/a/a;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    .line 56
    invoke-direct {p0, p1}, Lcom/xiaopeng/logictree/handler/h;-><init>(Landroid/app/Application;)V

    .line 32
    new-instance p1, Lcom/xiaopeng/logictree/handler/f$1;

    invoke-direct {p1, p0}, Lcom/xiaopeng/logictree/handler/f$1;-><init>(Lcom/xiaopeng/logictree/handler/f;)V

    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/f;->Yv:Lcom/xiaopeng/logictree/handler/g;

    .line 43
    new-instance p1, Lcom/xiaopeng/logictree/handler/f$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/logictree/handler/f$2;-><init>(Lcom/xiaopeng/logictree/handler/f;)V

    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/f;->pe:Lcom/xiaopeng/commonfunc/a/a;

    .line 57
    const-string p1, "InterActive"

    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/f;->CLASS_NAME:Ljava/lang/String;

    .line 58
    new-instance p1, Lcom/xiaopeng/commonfunc/utils/h;

    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/f;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/logictree/handler/f;->pe:Lcom/xiaopeng/commonfunc/a/a;

    invoke-direct {p1, v0, v1}, Lcom/xiaopeng/commonfunc/utils/h;-><init>(Landroid/content/Context;Lcom/xiaopeng/commonfunc/a/a;)V

    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/f;->Yj:Lcom/xiaopeng/commonfunc/utils/h;

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/logictree/handler/f;)Lcom/xiaopeng/xui/app/c;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/xiaopeng/logictree/handler/f;->Yu:Lcom/xiaopeng/xui/app/c;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/logictree/handler/f;Lcom/xiaopeng/xui/app/c;)Lcom/xiaopeng/xui/app/c;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/f;->Yu:Lcom/xiaopeng/xui/app/c;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/logictree/handler/f;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/logictree/handler/f;->ab(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 99
    new-instance v0, Lcom/xiaopeng/xui/app/c;

    iget-object v1, p0, Lcom/xiaopeng/logictree/handler/f;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/app/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/logictree/handler/f;->Yu:Lcom/xiaopeng/xui/app/c;

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/f;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/logictree/R$layout;->dialog_logictree_interactive:I

    iget-object v2, p0, Lcom/xiaopeng/logictree/handler/f;->Yu:Lcom/xiaopeng/xui/app/c;

    .line 101
    invoke-virtual {v2}, Lcom/xiaopeng/xui/app/c;->qs()Landroid/view/ViewGroup;

    move-result-object v2

    .line 100
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/xiaopeng/logictree/handler/f;->YB:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 104
    iget-object v1, p0, Lcom/xiaopeng/logictree/handler/f;->YB:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 106
    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    iget-object p2, p0, Lcom/xiaopeng/logictree/handler/f;->context:Landroid/content/Context;

    sget v1, Lcom/xiaopeng/logictree/R$string;->data_udisk_path:I

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p3, v4, v3

    invoke-virtual {p2, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    iget-object p2, p0, Lcom/xiaopeng/logictree/handler/f;->context:Landroid/content/Context;

    sget p3, Lcom/xiaopeng/logictree/R$string;->udisk_data_decrypt_password:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/logictree/handler/f;->context:Landroid/content/Context;

    sget p3, Lcom/xiaopeng/logictree/R$string;->tips_confirmation_for_diagnosis:I

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    iget-object p2, p0, Lcom/xiaopeng/logictree/handler/f;->CLASS_NAME:Ljava/lang/String;

    const-string p3, "interactive : %s"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {p2, p3, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    sget p2, Lcom/xiaopeng/logictree/R$id;->interactive_purpose:I

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_1
    sget p1, Lcom/xiaopeng/logictree/R$id;->interactive_selector:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    new-instance p2, Lcom/xiaopeng/logictree/handler/InterActiveAdapter;

    iget-object p3, p0, Lcom/xiaopeng/logictree/handler/f;->Yc:Lcom/xiaopeng/logictree/a;

    .line 116
    invoke-virtual {p3}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object p3

    invoke-virtual {p3}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object p3

    iget-object v1, p0, Lcom/xiaopeng/logictree/handler/f;->Yv:Lcom/xiaopeng/logictree/handler/g;

    invoke-direct {p2, p3, v1}, Lcom/xiaopeng/logictree/handler/InterActiveAdapter;-><init>([Ljava/lang/String;Lcom/xiaopeng/logictree/handler/g;)V

    .line 115
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/f;->Yu:Lcom/xiaopeng/xui/app/c;

    sget p2, Lcom/xiaopeng/logictree/R$string;->info_confirmation:I

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/c;->dV(I)Lcom/xiaopeng/xui/app/c;

    move-result-object p1

    invoke-virtual {p1, v0, v3}, Lcom/xiaopeng/xui/app/c;->d(Landroid/view/View;Z)Lcom/xiaopeng/xui/app/c;

    .line 119
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/f;->Yu:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/app/c;->aW(Z)Lcom/xiaopeng/xui/app/c;

    .line 120
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/f;->Yu:Lcom/xiaopeng/xui/app/c;

    sget-object p2, Lcom/xiaopeng/logictree/handler/-$$Lambda$f$aYsnTJrhkxIBbzVDCizdX8B49Q0;->INSTANCE:Lcom/xiaopeng/logictree/handler/-$$Lambda$f$aYsnTJrhkxIBbzVDCizdX8B49Q0;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/c;->a(Lcom/xiaopeng/xui/app/d$b;)Lcom/xiaopeng/xui/app/c;

    .line 124
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/f;->Yu:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/app/c;->aY(Z)Lcom/xiaopeng/xui/app/c;

    .line 125
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/f;->Yu:Lcom/xiaopeng/xui/app/c;

    const/16 p2, 0x7d8

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/app/c;->dX(I)Lcom/xiaopeng/xui/app/c;

    .line 126
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/f;->Yu:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/c;->show()V

    .line 127
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;

    const/16 p3, 0x2713

    const/4 v0, 0x0

    invoke-direct {p2, p3, v0}, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method private ab(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 82
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 83
    iget-object v1, p0, Lcom/xiaopeng/logictree/handler/f;->Yc:Lcom/xiaopeng/logictree/a;

    invoke-virtual {v1}, Lcom/xiaopeng/logictree/a;->pE()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 84
    iget-object v1, p0, Lcom/xiaopeng/logictree/handler/f;->YB:[Ljava/lang/String;

    array-length v1, v1

    if-le v1, v2, :cond_2

    .line 85
    iget-object v1, p0, Lcom/xiaopeng/logictree/handler/f;->YB:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    iget-object v1, p0, Lcom/xiaopeng/logictree/handler/f;->context:Landroid/content/Context;

    sget v4, Lcom/xiaopeng/logictree/R$string;->data_decrypt_password:I

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p2, v5, v3

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    const-string p2, "\n"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    iget-object p2, p0, Lcom/xiaopeng/logictree/handler/f;->context:Landroid/content/Context;

    sget v1, Lcom/xiaopeng/logictree/R$string;->data_download_path:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/logictree/handler/f;->CLASS_NAME:Ljava/lang/String;

    const-string v1, "interactive : %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p2, v1, v2}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v1, Lcom/xiaopeng/logictree/bean/LogicResponseData;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x20

    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/d;->bI(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/logictree/handler/f;->Yc:Lcom/xiaopeng/logictree/a;

    .line 95
    invoke-virtual {v3}, Lcom/xiaopeng/logictree/a;->pC()Lcom/xiaopeng/logictree/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/logictree/c;->pH()[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, p1, v3}, Lcom/xiaopeng/logictree/bean/LogicResponseData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    :cond_1
    new-instance v1, Lcom/xiaopeng/logictree/handler/-$$Lambda$f$XTzJ4cFVTIjfAeqmlr9MQAC3KlQ;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/xiaopeng/logictree/handler/-$$Lambda$f$XTzJ4cFVTIjfAeqmlr9MQAC3KlQ;-><init>(Lcom/xiaopeng/logictree/handler/f;Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 130
    :cond_2
    :goto_0
    return-void
.end method

.method private static synthetic b(Lcom/xiaopeng/xui/app/c;)Z
    .locals 3

    .line 121
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance v0, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;

    const/16 v1, 0x2712

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 122
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$XTzJ4cFVTIjfAeqmlr9MQAC3KlQ(Lcom/xiaopeng/logictree/handler/f;Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/logictree/handler/f;->a(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$aYsnTJrhkxIBbzVDCizdX8B49Q0(Lcom/xiaopeng/xui/app/c;)Z
    .locals 0

    invoke-static {p0}, Lcom/xiaopeng/logictree/handler/f;->b(Lcom/xiaopeng/xui/app/c;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/xiaopeng/logictree/a;)Ljava/lang/String;
    .locals 9

    monitor-enter p0

    .line 63
    :try_start_0
    invoke-super {p0, p1}, Lcom/xiaopeng/logictree/handler/h;->a(Lcom/xiaopeng/logictree/a;)Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/f;->YB:[Ljava/lang/String;

    const-string v1, "1"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/logictree/handler/f;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string p1, ""

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/logictree/handler/f;->ab(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/f;->YB:[Ljava/lang/String;

    const-string v1, "2"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/logictree/handler/f;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/f;->YB:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 68
    invoke-virtual {p1}, Lcom/xiaopeng/logictree/a;->pE()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/f;->Yj:Lcom/xiaopeng/commonfunc/utils/h;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/commonfunc/utils/h;->setDirection(I)V

    .line 70
    iget-object v3, p0, Lcom/xiaopeng/logictree/handler/f;->Yj:Lcom/xiaopeng/commonfunc/utils/h;

    iget-object v4, p0, Lcom/xiaopeng/logictree/handler/f;->mApplication:Landroid/app/Application;

    const-string v5, "/cache/aftersales"

    .line 71
    invoke-virtual {p1}, Lcom/xiaopeng/logictree/a;->pD()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    .line 70
    invoke-virtual/range {v3 .. v8}, Lcom/xiaopeng/commonfunc/utils/h;->a(Landroid/app/Application;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/f;->Yj:Lcom/xiaopeng/commonfunc/utils/h;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/commonfunc/utils/h;->setDirection(I)V

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/f;->Yj:Lcom/xiaopeng/commonfunc/utils/h;

    invoke-virtual {p1}, Lcom/xiaopeng/logictree/a;->pD()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v6, p1, v2}, Lcom/xiaopeng/commonfunc/utils/h;->a([Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_2
    :goto_0
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    .line 62
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public destroy()V
    .locals 1

    .line 134
    invoke-super {p0}, Lcom/xiaopeng/logictree/handler/h;->destroy()V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/f;->Yj:Lcom/xiaopeng/commonfunc/utils/h;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/utils/h;->destroy()V

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/f;->Yu:Lcom/xiaopeng/xui/app/c;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/f;->Yu:Lcom/xiaopeng/xui/app/c;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/c;->dismiss()V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/logictree/handler/f;->Yu:Lcom/xiaopeng/xui/app/c;

    .line 140
    :cond_0
    return-void
.end method

.class public Lcom/xiaopeng/commonfunc/utils/h;
.super Ljava/lang/Object;
.source "FileUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/commonfunc/utils/h$a;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDirection:I

.field private mStep:I

.field private pd:Lcom/xiaopeng/xui/app/e;

.field private pe:Lcom/xiaopeng/commonfunc/a/a;

.field private pf:Ljava/lang/String;

.field private pg:I

.field private ph:[Ljava/lang/String;

.field private final pi:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/commonfunc/a/a;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/commonfunc/utils/h;->mStep:I

    .line 78
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/h$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/commonfunc/utils/h$1;-><init>(Lcom/xiaopeng/commonfunc/utils/h;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/utils/h;->pi:Landroid/content/BroadcastReceiver;

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/utils/h;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/utils/h;->pe:Lcom/xiaopeng/commonfunc/a/a;

    .line 48
    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/utils/h;->init()V

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/commonfunc/utils/h;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/xiaopeng/commonfunc/utils/h;->mStep:I

    return p0
.end method

.method static synthetic a(Lcom/xiaopeng/commonfunc/utils/h;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/xiaopeng/commonfunc/utils/h;->mStep:I

    return p1
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Lcom/xiaopeng/commonfunc/utils/h$a;
    .locals 3

    .line 131
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/commonfunc/utils/h$a;-><init>(Lcom/xiaopeng/commonfunc/utils/h;Lcom/xiaopeng/commonfunc/utils/h$1;)V

    .line 132
    packed-switch p4, :pswitch_data_0

    goto/16 :goto_2

    .line 149
    :pswitch_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "_"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/q;->eH()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 150
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/cache/temp"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".zip"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".xp"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 152
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/cache/temp"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/xiaopeng/commonfunc/utils/i;->aW(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 153
    invoke-static {p2, p4, v1}, Lcom/xiaopeng/commonfunc/utils/s;->a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "@)!%Xp0109Motors"

    .line 154
    invoke-static {p2, p4, p1}, Lcom/xiaopeng/lib/utils/b/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 155
    iput-object p1, v0, Lcom/xiaopeng/commonfunc/utils/h$a;->filePath:Ljava/lang/String;

    .line 156
    iput-object v1, v0, Lcom/xiaopeng/commonfunc/utils/h$a;->password:Ljava/lang/String;

    .line 158
    :cond_0
    invoke-static {p4}, Lcom/xiaopeng/commonfunc/utils/i;->deleteFile(Ljava/lang/String;)Z

    goto :goto_2

    .line 135
    :pswitch_1
    iget p4, p0, Lcom/xiaopeng/commonfunc/utils/h;->mDirection:I

    const/4 v1, 0x2

    const/16 v2, 0x8

    if-ne p4, v1, :cond_2

    .line 136
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/o;->eG()Ljava/lang/String;

    move-result-object p4

    .line 137
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    :cond_1
    const-string p4, "XIAOPENG"

    .line 138
    :goto_0
    goto :goto_1

    .line 139
    :cond_2
    invoke-static {v2}, Lcom/xiaopeng/commonfunc/utils/d;->bI(I)Ljava/lang/String;

    move-result-object p4

    .line 141
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/q;->eH()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".zip"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 143
    invoke-static {p2, p1, p4}, Lcom/xiaopeng/commonfunc/utils/s;->a([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 144
    iput-object p1, v0, Lcom/xiaopeng/commonfunc/utils/h$a;->filePath:Ljava/lang/String;

    .line 145
    iput-object p4, v0, Lcom/xiaopeng/commonfunc/utils/h$a;->password:Ljava/lang/String;

    .line 161
    :cond_3
    :goto_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic a(Landroid/content/DialogInterface;)V
    .locals 0

    .line 61
    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaopeng/commonfunc/utils/h;->mStep:I

    .line 62
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/utils/h;->pe:Lcom/xiaopeng/commonfunc/a/a;

    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/utils/h;->pe:Lcom/xiaopeng/commonfunc/a/a;

    invoke-interface {p1}, Lcom/xiaopeng/commonfunc/a/a;->onFailure()V

    .line 65
    :cond_0
    return-void
.end method

.method private synthetic a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 7

    .line 98
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;

    const/16 v2, 0x2713

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/commonfunc/bean/event/CommonEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/utils/h;->pd:Lcom/xiaopeng/xui/app/e;

    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/h;->mContext:Landroid/content/Context;

    sget v1, Lcom/xiaopeng/commonfunc/R$string;->tips_insert_udisk:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/app/e;->setMessage(Ljava/lang/CharSequence;)V

    .line 101
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/utils/h;->pd:Lcom/xiaopeng/xui/app/e;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/app/e;->show()V

    .line 102
    iput-object p2, p0, Lcom/xiaopeng/commonfunc/utils/h;->pf:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lcom/xiaopeng/commonfunc/utils/h;->ph:[Ljava/lang/String;

    .line 104
    iput p4, p0, Lcom/xiaopeng/commonfunc/utils/h;->pg:I

    .line 105
    const/16 p1, 0x3e8

    iput p1, p0, Lcom/xiaopeng/commonfunc/utils/h;->mStep:I

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/h;->pd:Lcom/xiaopeng/xui/app/e;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/utils/h;->mContext:Landroid/content/Context;

    sget v2, Lcom/xiaopeng/commonfunc/R$string;->tips_copying_data_2_udisk:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/e;->setMessage(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/h;->pd:Lcom/xiaopeng/xui/app/e;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/e;->show()V

    .line 109
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$h$G0F9dp8F_V5X7_LdJXPk496SNp8;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$h$G0F9dp8F_V5X7_LdJXPk496SNp8;-><init>(Lcom/xiaopeng/commonfunc/utils/h;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 123
    :goto_0
    return-void
.end method

.method private synthetic a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/app/Application;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/commonfunc/utils/h;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Lcom/xiaopeng/commonfunc/utils/h$a;

    move-result-object p1

    .line 170
    iget-object p2, p1, Lcom/xiaopeng/commonfunc/utils/h$a;->filePath:Ljava/lang/String;

    new-instance p3, Lcom/xiaopeng/commonfunc/utils/h$2;

    invoke-direct {p3, p0, p1}, Lcom/xiaopeng/commonfunc/utils/h$2;-><init>(Lcom/xiaopeng/commonfunc/utils/h;Lcom/xiaopeng/commonfunc/utils/h$a;)V

    invoke-static {p5, p2, p3}, Lcom/xiaopeng/commonfunc/utils/g;->a(Landroid/app/Application;Ljava/lang/String;Lcom/xiaopeng/commonfunc/a/b;)V

    .line 198
    return-void
.end method

.method private synthetic b(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/commonfunc/utils/h;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Lcom/xiaopeng/commonfunc/utils/h$a;

    move-result-object p1

    .line 112
    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/utils/h;->ep()V

    .line 113
    iget-object p2, p0, Lcom/xiaopeng/commonfunc/utils/h;->pe:Lcom/xiaopeng/commonfunc/a/a;

    if-eqz p2, :cond_1

    .line 114
    iget-object p2, p1, Lcom/xiaopeng/commonfunc/utils/h$a;->filePath:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 115
    iget-object p2, p0, Lcom/xiaopeng/commonfunc/utils/h;->pe:Lcom/xiaopeng/commonfunc/a/a;

    iget-object p3, p1, Lcom/xiaopeng/commonfunc/utils/h$a;->filePath:Ljava/lang/String;

    invoke-static {p3}, Lcom/xiaopeng/commonfunc/utils/i;->aU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object p1, p1, Lcom/xiaopeng/commonfunc/utils/h$a;->password:Ljava/lang/String;

    invoke-interface {p2, p3, p1}, Lcom/xiaopeng/commonfunc/a/a;->onSuccess(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/utils/h;->pe:Lcom/xiaopeng/commonfunc/a/a;

    invoke-interface {p1}, Lcom/xiaopeng/commonfunc/a/a;->onFailure()V

    .line 121
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/commonfunc/utils/h;)[Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaopeng/commonfunc/utils/h;->ph:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/commonfunc/utils/h;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaopeng/commonfunc/utils/h;->pf:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/commonfunc/utils/h;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/xiaopeng/commonfunc/utils/h;->pg:I

    return p0
.end method

.method static synthetic e(Lcom/xiaopeng/commonfunc/utils/h;)Lcom/xiaopeng/commonfunc/a/a;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/xiaopeng/commonfunc/utils/h;->pe:Lcom/xiaopeng/commonfunc/a/a;

    return-object p0
.end method

.method private ep()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/h;->pd:Lcom/xiaopeng/xui/app/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/h;->pd:Lcom/xiaopeng/xui/app/e;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/e;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/h;->pd:Lcom/xiaopeng/xui/app/e;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/e;->dismiss()V

    .line 214
    :cond_0
    return-void
.end method

.method private synthetic eq()V
    .locals 3

    .line 57
    new-instance v0, Lcom/xiaopeng/xui/app/e;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/utils/h;->mContext:Landroid/content/Context;

    sget v2, Lcom/xiaopeng/commonfunc/R$style;->XAppTheme_XDialog_Loading:I

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xui/app/e;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/utils/h;->pd:Lcom/xiaopeng/xui/app/e;

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/h;->pd:Lcom/xiaopeng/xui/app/e;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/e;->create()V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/h;->pd:Lcom/xiaopeng/xui/app/e;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/e;->setCancelable(Z)V

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/h;->pd:Lcom/xiaopeng/xui/app/e;

    new-instance v1, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$h$mNpI28pydYDKriY2d6jzugThv74;

    invoke-direct {v1, p0}, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$h$mNpI28pydYDKriY2d6jzugThv74;-><init>(Lcom/xiaopeng/commonfunc/utils/h;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/e;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/h;->pd:Lcom/xiaopeng/xui/app/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/e;->a(Lcom/xiaopeng/xui/app/e$a;)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/h;->pd:Lcom/xiaopeng/xui/app/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/e;->aZ(Z)V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/h;->pd:Lcom/xiaopeng/xui/app/e;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/app/e;->dY(I)V

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/h;->pd:Lcom/xiaopeng/xui/app/e;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/e;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7ff

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 70
    return-void
.end method

.method private init()V
    .locals 3

    .line 56
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$h$l4n7RWOleeA9Qbd7anmdNvuCzb0;

    invoke-direct {v0, p0}, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$h$l4n7RWOleeA9Qbd7anmdNvuCzb0;-><init>(Lcom/xiaopeng/commonfunc/utils/h;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/utils/h;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/utils/h;->pi:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    return-void
.end method

.method public static synthetic lambda$B5Gth5CrnC1GoYBe90rE9INxobY(Lcom/xiaopeng/commonfunc/utils/h;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/commonfunc/utils/h;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$G0F9dp8F_V5X7_LdJXPk496SNp8(Lcom/xiaopeng/commonfunc/utils/h;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/commonfunc/utils/h;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$l4n7RWOleeA9Qbd7anmdNvuCzb0(Lcom/xiaopeng/commonfunc/utils/h;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/utils/h;->eq()V

    return-void
.end method

.method public static synthetic lambda$mNpI28pydYDKriY2d6jzugThv74(Lcom/xiaopeng/commonfunc/utils/h;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/commonfunc/utils/h;->a(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic lambda$sFm8Ci9IBintEiKVcY58Uj-MqN4(Lcom/xiaopeng/commonfunc/utils/h;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/app/Application;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/xiaopeng/commonfunc/utils/h;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/app/Application;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Application;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    .line 166
    iget v0, p0, Lcom/xiaopeng/commonfunc/utils/h;->mDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 167
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$h$sFm8Ci9IBintEiKVcY58Uj-MqN4;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$h$sFm8Ci9IBintEiKVcY58Uj-MqN4;-><init>(Lcom/xiaopeng/commonfunc/utils/h;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/app/Application;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 200
    :cond_0
    const-string p1, "FileUploader"

    const-string p2, "uploadFile2Cloud wrong direction [%d]"

    new-array p3, v1, [Ljava/lang/Object;

    const/4 p4, 0x0

    iget p5, p0, Lcom/xiaopeng/commonfunc/utils/h;->mDirection:I

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p3, p4

    invoke-static {p1, p2, p3}, Lcom/xiaopeng/lib/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    :goto_0
    return-void
.end method

.method public a([Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 94
    iget v0, p0, Lcom/xiaopeng/commonfunc/utils/h;->mDirection:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 95
    const-string v0, "FileUploader"

    const-string v1, "copy diagnosis files to udisk"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/h;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/i;->V(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 97
    new-instance v0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$h$B5Gth5CrnC1GoYBe90rE9INxobY;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p2

    move-object v5, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$h$B5Gth5CrnC1GoYBe90rE9INxobY;-><init>(Lcom/xiaopeng/commonfunc/utils/h;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->c(Ljava/lang/Runnable;)V

    .line 124
    goto :goto_0

    .line 125
    :cond_0
    const-string p1, "FileUploader"

    const-string p2, "uploadFile2Cloud wrong direction [%d]"

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget v1, p0, Lcom/xiaopeng/commonfunc/utils/h;->mDirection:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    invoke-static {p1, p2, p3}, Lcom/xiaopeng/lib/utils/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    :goto_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/h;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/commonfunc/utils/h;->pi:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 206
    invoke-direct {p0}, Lcom/xiaopeng/commonfunc/utils/h;->ep()V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/utils/h;->pd:Lcom/xiaopeng/xui/app/e;

    .line 208
    return-void
.end method

.method public setDirection(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/xiaopeng/commonfunc/utils/h;->mDirection:I

    .line 53
    return-void
.end method

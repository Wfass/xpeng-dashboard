.class public Lcom/xiaopeng/xui/app/c;
.super Ljava/lang/Object;
.source "XDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/app/c$a;
    }
.end annotation


# static fields
.field private static ZN:I


# instance fields
.field private ZO:Lcom/xiaopeng/xui/widget/dialogview/b;

.field private ZP:I

.field private ZQ:Lcom/xiaopeng/xui/widget/dialogview/e$b;

.field private ZR:Lcom/xiaopeng/xui/widget/dialogview/e$a;

.field private ZS:Lcom/xiaopeng/xui/widget/dialogview/e$a;

.field private ZT:Lcom/xiaopeng/xui/app/d$b;

.field private ZU:Lcom/xiaopeng/xui/app/d$a;

.field private ZV:Lcom/xiaopeng/xui/app/d$a;

.field private ZW:I

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/app/c;-><init>(Landroid/content/Context;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xui/app/c;-><init>(Landroid/content/Context;ILcom/xiaopeng/xui/app/c$a;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/xiaopeng/xui/app/c$a;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .param p3    # Lcom/xiaopeng/xui/app/c$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/xiaopeng/xui/widget/dialogview/b;

    invoke-direct {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/b;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/c;->ZO:Lcom/xiaopeng/xui/widget/dialogview/b;

    .line 76
    iput-object p1, p0, Lcom/xiaopeng/xui/app/c;->mContext:Landroid/content/Context;

    .line 78
    if-nez p3, :cond_0

    .line 79
    invoke-static {}, Lcom/xiaopeng/xui/app/c$a;->qt()Lcom/xiaopeng/xui/app/c$a;

    move-result-object p3

    .line 81
    :cond_0
    invoke-static {p3}, Lcom/xiaopeng/xui/app/c$a;->a(Lcom/xiaopeng/xui/app/c$a;)I

    move-result p2

    if-eqz p2, :cond_1

    .line 82
    new-instance p2, Landroid/app/Dialog;

    invoke-static {p3}, Lcom/xiaopeng/xui/app/c$a;->a(Lcom/xiaopeng/xui/app/c$a;)I

    move-result v0

    invoke-direct {p2, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/xiaopeng/xui/app/c;->mDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 84
    :cond_1
    new-instance p2, Landroid/app/Dialog;

    sget v0, Lcom/xiaopeng/xpui/R$style;->XAppTheme_XDialog:I

    invoke-direct {p2, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/xiaopeng/xui/app/c;->mDialog:Landroid/app/Dialog;

    .line 86
    :goto_0
    invoke-static {p3}, Lcom/xiaopeng/xui/app/c$a;->b(Lcom/xiaopeng/xui/app/c$a;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/xui/app/c;->mDialog:Landroid/app/Dialog;

    invoke-static {p1}, Lcom/xiaopeng/xui/d/d;->a(Landroid/app/Dialog;)V

    .line 90
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/xui/app/c;->mDialog:Landroid/app/Dialog;

    iget-object p2, p0, Lcom/xiaopeng/xui/app/c;->ZO:Lcom/xiaopeng/xui/widget/dialogview/b;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/dialogview/b;->qs()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 92
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/c;->init()V

    .line 93
    sget p1, Lcom/xiaopeng/xui/app/c;->ZN:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/xiaopeng/xui/app/c;->ZN:I

    .line 94
    return-void
.end method

.method private synthetic a(Lcom/xiaopeng/xui/widget/dialogview/b;I)V
    .locals 0

    .line 158
    iget-object p1, p0, Lcom/xiaopeng/xui/app/c;->ZV:Lcom/xiaopeng/xui/app/d$a;

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/xiaopeng/xui/app/c;->ZV:Lcom/xiaopeng/xui/app/d$a;

    invoke-interface {p1, p0, p2}, Lcom/xiaopeng/xui/app/d$a;->onClick(Lcom/xiaopeng/xui/app/c;I)V

    .line 161
    :cond_0
    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "custom key listener return true  keyCode : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", event "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/c;->fj(Ljava/lang/String;)V

    .line 111
    const/4 p1, 0x1

    return p1

    .line 113
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/app/c;->ZO:Lcom/xiaopeng/xui/widget/dialogview/b;

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/xui/widget/dialogview/b;->a(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method private synthetic a(Lcom/xiaopeng/xui/widget/dialogview/b;)Z
    .locals 0

    .line 124
    iget-object p1, p0, Lcom/xiaopeng/xui/app/c;->ZT:Lcom/xiaopeng/xui/app/d$b;

    if-eqz p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/xiaopeng/xui/app/c;->ZT:Lcom/xiaopeng/xui/app/d$b;

    invoke-interface {p1, p0}, Lcom/xiaopeng/xui/app/d$b;->onClose(Lcom/xiaopeng/xui/app/c;)Z

    move-result p1

    return p1

    .line 127
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private synthetic b(Lcom/xiaopeng/xui/widget/dialogview/b;)V
    .locals 0

    .line 98
    invoke-virtual {p0}, Lcom/xiaopeng/xui/app/c;->dismiss()V

    return-void
.end method

.method private synthetic b(Lcom/xiaopeng/xui/widget/dialogview/b;I)V
    .locals 0

    .line 148
    iget-object p1, p0, Lcom/xiaopeng/xui/app/c;->ZU:Lcom/xiaopeng/xui/app/d$a;

    if-eqz p1, :cond_0

    .line 149
    iget-object p1, p0, Lcom/xiaopeng/xui/app/c;->ZU:Lcom/xiaopeng/xui/app/d$a;

    invoke-interface {p1, p0, p2}, Lcom/xiaopeng/xui/app/d$a;->onClick(Lcom/xiaopeng/xui/app/c;I)V

    .line 151
    :cond_0
    return-void
.end method

.method private synthetic eq()V
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onThemeChanged, mWindowBackgroundId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xui/app/c;->ZW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/c;->fj(Ljava/lang/String;)V

    .line 101
    iget v0, p0, Lcom/xiaopeng/xui/app/c;->ZW:I

    if-nez v0, :cond_0

    .line 102
    sget v0, Lcom/xiaopeng/xpui/R$drawable;->x_bg_dialog:I

    iput v0, p0, Lcom/xiaopeng/xui/app/c;->ZW:I

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/xiaopeng/xui/app/c;->ZW:I

    if-lez v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/xui/app/c;->ZW:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 107
    :cond_1
    return-void
.end method

.method private fj(Ljava/lang/String;)V
    .locals 2

    .line 500
    const-string v0, "XDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "--hashcode "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/d/f;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    return-void
.end method

.method private init()V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$dimen;->x_dialog_system_offset_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/xiaopeng/xui/app/c;->ZP:I

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->ZO:Lcom/xiaopeng/xui/widget/dialogview/b;

    new-instance v1, Lcom/xiaopeng/xui/app/-$$Lambda$c$evIU78BAU2Dyr-Qc3LzMKTGWG_k;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$c$evIU78BAU2Dyr-Qc3LzMKTGWG_k;-><init>(Lcom/xiaopeng/xui/app/c;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/b;->a(Lcom/xiaopeng/xui/widget/dialogview/e$d;)Lcom/xiaopeng/xui/widget/dialogview/b;

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->ZO:Lcom/xiaopeng/xui/widget/dialogview/b;

    new-instance v1, Lcom/xiaopeng/xui/app/-$$Lambda$c$oIuWR1eXvhtDVRBo6qnVHMQQUks;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$c$oIuWR1eXvhtDVRBo6qnVHMQQUks;-><init>(Lcom/xiaopeng/xui/app/c;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/b;->a(Lcom/xiaopeng/libtheme/ThemeViewModel$OnCallback;)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->mDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/xiaopeng/xui/app/-$$Lambda$c$d205BG8HD_Zke7Rhnyum3xL-aiI;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$c$d205BG8HD_Zke7Rhnyum3xL-aiI;-><init>(Lcom/xiaopeng/xui/app/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x1010054

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 117
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xui/app/c;->ZW:I

    .line 118
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 119
    return-void
.end method

.method public static synthetic lambda$TRfYm1Zjbv1ejnxCtvBt02JS4rk(Lcom/xiaopeng/xui/app/c;Lcom/xiaopeng/xui/widget/dialogview/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/app/c;->b(Lcom/xiaopeng/xui/widget/dialogview/b;I)V

    return-void
.end method

.method public static synthetic lambda$Zu3-j__3zCUByzpjzaAEM9vkZWw(Lcom/xiaopeng/xui/app/c;Lcom/xiaopeng/xui/widget/dialogview/b;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/app/c;->a(Lcom/xiaopeng/xui/widget/dialogview/b;I)V

    return-void
.end method

.method public static synthetic lambda$bwWaMW1cFRr1s2WlV6B6XG7b3S0(Lcom/xiaopeng/xui/app/c;Lcom/xiaopeng/xui/widget/dialogview/b;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/c;->a(Lcom/xiaopeng/xui/widget/dialogview/b;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$d205BG8HD_Zke7Rhnyum3xL-aiI(Lcom/xiaopeng/xui/app/c;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/app/c;->a(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$evIU78BAU2Dyr-Qc3LzMKTGWG_k(Lcom/xiaopeng/xui/app/c;Lcom/xiaopeng/xui/widget/dialogview/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/c;->b(Lcom/xiaopeng/xui/widget/dialogview/b;)V

    return-void
.end method

.method public static synthetic lambda$oIuWR1eXvhtDVRBo6qnVHMQQUks(Lcom/xiaopeng/xui/app/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/xui/app/c;->eq()V

    return-void
.end method

.method private qp()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->ZQ:Lcom/xiaopeng/xui/widget/dialogview/e$b;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/xiaopeng/xui/app/-$$Lambda$c$bwWaMW1cFRr1s2WlV6B6XG7b3S0;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$c$bwWaMW1cFRr1s2WlV6B6XG7b3S0;-><init>(Lcom/xiaopeng/xui/app/c;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/c;->ZQ:Lcom/xiaopeng/xui/widget/dialogview/e$b;

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->ZO:Lcom/xiaopeng/xui/widget/dialogview/b;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/c;->ZQ:Lcom/xiaopeng/xui/widget/dialogview/e$b;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/dialogview/b;->a(Lcom/xiaopeng/xui/widget/dialogview/e$b;)Lcom/xiaopeng/xui/widget/dialogview/b;

    .line 131
    :cond_0
    return-void
.end method

.method private qq()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->ZR:Lcom/xiaopeng/xui/widget/dialogview/e$a;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lcom/xiaopeng/xui/app/-$$Lambda$c$TRfYm1Zjbv1ejnxCtvBt02JS4rk;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$c$TRfYm1Zjbv1ejnxCtvBt02JS4rk;-><init>(Lcom/xiaopeng/xui/app/c;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/c;->ZR:Lcom/xiaopeng/xui/widget/dialogview/e$a;

    .line 153
    :cond_0
    return-void
.end method

.method private qr()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->ZS:Lcom/xiaopeng/xui/widget/dialogview/e$a;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/xiaopeng/xui/app/-$$Lambda$c$Zu3-j__3zCUByzpjzaAEM9vkZWw;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/app/-$$Lambda$c$Zu3-j__3zCUByzpjzaAEM9vkZWw;-><init>(Lcom/xiaopeng/xui/app/c;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/c;->ZS:Lcom/xiaopeng/xui/widget/dialogview/e$a;

    .line 163
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;
    .locals 1

    .line 267
    iput-object p1, p0, Lcom/xiaopeng/xui/app/c;->ZU:Lcom/xiaopeng/xui/app/d$a;

    .line 268
    if-eqz p1, :cond_0

    .line 269
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/c;->qq()V

    .line 271
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/app/c;->ZO:Lcom/xiaopeng/xui/widget/dialogview/b;

    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->ZR:Lcom/xiaopeng/xui/widget/dialogview/e$a;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/b;->a(Lcom/xiaopeng/xui/widget/dialogview/e$a;)Lcom/xiaopeng/xui/widget/dialogview/b;

    .line 272
    return-object p0
.end method

.method public a(Lcom/xiaopeng/xui/app/d$b;)Lcom/xiaopeng/xui/app/c;
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/xiaopeng/xui/app/c;->ZT:Lcom/xiaopeng/xui/app/d$b;

    .line 388
    if-eqz p1, :cond_0

    .line 389
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/c;->qp()V

    .line 391
    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 282
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/app/c;->g(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    .line 283
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/app/c;->a(Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    .line 284
    return-object p0
.end method

.method public aV(Z)Lcom/xiaopeng/xui/app/c;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->ZO:Lcom/xiaopeng/xui/widget/dialogview/b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/b;->bl(Z)Lcom/xiaopeng/xui/widget/dialogview/b;

    .line 171
    return-object p0
.end method

.method public aW(Z)Lcom/xiaopeng/xui/app/c;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->ZO:Lcom/xiaopeng/xui/widget/dialogview/b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/b;->bk(Z)Lcom/xiaopeng/xui/widget/dialogview/b;

    .line 231
    return-object p0
.end method

.method public aX(Z)Lcom/xiaopeng/xui/app/c;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->ZO:Lcom/xiaopeng/xui/widget/dialogview/b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/b;->bm(Z)Lcom/xiaopeng/xui/widget/dialogview/b;

    .line 320
    return-object p0
.end method

.method public aY(Z)Lcom/xiaopeng/xui/app/c;
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 440
    return-object p0
.end method

.method public b(Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;
    .locals 1

    .line 298
    iput-object p1, p0, Lcom/xiaopeng/xui/app/c;->ZV:Lcom/xiaopeng/xui/app/d$a;

    .line 299
    if-eqz p1, :cond_0

    .line 300
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/c;->qr()V

    .line 302
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/app/c;->ZO:Lcom/xiaopeng/xui/widget/dialogview/b;

    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->ZS:Lcom/xiaopeng/xui/widget/dialogview/e$a;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/dialogview/b;->b(Lcom/xiaopeng/xui/widget/dialogview/e$a;)Lcom/xiaopeng/xui/widget/dialogview/b;

    .line 303
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 313
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/app/c;->h(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;

    .line 314
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xui/app/c;->b(Lcom/xiaopeng/xui/app/d$a;)Lcom/xiaopeng/xui/app/c;

    .line 315
    return-object p0
.end method

.method public d(Landroid/view/View;Z)Lcom/xiaopeng/xui/app/c;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->ZO:Lcom/xiaopeng/xui/widget/dialogview/b;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/b;->g(Landroid/view/View;Z)Lcom/xiaopeng/xui/widget/dialogview/b;

    .line 216
    return-object p0
.end method

.method public dV(I)Lcom/xiaopeng/xui/app/c;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->ZO:Lcom/xiaopeng/xui/widget/dialogview/b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/b;->eQ(I)Lcom/xiaopeng/xui/widget/dialogview/b;

    .line 186
    return-object p0
.end method

.method public dW(I)Lcom/xiaopeng/xui/app/c;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->ZO:Lcom/xiaopeng/xui/widget/dialogview/b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/b;->eR(I)Lcom/xiaopeng/xui/widget/dialogview/b;

    .line 206
    return-object p0
.end method

.method public dX(I)Lcom/xiaopeng/xui/app/c;
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setType(I)V

    .line 410
    :cond_0
    return-object p0
.end method

.method public dismiss()V
    .locals 1

    .line 373
    const-string v0, "dismiss"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/c;->fj(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 375
    return-void
.end method

.method public e(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->ZO:Lcom/xiaopeng/xui/widget/dialogview/b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/b;->n(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/dialogview/b;

    .line 181
    return-object p0
.end method

.method public f(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->ZO:Lcom/xiaopeng/xui/widget/dialogview/b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/b;->o(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/dialogview/b;

    .line 201
    return-object p0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 470
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 471
    sget v0, Lcom/xiaopeng/xui/app/c;->ZN:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/xiaopeng/xui/app/c;->ZN:I

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " finalize object size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/xiaopeng/xui/app/c;->ZN:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/c;->fj(Ljava/lang/String;)V

    .line 473
    return-void
.end method

.method public g(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->ZO:Lcom/xiaopeng/xui/widget/dialogview/b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/b;->p(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/dialogview/b;

    .line 263
    return-object p0
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public h(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/app/c;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->ZO:Lcom/xiaopeng/xui/widget/dialogview/b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/b;->q(Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/dialogview/b;

    .line 294
    return-object p0
.end method

.method public isShowing()Z
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public qs()Landroid/view/ViewGroup;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->ZO:Lcom/xiaopeng/xui/widget/dialogview/b;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/dialogview/b;->qs()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public show()V
    .locals 1

    .line 345
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/xiaopeng/xui/app/c;->show(II)V

    .line 346
    return-void
.end method

.method public show(II)V
    .locals 1

    .line 356
    const-string v0, "show"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/app/c;->fj(Ljava/lang/String;)V

    .line 357
    if-lez p1, :cond_0

    if-nez p2, :cond_0

    .line 358
    iget-object v0, p0, Lcom/xiaopeng/xui/app/c;->ZO:Lcom/xiaopeng/xui/widget/dialogview/b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/dialogview/b;->eS(I)V

    .line 360
    :cond_0
    if-lez p2, :cond_1

    if-nez p1, :cond_1

    .line 361
    iget-object p1, p0, Lcom/xiaopeng/xui/app/c;->ZO:Lcom/xiaopeng/xui/widget/dialogview/b;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/dialogview/b;->eT(I)V

    .line 363
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xui/app/c;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 364
    iget-object p1, p0, Lcom/xiaopeng/xui/app/c;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 365
    const/16 p2, 0x11

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 366
    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x9

    if-eq p2, v0, :cond_2

    iget p2, p0, Lcom/xiaopeng/xui/app/c;->ZP:I

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 367
    iget-object p2, p0, Lcom/xiaopeng/xui/app/c;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 369
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/xui/app/c;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 370
    return-void
.end method

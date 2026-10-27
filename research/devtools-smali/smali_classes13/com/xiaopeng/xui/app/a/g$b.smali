.class Lcom/xiaopeng/xui/app/a/g$b;
.super Lcom/xiaopeng/xui/app/a/g;
.source "XActivityDismissExtend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/app/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private aaI:Ljava/lang/Runnable;

.field private aaJ:Lcom/xiaopeng/xui/app/a/d$a;

.field private aaK:Lcom/xiaopeng/xui/app/a/g$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private aak:J

.field private aam:I

.field private mActivity:Landroid/app/Activity;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/a/g;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xui/app/a/g$b;->aam:I

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/xui/app/a/g$b;->aak:J

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/a/g$b;->mHandler:Landroid/os/Handler;

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/xui/app/a/g$b;->mActivity:Landroid/app/Activity;

    .line 48
    return-void
.end method

.method private ej(I)V
    .locals 3

    .line 107
    const-string v0, "XActivityDismiss"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_dismiss: type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xui/app/a/g$b;->aam:I

    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/app/a/g$b;->el(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , cause : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/a/g$b;->ek(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-static {v0, p1}, Lcom/xiaopeng/xui/d/f;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iget p1, p0, Lcom/xiaopeng/xui/app/a/g$b;->aam:I

    .line 110
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 115
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/xui/app/a/g$b;->mActivity:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/xui/d/a;->a(Landroid/app/Activity;Z)Z

    goto :goto_0

    .line 112
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/xui/app/a/g$b;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/xiaopeng/xui/d/a;->a(Landroid/app/Activity;)V

    .line 113
    nop

    .line 118
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private ek(I)Ljava/lang/String;
    .locals 0

    .line 121
    packed-switch p1, :pswitch_data_0

    .line 124
    const-string p1, "user"

    return-object p1

    .line 132
    :pswitch_0
    const-string p1, "timeout"

    return-object p1

    .line 130
    :pswitch_1
    const-string p1, "outside"

    return-object p1

    .line 128
    :pswitch_2
    const-string p1, "pause"

    return-object p1

    .line 126
    :pswitch_3
    const-string p1, "back"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private el(I)Ljava/lang/String;
    .locals 1

    .line 137
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 142
    const-string p1, "finish"

    return-object p1

    .line 139
    :cond_0
    const-string p1, "moveToBack"

    return-object p1
.end method

.method private synthetic em(I)V
    .locals 1

    .line 87
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/a/g$b;->ej(I)V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xui/app/a/g$b;->aaI:Ljava/lang/Runnable;

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/g$b;->aaK:Lcom/xiaopeng/xui/app/a/g$a;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/g$b;->aaK:Lcom/xiaopeng/xui/app/a/g$a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/app/a/g$a;->ei(I)V

    .line 92
    :cond_0
    return-void
.end method

.method public static synthetic lambda$XBFPcneMD4tCdTuiLXKLBIipwXw(Lcom/xiaopeng/xui/app/a/g$b;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/a/g$b;->em(I)V

    return-void
.end method


# virtual methods
.method a(Lcom/xiaopeng/xui/app/a/g$a;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/xiaopeng/xui/app/a/g$b;->aaK:Lcom/xiaopeng/xui/app/a/g$a;

    .line 63
    return-void
.end method

.method public dismiss(I)V
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/g$b;->aaJ:Lcom/xiaopeng/xui/app/a/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/g$b;->aaJ:Lcom/xiaopeng/xui/app/a/d$a;

    iget v1, p0, Lcom/xiaopeng/xui/app/a/g$b;->aam:I

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/xui/app/a/d$a;->x(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const-string v0, "XActivityDismiss"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismiss: intercept for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/a/g$b;->ek(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xui/d/f;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/g$b;->aaK:Lcom/xiaopeng/xui/app/a/g$a;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/g$b;->aaK:Lcom/xiaopeng/xui/app/a/g$a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xui/app/a/g$a;->eh(I)V

    .line 80
    :cond_1
    iget-wide v0, p0, Lcom/xiaopeng/xui/app/a/g$b;->aak:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 81
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/a/g$b;->ej(I)V

    goto :goto_0

    .line 83
    :cond_2
    const-string v0, "XActivityDismiss"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismiss: type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xui/app/a/g$b;->aam:I

    invoke-direct {p0, v2}, Lcom/xiaopeng/xui/app/a/g$b;->el(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , cause : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/app/a/g$b;->ek(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xui/app/a/g$b;->aaI:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v0, v1}, Lcom/xiaopeng/xui/d/f;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/g$b;->aaI:Ljava/lang/Runnable;

    if-nez v0, :cond_3

    .line 86
    new-instance v0, Lcom/xiaopeng/xui/app/a/-$$Lambda$g$b$XBFPcneMD4tCdTuiLXKLBIipwXw;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/xui/app/a/-$$Lambda$g$b$XBFPcneMD4tCdTuiLXKLBIipwXw;-><init>(Lcom/xiaopeng/xui/app/a/g$b;I)V

    iput-object v0, p0, Lcom/xiaopeng/xui/app/a/g$b;->aaI:Ljava/lang/Runnable;

    .line 93
    iget-object p1, p0, Lcom/xiaopeng/xui/app/a/g$b;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/g$b;->aaI:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/xiaopeng/xui/app/a/g$b;->aak:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    :cond_3
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/g$b;->aaI:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xui/app/a/g$b;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/a/g$b;->aaI:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xui/app/a/g$b;->aaI:Ljava/lang/Runnable;

    .line 104
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{mDismissType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xui/app/a/g$b;->aam:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDismissDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/xui/app/a/g$b;->aak:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

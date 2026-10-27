.class public Lcom/xiaopeng/commonfunc/b/f/f;
.super Ljava/lang/Object;
.source "WifiKeyModel.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private oE:Z

.field private final of:Lcom/xiaopeng/commonfunc/b/e/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/commonfunc/b/f/f;->oE:Z

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/f/f;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Lcom/xiaopeng/commonfunc/b/e/a;

    invoke-direct {v0, p1}, Lcom/xiaopeng/commonfunc/b/e/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/b/f/f;->of:Lcom/xiaopeng/commonfunc/b/e/a;

    .line 48
    return-void
.end method


# virtual methods
.method public em()Z
    .locals 1

    .line 54
    const-string v0, "/mnt/vendor/private/ck58l92i5/wf_c.png"

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/i;->aY(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/mnt/vendor/private/ck58l92i5/wf_r.png"

    .line 55
    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/i;->aY(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/mnt/vendor/private/ck58l92i5/wf_r_bks.png"

    .line 56
    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/i;->aY(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0
.end method

.method public onDestroy()V
    .locals 0

    .line 51
    return-void
.end method

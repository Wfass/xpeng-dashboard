.class public Lcom/xiaopeng/devtools/devdebug/hwcheck/a;
.super Ljava/lang/Object;
.source "HwCheckModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/devdebug/hwcheck/a$a;,
        Lcom/xiaopeng/devtools/devdebug/hwcheck/a$b;
    }
.end annotation


# instance fields
.field private rk:Lcom/xiaopeng/devtools/devdebug/hwcheck/a$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/xiaopeng/devtools/devdebug/hwcheck/a$b;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/devdebug/hwcheck/a$b;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/devdebug/hwcheck/a;->rk:Lcom/xiaopeng/devtools/devdebug/hwcheck/a$b;

    return-void
.end method

.method public static fh()Lcom/xiaopeng/devtools/devdebug/hwcheck/a;
    .locals 1

    .line 42
    invoke-static {}, Lcom/xiaopeng/devtools/devdebug/hwcheck/a$a;->fj()Lcom/xiaopeng/devtools/devdebug/hwcheck/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bS(I)V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/devtools/devdebug/hwcheck/a;->rk:Lcom/xiaopeng/devtools/devdebug/hwcheck/a$b;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/devdebug/hwcheck/a$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 78
    return-void
.end method

.method public fi()V
    .locals 2

    .line 81
    new-instance v0, Lcom/xiaopeng/devtools/devdebug/hwcheck/a$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/devdebug/hwcheck/a$1;-><init>(Lcom/xiaopeng/devtools/devdebug/hwcheck/a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 252
    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/devdebug/hwcheck/a$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 253
    return-void
.end method

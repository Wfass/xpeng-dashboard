.class Lbsn$a;
.super Ljava/lang/Object;
.source "VipBuyingDlg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lbsn;

.field private b:Ljava/lang/Boolean;

.field private c:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>(Lbsn;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lbsn$a;->a:Lbsn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbsn;Lbsn$1;)V
    .locals 0

    .line 228
    invoke-direct {p0, p1}, Lbsn$a;-><init>(Lbsn;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lbsn$a;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public a()Z
    .locals 1

    .line 233
    iget-object v0, p0, Lbsn$a;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Ljava/lang/Boolean;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lbsn$a;->c:Ljava/lang/Boolean;

    return-void
.end method

.method public b()Z
    .locals 1

    .line 241
    iget-object v0, p0, Lbsn$a;->c:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 1

    .line 249
    iget-object v0, p0, Lbsn$a;->b:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbsn$a;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public d()Z
    .locals 1

    .line 253
    invoke-virtual {p0}, Lbsn$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbsn$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

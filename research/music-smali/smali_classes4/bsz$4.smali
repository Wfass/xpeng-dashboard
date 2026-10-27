.class Lbsz$4;
.super Ljava/lang/Object;
.source "UserVipModelBase.java"

# interfaces
.implements Lbsz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsz;->a(Ljava/lang/String;ILbsz$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lbsz$b;

.field final synthetic c:I

.field final synthetic d:Lbsz;


# direct methods
.method constructor <init>(Lbsz;Ljava/lang/String;Lbsz$b;I)V
    .locals 0

    .line 276
    iput-object p1, p0, Lbsz$4;->d:Lbsz;

    iput-object p2, p0, Lbsz$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lbsz$4;->b:Lbsz$b;

    iput p4, p0, Lbsz$4;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 279
    iget-object v0, p0, Lbsz$4;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lbsz$4;->d:Lbsz;

    invoke-static {v0}, Lbsz;->d(Lbsz;)V

    .line 281
    iget-object v0, p0, Lbsz$4;->b:Lbsz$b;

    if-eqz v0, :cond_0

    .line 282
    new-instance v0, Lbsz$4$1;

    invoke-direct {v0, p0}, Lbsz$4$1;-><init>(Lbsz$4;)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lbsz$4;->d:Lbsz;

    invoke-static {v0}, Lbsz;->b(Lbsz;)Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    move-result-object v0

    .line 292
    invoke-static {}, Laxy;->a()Laxy;

    move-result-object v1

    iget-object v2, p0, Lbsz$4;->d:Lbsz;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Laxy;->a(Laxy$a;Z)V

    .line 293
    iget-object v1, p0, Lbsz$4;->d:Lbsz;

    invoke-virtual {v1}, Lbsz;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saiws1: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lbsz$4;->d:Lbsz;

    invoke-static {v3}, Lbsz;->b(Lbsz;)Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v1, p0, Lbsz$4;->d:Lbsz;

    invoke-static {}, Lbtc;->a()Lbtc;

    move-result-object v2

    new-instance v3, Lbsz$4$2;

    invoke-direct {v3, p0, v0}, Lbsz$4$2;-><init>(Lbsz$4;Lcom/xiaopeng/musicradio/bean/UserAccountInfo;)V

    iget-object v0, p0, Lbsz$4;->d:Lbsz;

    .line 334
    invoke-virtual {v0}, Lbsz;->c()I

    move-result v0

    .line 294
    invoke-virtual {v2, v3, v0}, Lbtc;->a(Lbkv;I)Lcom/lzy/okgo/adapter/Call;

    move-result-object v0

    invoke-static {v1, v0}, Lbsz;->a(Lbsz;Lcom/lzy/okgo/adapter/Call;)Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

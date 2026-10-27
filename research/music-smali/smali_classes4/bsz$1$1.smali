.class Lbsz$1$1;
.super Ljava/lang/Object;
.source "UserVipModelBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsz$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

.field final synthetic b:Lbsz$1;


# direct methods
.method constructor <init>(Lbsz$1;Lcom/xiaopeng/musicradio/bean/UserAccountInfo;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lbsz$1$1;->b:Lbsz$1;

    iput-object p2, p0, Lbsz$1$1;->a:Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 117
    iget-object v0, p0, Lbsz$1$1;->b:Lbsz$1;

    iget-wide v0, v0, Lbsz$1;->b:J

    iget-object v2, p0, Lbsz$1$1;->b:Lbsz$1;

    iget-object v2, v2, Lbsz$1;->e:Lbsz;

    invoke-static {v2}, Lbsz;->a(Lbsz;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 118
    iget-object v0, p0, Lbsz$1$1;->a:Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    if-eqz v0, :cond_0

    .line 119
    iget-object v1, p0, Lbsz$1$1;->b:Lbsz$1;

    iget-object v1, v1, Lbsz$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->setOpenId(Ljava/lang/String;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lbsz$1$1;->b:Lbsz$1;

    iget-object v0, v0, Lbsz$1;->e:Lbsz;

    iget-object v1, p0, Lbsz$1$1;->a:Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    invoke-static {v0, v1}, Lbsz;->a(Lbsz;Lcom/xiaopeng/musicradio/bean/UserAccountInfo;)Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    .line 122
    iget-object v0, p0, Lbsz$1$1;->b:Lbsz$1;

    iget-object v0, v0, Lbsz$1;->e:Lbsz;

    invoke-static {v0}, Lbsz;->b(Lbsz;)Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbsz$1$1;->b:Lbsz$1;

    iget-object v0, v0, Lbsz$1;->e:Lbsz;

    invoke-static {v0}, Lbsz;->c(Lbsz;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbsz$1$1;->b:Lbsz$1;

    iget-object v1, v1, Lbsz$1;->e:Lbsz;

    invoke-static {v1}, Lbsz;->b(Lbsz;)Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    iget-object v0, p0, Lbsz$1$1;->b:Lbsz$1;

    iget-object v0, v0, Lbsz$1;->e:Lbsz;

    iget-object v1, p0, Lbsz$1$1;->b:Lbsz$1;

    iget-object v1, v1, Lbsz$1;->e:Lbsz;

    invoke-static {v1}, Lbsz;->b(Lbsz;)Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbsz;->a(Lbsz;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lbsz$1$1;->b:Lbsz$1;

    iget-object v0, v0, Lbsz$1;->e:Lbsz;

    invoke-virtual {v0}, Lbsz;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAccountInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbsz$1$1;->b:Lbsz$1;

    iget-object v2, v2, Lbsz$1;->e:Lbsz;

    invoke-static {v2}, Lbsz;->c(Lbsz;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    iget-object v0, p0, Lbsz$1$1;->b:Lbsz$1;

    iget-boolean v0, v0, Lbsz$1;->c:Z

    if-eqz v0, :cond_2

    .line 127
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bc;

    const/4 v1, -0x1

    iget-object v2, p0, Lbsz$1$1;->b:Lbsz$1;

    iget-object v2, v2, Lbsz$1;->e:Lbsz;

    invoke-virtual {v2}, Lbsz;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$bc;-><init>(II)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 130
    :cond_2
    iget-object v0, p0, Lbsz$1$1;->b:Lbsz$1;

    iget-object v0, v0, Lbsz$1;->d:Lbsz$a;

    if-eqz v0, :cond_3

    .line 131
    iget-object v0, p0, Lbsz$1$1;->b:Lbsz$1;

    iget-object v0, v0, Lbsz$1;->d:Lbsz$a;

    invoke-interface {v0}, Lbsz$a;->a()V

    :cond_3
    return-void
.end method

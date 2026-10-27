.class Lbsz$1;
.super Ljava/lang/Object;
.source "UserVipModelBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsz;->a(JZLbsz$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Z

.field final synthetic d:Lbsz$a;

.field final synthetic e:Lbsz;


# direct methods
.method constructor <init>(Lbsz;Ljava/lang/String;JZLbsz$a;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lbsz$1;->e:Lbsz;

    iput-object p2, p0, Lbsz$1;->a:Ljava/lang/String;

    iput-wide p3, p0, Lbsz$1;->b:J

    iput-boolean p5, p0, Lbsz$1;->c:Z

    iput-object p6, p0, Lbsz$1;->d:Lbsz$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 111
    iget-object v0, p0, Lbsz$1;->e:Lbsz;

    iget-object v1, p0, Lbsz$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbsz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {}, Larg;->a()Larg;

    move-result-object v1

    invoke-virtual {v1, v0}, Larg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    const-class v1, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    .line 114
    new-instance v1, Lbsz$1$1;

    invoke-direct {v1, p0, v0}, Lbsz$1$1;-><init>(Lbsz$1;Lcom/xiaopeng/musicradio/bean/UserAccountInfo;)V

    invoke-static {v1}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

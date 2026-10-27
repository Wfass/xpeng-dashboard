.class Lbsz$2;
.super Ljava/lang/Object;
.source "UserVipModelBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsz;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

.field final synthetic c:Lbsz;


# direct methods
.method constructor <init>(Lbsz;Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/UserAccountInfo;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lbsz$2;->c:Lbsz;

    iput-object p2, p0, Lbsz$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lbsz$2;->b:Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 147
    iget-object v0, p0, Lbsz$2;->c:Lbsz;

    iget-object v1, p0, Lbsz$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbsz;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    invoke-static {}, Larg;->a()Larg;

    move-result-object v1

    iget-object v2, p0, Lbsz$2;->b:Lcom/xiaopeng/musicradio/bean/UserAccountInfo;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Larg;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

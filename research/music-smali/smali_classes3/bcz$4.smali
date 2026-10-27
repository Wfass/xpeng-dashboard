.class Lbcz$4;
.super Ljava/lang/Object;
.source "NetRadioModel.java"

# interfaces
.implements Lbdb$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbcz;->rebootPlay(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lbcz;


# direct methods
.method constructor <init>(Lbcz;Z)V
    .locals 0

    .line 340
    iput-object p1, p0, Lbcz$4;->b:Lbcz;

    iput-boolean p2, p0, Lbcz$4;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V
    .locals 4

    .line 343
    iget-object v0, p0, Lbcz$4;->b:Lbcz;

    invoke-static {v0}, Lbcz;->e(Lbcz;)Lbdb;

    move-result-object v0

    invoke-virtual {v0}, Lbdb;->l()I

    move-result v0

    .line 344
    iget-boolean v1, p0, Lbcz$4;->a:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 345
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSuccess: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " info = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " playState = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetRadioModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lbcz$4;->b:Lbcz;

    invoke-static {v0}, Lbcz;->e(Lbcz;)Lbdb;

    move-result-object v1

    invoke-virtual {v1}, Lbdb;->i()I

    move-result v1

    invoke-static {v0, p1, v1, v2}, Lbcz;->a(Lbcz;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;IZ)V

    return-void
.end method

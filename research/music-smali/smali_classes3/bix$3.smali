.class Lbix$3;
.super Laxz;
.source "MusicReplayDownBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbix;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;Ljava/lang/String;Lcom/xiaopeng/musicradio/bean/common/PageBean;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/ListSignBean;

.field final synthetic c:Lbix;


# direct methods
.method constructor <init>(Lbix;Ljava/lang/String;IILjava/util/List;ILcom/xiaopeng/musicradio/bean/ListSignBean;)V
    .locals 6

    .line 373
    iput-object p1, p0, Lbix$3;->c:Lbix;

    iput-object p7, p0, Lbix$3;->a:Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Laxz;-><init>(Ljava/lang/String;IILjava/util/List;I)V

    return-void
.end method


# virtual methods
.method public H()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public J()I
    .locals 1

    .line 391
    iget-object v0, p0, Lbix$3;->c:Lbix;

    invoke-virtual {v0}, Lbix;->d()I

    move-result v0

    return v0
.end method

.method public a(ZILjava/lang/String;)V
    .locals 2

    .line 380
    invoke-super {p0, p1, p2, p3}, Laxz;->a(ZILjava/lang/String;)V

    .line 381
    iget-object p1, p0, Lbix$3;->c:Lbix;

    invoke-virtual {p1}, Lbix;->k()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " msg = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected p()Z
    .locals 2

    .line 386
    iget-object v0, p0, Lbix$3;->c:Lbix;

    iget-object v1, p0, Lbix$3;->a:Lcom/xiaopeng/musicradio/bean/ListSignBean;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/bean/ListSignBean;->collectId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbix;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 1

    .line 376
    invoke-virtual {p0}, Lbix$3;->p()Z

    move-result v0

    return v0
.end method

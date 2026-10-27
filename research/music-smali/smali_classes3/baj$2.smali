.class Lbaj$2;
.super Ljava/lang/Object;
.source "MusicRadioOperationBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbaj;->a(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lbaj;


# direct methods
.method constructor <init>(Lbaj;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lbaj$2;->d:Lbaj;

    iput p2, p0, Lbaj$2;->a:I

    iput-object p3, p0, Lbaj$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lbaj$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 125
    iget-object v0, p0, Lbaj$2;->d:Lbaj;

    iget v1, p0, Lbaj$2;->a:I

    invoke-virtual {v0, v1}, Lbaj;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbaj$2;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lbaj;->a(Lbaj;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 126
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 127
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 128
    instance-of v3, v2, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    if-eqz v3, :cond_1

    .line 129
    move-object v3, v2

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    iget-object v4, p0, Lbaj$2;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    .line 131
    :cond_1
    instance-of v3, v2, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;

    if-eqz v3, :cond_0

    .line 132
    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;

    iget-object v3, p0, Lbaj$2;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/bean/db/NeteaseMusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_2
    iget-object v1, p0, Lbaj$2;->d:Lbaj;

    iget-object v1, v1, Lbaj;->a:Lorg/greenrobot/greendao/AbstractDao;

    invoke-virtual {v1, v0}, Lorg/greenrobot/greendao/AbstractDao;->updateInTx(Ljava/lang/Iterable;)V

    .line 136
    new-instance v0, Lase$b;

    invoke-direct {v0}, Lase$b;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

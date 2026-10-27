.class Lbmm$2;
.super Ljava/lang/Object;
.source "ProgramDataModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmm;->receiveReadingBinded(Lasj$ab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbmm;


# direct methods
.method constructor <init>(Lbmm;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lbmm$2;->a:Lbmm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 227
    invoke-static {}, Lbmv;->a()Lbmv;

    move-result-object v0

    new-instance v1, Lbmm$2$1;

    invoke-direct {v1, p0}, Lbmm$2$1;-><init>(Lbmm$2;)V

    invoke-virtual {v0, p1, v1}, Lbmv;->a(Ljava/util/List;Lbkv;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 210
    invoke-static {}, Lbmo;->a()Lbmo;

    move-result-object v0

    invoke-virtual {v0}, Lbmo;->d()Ljava/util/List;

    move-result-object v0

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    .line 213
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getTrackPaymentType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 214
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getTrackId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    .line 217
    invoke-direct {p0, v1}, Lbmm$2;->a(Ljava/util/List;)V

    .line 218
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 221
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 222
    invoke-direct {p0, v1}, Lbmm$2;->a(Ljava/util/List;)V

    :cond_3
    return-void
.end method

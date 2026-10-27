.class Lazv$3;
.super Ljava/lang/Object;
.source "LocalLoveOperationBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lazv;->c(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lazv;


# direct methods
.method constructor <init>(Lazv;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lazv$3;->c:Lazv;

    iput-object p2, p0, Lazv$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lazv$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 111
    iget-object v0, p0, Lazv$3;->c:Lazv;

    iget-object v1, p0, Lazv$3;->a:Ljava/lang/String;

    iget-object v2, p0, Lazv$3;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lazv;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lazv$3;->c:Lazv;

    invoke-virtual {v1, v0}, Lazv;->a(Ljava/lang/Object;)Lcom/xiaopeng/musicradio/bean/db/LocalLove;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v1, p0, Lazv$3;->c:Lazv;

    iget-object v1, v1, Lazv;->a:Lorg/greenrobot/greendao/AbstractDao;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lorg/greenrobot/greendao/AbstractDao;->deleteInTx([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

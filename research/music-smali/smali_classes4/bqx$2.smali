.class Lbqx$2;
.super Ljava/lang/Object;
.source "AudioLogoOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbqx;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lbqx;


# direct methods
.method constructor <init>(Lbqx;Ljava/util/List;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lbqx$2;->b:Lbqx;

    iput-object p2, p0, Lbqx$2;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbqx$2;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AudioParseOperation"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lbqx$2;->b:Lbqx;

    invoke-static {v0}, Lbqx;->a(Lbqx;)Lcom/xiaopeng/musicradio/bean/dao/AudioLogoInfoDao;

    move-result-object v0

    iget-object v1, p0, Lbqx$2;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/dao/AudioLogoInfoDao;->insertOrReplaceInTx(Ljava/lang/Iterable;)V

    return-void
.end method

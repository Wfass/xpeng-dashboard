.class Lbmt$5;
.super Ljava/lang/Object;
.source "ProgramModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbmt;->a(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

.field final synthetic b:Lbmt;


# direct methods
.method constructor <init>(Lbmt;Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)V
    .locals 0

    .line 1389
    iput-object p1, p0, Lbmt$5;->b:Lbmt;

    iput-object p2, p0, Lbmt$5;->a:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1393
    iget-object v0, p0, Lbmt$5;->a:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/az;->b(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1394
    invoke-static {}, Larg;->a()Larg;

    move-result-object v1

    const-string v2, "key_cache_albumbena"

    invoke-virtual {v1, v2, v0}, Larg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$ab;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$ab;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

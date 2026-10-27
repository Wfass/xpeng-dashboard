.class Lbdb$2;
.super Ljava/lang/Object;
.source "RadioDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbdb;->b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

.field final synthetic b:Lbdb;


# direct methods
.method constructor <init>(Lbdb;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lbdb$2;->b:Lbdb;

    iput-object p2, p0, Lbdb$2;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbdb$2;->b:Lbdb;

    invoke-static {v1}, Lbdb;->a(Lbdb;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " json = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbdb$2;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioDataProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lbdb$2;->b:Lbdb;

    invoke-virtual {v0}, Lbdb;->m()Lcom/xiaopeng/musicradio/utils/bm;

    move-result-object v0

    iget-object v1, p0, Lbdb$2;->b:Lbdb;

    invoke-static {v1}, Lbdb;->a(Lbdb;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbdb$2;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/utils/bm;->a(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

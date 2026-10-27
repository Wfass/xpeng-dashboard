.class Lcom/xiaopeng/musicradio/model/dui/d$3;
.super Ljava/lang/Object;
.source "DuiFmModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/model/dui/d;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xiaopeng/musicradio/model/dui/d;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/model/dui/d;Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/dui/d$3;->b:Lcom/xiaopeng/musicradio/model/dui/d;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/model/dui/d$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/dui/d$3;->a:Ljava/lang/String;

    const-class v1, Lcom/xiaopeng/musicradio/bean/netradio/DuiFmInfo;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/netradio/DuiFmInfo;

    .line 96
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/netradio/DuiFmInfo;->getFmInfo()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    .line 97
    invoke-static {}, Layg;->a()Layg;

    move-result-object v1

    invoke-virtual {v1}, Layg;->c()V

    if-eqz v0, :cond_0

    .line 99
    invoke-static {}, Lbcz;->k()Lbcz;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbcz;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    :cond_0
    return-void
.end method

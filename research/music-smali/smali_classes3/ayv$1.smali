.class Layv$1;
.super Ljava/lang/Object;
.source "NetRadioCollectManagerProxy.java"

# interfaces
.implements Lbdo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layv;->b(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

.field final synthetic b:Layv;


# direct methods
.method constructor <init>(Layv;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 0

    .line 90
    iput-object p1, p0, Layv$1;->b:Layv;

    iput-object p2, p0, Layv$1;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "NetRadioCollectManagerProxy"

    const-string v1, "onLoginFail:netradioLove"

    .line 99
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    const-string p1, "NetRadioCollectManagerProxy"

    const-string v0, "onLogin:netradioLove"

    .line 93
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-static {}, Layu;->a()Layu;

    move-result-object p1

    iget-object v0, p0, Layv$1;->a:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {p1, v0}, Layu;->a(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    return-void
.end method

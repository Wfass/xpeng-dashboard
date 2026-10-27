.class public Lcom/xiaopeng/musicradio/WebViewInit;
.super Lbex;
.source "WebViewInit.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lbex;-><init>()V

    return-void
.end method


# virtual methods
.method public igOff()V
    .locals 0

    return-void
.end method

.method public igOn()V
    .locals 0

    return-void
.end method

.method public initDelay()V
    .locals 0

    return-void
.end method

.method public initNow()V
    .locals 0

    return-void
.end method

.method public onMusicBinded()V
    .locals 0

    return-void
.end method

.method public registerService()V
    .locals 3

    .line 23
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbtg;

    const-string v2, "com.xiaopeng.musicradio.service.WebViewService"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/service/c;->a(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.class public Lbic;
.super Lbqm;
.source "BluetoothMusicModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbic$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lbqm;-><init>()V

    return-void
.end method

.method public static a()Lbic;
    .locals 1

    .line 16
    sget-object v0, Lbic$a;->a:Lbic;

    return-object v0
.end method


# virtual methods
.method public b()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public d()Z
    .locals 1

    .line 41
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->p()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 1

    .line 45
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->x()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .locals 1

    .line 49
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->r()Z

    move-result v0

    return v0
.end method

.method public g()Z
    .locals 1

    .line 53
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->s()Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 1

    .line 57
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->t()V

    return-void
.end method

.method public synthetic i()Lcom/xiaopeng/musicradio/bean/BaseInfo;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lbic;->p_()Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    move-result-object v0

    return-object v0
.end method

.method public p_()Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;
    .locals 1

    .line 26
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->m()Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    move-result-object v0

    return-object v0
.end method

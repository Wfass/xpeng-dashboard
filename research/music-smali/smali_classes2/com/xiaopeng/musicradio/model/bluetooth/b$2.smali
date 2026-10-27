.class final Lcom/xiaopeng/musicradio/model/bluetooth/b$2;
.super Ljava/util/HashMap;
.source "BtOperationBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/model/bluetooth/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/16 v0, 0x1f4

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "bt_get_meta"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/b$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bt_get_play_status"

    .line 21
    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/b$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/b$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x320

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "bt_play"

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/b$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bt_pause"

    .line 24
    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/b$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bt_next"

    .line 25
    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/b$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bt_prev"

    .line 26
    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/b$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

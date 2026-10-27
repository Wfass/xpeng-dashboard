.class final Lcom/xiaopeng/musicradio/model/bluetooth/MetaDataManager$1;
.super Ljava/util/ArrayList;
.source "MetaDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/model/bluetooth/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "a-lin"

    .line 34
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/MetaDataManager$1;->add(Ljava/lang/Object;)Z

    const-string v0, "Li-2c"

    .line 35
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/MetaDataManager$1;->add(Ljava/lang/Object;)Z

    const-string v0, "T-ara"

    .line 36
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/MetaDataManager$1;->add(Ljava/lang/Object;)Z

    return-void
.end method

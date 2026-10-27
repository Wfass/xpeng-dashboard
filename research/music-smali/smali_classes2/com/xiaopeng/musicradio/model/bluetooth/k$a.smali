.class Lcom/xiaopeng/musicradio/model/bluetooth/k$a;
.super Ljava/lang/Object;
.source "XpMusicBluetoothModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/model/bluetooth/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/xiaopeng/musicradio/model/bluetooth/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 83
    new-instance v0, Lcom/xiaopeng/musicradio/model/bluetooth/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/k;-><init>(Lcom/xiaopeng/musicradio/model/bluetooth/k$1;)V

    sput-object v0, Lcom/xiaopeng/musicradio/model/bluetooth/k$a;->a:Lcom/xiaopeng/musicradio/model/bluetooth/k;

    return-void
.end method

.method static synthetic a()Lcom/xiaopeng/musicradio/model/bluetooth/k;
    .locals 1

    .line 82
    sget-object v0, Lcom/xiaopeng/musicradio/model/bluetooth/k$a;->a:Lcom/xiaopeng/musicradio/model/bluetooth/k;

    return-object v0
.end method
